<?php

//php artisan supabase:export nom_fichier.sql
//php artisan supabase:export //par defaut

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\File;
use App\Services\SupabaseStorageService;
use Symfony\Component\Process\Process;
use Symfony\Component\Process\Exception\ProcessFailedException;
use Illuminate\Support\Facades\Http;
use PDO;

class ExportSupabaseDatabase extends Command
{
    protected $signature = 'supabase:export {filename?}';
    protected $description = 'Exporter la base de données Supabase en fichier SQL vers Supabase Storage';

    public function handle()
    {
        $filename = $this->argument('filename');
        
        if ($filename) {
            // S'assurer que le nom de fichier a l'extension .sql
            if (!str_ends_with($filename, '.sql')) {
                $filename .= '.sql';
            }
            // Ajouter la date avant le nom du fichier
            $filename = date('Y-m-d_H-i-s') . '_' . $filename;
        } else {
            // Nom par défaut avec date
            $filename = 'supabase_backup_' . date('Y-m-d_H-i-s') . '.sql';
        }

        $this->info('Exportation de la base de données Supabase...');

        try {
            // Utiliser la connexion API REST (fallback car psql non disponible sur Windows)
            $this->info('� psql non disponible sur Windows, utilisation de API REST...');
            $this->exportWithRestAPI($filename);
        } catch (\Exception $e) {
            $this->error('❌ Erreur lors de l\'exportation : ' . $e->getMessage());
            throw $e;
        }

        return 0;
    }

    private function convertCsvToInsert($tableName, $csvData)
    {
        $lines = explode("\n", trim($csvData));
        if (empty($lines) || count($lines) < 2) {
            return "-- Table {$tableName} vide ou format invalide\n";
        }
        
        $headers = str_getcsv($lines[0]);
        $columns = array_map(function($col) { return '"' . trim($col) . '"'; }, $headers);
        
        $insertSql = "INSERT INTO \"{$tableName}\" (" . implode(', ', $columns) . ") VALUES\n";
        
        $values = [];
        for ($i = 1; $i < count($lines); $i++) {
            if (empty(trim($lines[$i]))) continue;
            
            $row = str_getcsv($lines[$i]);
            $escapedValues = [];
            
            foreach ($row as $value) {
                if ($value === null || $value === '' || $value === '\N') {
                    $escapedValues[] = 'NULL';
                } elseif (is_numeric($value)) {
                    $escapedValues[] = $value;
                } else {
                    $escapedValues[] = "'" . addslashes($value) . "'";
                }
            }
            
            $values[] = "(" . implode(', ', $escapedValues) . ")";
        }
        
        if (empty($values)) {
            return "-- Table {$tableName} vide\n";
        }
        
        $insertSql .= implode(",\n", $values) . ";";
        
        return $insertSql;
    }

    private function formatBytes($bytes, $precision = 2)
    {
        $units = array('B', 'KB', 'MB', 'GB', 'TB');
        
        for ($i = 0; $bytes > 1024 && $i < count($units) - 1; $i++) {
            $bytes /= 1024;
        }
        
        return round($bytes, $precision) . ' ' . $units[$i];
    }

    private function uploadToSupabase($filePath, $filename)
    {
        try {
            // Vérifier si Supabase est configuré
            if (!env('SUPABASE_URL') || !env('SUPABASE_SERVICE_ROLE_KEY') || !env('SUPABASE_BUCKET')) {
                // Fallback vers le stockage local
                $this->info('  Supabase non configuré, sauvegarde locale...');
                return $this->saveLocally($filePath, $filename);
            }

            // Vérifier si c'est une URL locale
            if (str_contains(env('SUPABASE_URL'), '127.0.0.1') || str_contains(env('SUPABASE_URL'), 'localhost')) {
                $this->warn('  URL Supabase locale détectée !');
                $this->warn('  Pour le stockage Supabase, utilisez l\'URL de production');
                $this->warn('  Fallback vers sauvegarde locale...');
                return $this->saveLocally($filePath, $filename);
            }

            // Utiliser le service Supabase existant
            $storage = new SupabaseStorageService();
            
            // Lire le contenu du fichier
            $fileContent = File::get($filePath);
            $fileSize = strlen($fileContent);
            
            // Uploader vers Supabase Storage
            $result = $storage->upload(
                'database/' . $filename,
                $fileContent,
                'application/sql'
            );

            if (!isset($result['Key']) || !$result['Key']) {
                throw new \Exception('Erreur upload Supabase: ' . json_encode($result));
            }

            $this->info('  Upload Supabase réussi !');
            $this->info('  Fichier : ' . $filename);
            $this->info('  Taille : ' . $this->formatBytes($fileSize));
            $this->info('  URL : ' . env('SUPABASE_URL') . '/storage/v1/object/' . env('SUPABASE_BUCKET') . '/database/' . $filename);

        } catch (\Exception $e) {
            $this->error('  Erreur upload Supabase : ' . $e->getMessage());
            $this->info('  Fallback vers sauvegarde locale...');
            return $this->saveLocally($filePath, $filename);
        }
    }

    private function saveLocally($filePath, $filename)
    {
        try {
            // Utiliser SupabaseStorageService pour stocker dans le dossier database/
            $storage = new SupabaseStorageService();
            
            // Lire le contenu du fichier
            $fileContent = File::get($filePath);
            $fileSize = strlen($fileContent);
            
            // Uploader vers Supabase dans le dossier database/
            $path = 'database/' . $filename;
            $result = $storage->upload(
                $path,
                $fileContent,
                'application/sql'
            );

            if (!isset($result['Key']) || !$result['Key']) {
                throw new \Exception('Erreur upload Supabase (database/): ' . json_encode($result));
            }

            $this->info('  Sauvegarde dans Supabase Storage (database/) réussie !');
            $this->info('  Fichier : ' . $filename);
            $this->info('  Taille : ' . $this->formatBytes($fileSize));
            $this->info('  URL : ' . env('SUPABASE_URL') . '/storage/v1/object/' . env('SUPABASE_BUCKET') . '/' . $path);

            return $path;

        } catch (\Exception $e) {
            $this->error('  Erreur sauvegarde Supabase (database/): ' . $e->getMessage());
            throw $e;
        }
    }

    private function exportWithRestAPI($filename)
    {
        try {
            // Créer un fichier temporaire
            $tempFile = tempnam(sys_get_temp_dir(), 'supabase_export_rest_');
            $filePath = $tempFile . '.sql';
            rename($tempFile, $filePath);

            // Utiliser la configuration depuis les variables d'environnement
            $supabaseUrl = env('SUPABASE_URL', 'https://cjes-nova-supabase-c2d40c-144-91-65-9.traefik.me');
            $serviceKey = env('SUPABASE_SERVICE_ROLE_KEY');
            
            if (!$supabaseUrl || !$serviceKey) {
                throw new \Exception('Configuration manquante : SUPABASE_URL ou SUPABASE_SERVICE_ROLE_KEY');
            }

            $this->info('🔗 Connexion à Supabase REST API...');
            
            // Utiliser les tables communes avec vos tables spécifiques
            $tableNames = $this->getCommonTables($supabaseUrl, $serviceKey);

            $sql = "-- Exportation de la base de données Supabase via REST API\n";
            $sql .= "-- Généré le : " . date('Y-m-d H:i:s') . "\n";
            $sql .= "-- URL : " . $supabaseUrl . "\n";
            
            if (empty($tableNames)) {
                $sql .= "-- AVERTISSEMENT : Aucune table accessible trouvée\n";
                $sql .= "-- La base de données semble vide ou les permissions sont limitées\n";
                $sql .= "-- Vous pouvez manuellement ajouter vos tables ci-dessous\n\n";
                $sql .= "-- Exemple de structure :\n";
                $sql .= "-- CREATE TABLE User (\n";
                $sql .= "--     id SERIAL PRIMARY KEY,\n";
                $sql .= "--     name VARCHAR(255) NOT NULL,\n";
                $sql .= "--     created_at TIMESTAMP DEFAULT NOW()\n";
                $sql .= "-- );\n\n";
            }
            
            $sql .= "SET session_replication_role = 'replica';\n\n";

            foreach ($tableNames as $tableName) {
                // Ignorer les tables système
                if (in_array($tableName, ['schema_migrations', 'spatial_ref_sys', 'pg_stat_statements'])) {
                    continue;
                }

                $this->info("📋 Exportation de la table : {$tableName}");

                // Récupérer directement les données pour générer le CREATE TABLE
                $dataResponse = Http::withHeaders([
                    'apikey' => $serviceKey,
                    'Authorization' => 'Bearer ' . $serviceKey,
                    'Content-Type' => 'application/json'
                ])->get($supabaseUrl . '/rest/v1/' . $tableName, [
                    'select' => '*',
                    'limit' => 10000 // Limiter pour éviter les timeouts
                ]);

                if ($dataResponse->successful()) {
                    $data = $dataResponse->json();
                    if (!empty($data)) {
                        // Générer uniquement les INSERT statements
                        $sql .= $this->generateInsertSQL($tableName, $data);
                    }
                }

                $sql .= "\n";
            }

            $sql .= "\nSET session_replication_role = 'origin';";

            // Écrire dans le fichier temporaire
            File::put($filePath, $sql);

            // Uploader vers Supabase
            $this->info('💾 Sauvegarde locale du fichier...');
            $this->saveLocally($filePath, $filename);

            // Supprimer le fichier temporaire
            unlink($filePath);

            $this->info('✅ Exportation REST API Supabase réussie !');
            $this->info('📁 Fichier : ' . $filename);

        } catch (\Exception $e) {
            $this->error('❌ Erreur lors de l\'exportation REST API Supabase : ' . $e->getMessage());
        }
    }

    private function getCommonTables($supabaseUrl, $serviceKey)
    {
        $existingTables = [];
        
        $this->info("🔍 Recherche de TOUTES les tables dans la base de données...");
        
        // Méthode 1: Utiliser l'API REST standard de Supabase
        try {
            $this->info("📊 Test de connexion à l'API REST Supabase...");
            
            // D'abord, tester si l'API est accessible
            $testResponse = Http::withHeaders([
                'apikey' => $serviceKey,
                'Authorization' => 'Bearer ' . $serviceKey,
                'Content-Type' => 'application/json'
            ])->get($supabaseUrl . '/rest/v1/', [
                'limit' => 1
            ]);

            if ($testResponse->successful()) {
                $this->info("✅ API REST Supabase accessible");
            } else {
                $this->info("❌ API REST Supabase non accessible : " . $testResponse->status());
                return [];
            }
        } catch (\Exception $e) {
            $this->info("❌ Erreur connexion API : " . $e->getMessage());
            return [];
        }

        // Méthode 2: Découvrir dynamiquement TOUTES les tables dans la base de données
        $this->info("📊 Découverte automatique de toutes les tables...");
        
        $existingTables = [];
        
        try {
            // Méthode A: Essayer d'utiliser l'information_schema de PostgreSQL via RPC
            $this->info("🔍 Tentative d'accès à l'information_schema PostgreSQL...");
            
            // Essayer de créer une fonction RPC si elle n'existe pas
            $rpcQueries = [
                // Requête directe pour lister les tables
                "SELECT table_name FROM information_schema.tables WHERE table_schema = 'public' AND table_type = 'BASE TABLE' ORDER BY table_name",
                // Alternative avec pg_tables
                "SELECT tablename FROM pg_tables WHERE schemaname = 'public' ORDER BY tablename",
                // Alternative plus simple
                "SELECT relname FROM pg_class WHERE relkind = 'r' AND relnamespace = (SELECT oid FROM pg_namespace WHERE nspname = 'public') ORDER BY relname"
            ];
            
            foreach ($rpcQueries as $index => $query) {
                try {
                    $this->info("   Essai de la requête #" . ($index + 1) . "...");
                    
                    // Essayer d'exécuter la requête via RPC
                    $response = Http::withHeaders([
                        'apikey' => $serviceKey,
                        'Authorization' => 'Bearer ' . $serviceKey,
                        'Content-Type' => 'application/json'
                    ])->post($supabaseUrl . '/rest/v1/rpc/execute_sql', [
                        'sql' => $query
                    ]);

                    if ($response->successful()) {
                        $tables = $response->json();
                        if (is_array($tables)) {
                            foreach ($tables as $table) {
                                $tableName = null;
                                
                                // Extraire le nom de la table selon le format de réponse
                                if (is_array($table)) {
                                    $tableName = $table['table_name'] ?? $table['tablename'] ?? $table['relname'] ?? null;
                                } elseif (is_string($table)) {
                                    $tableName = $table;
                                }
                                
                                if ($tableName && !in_array($tableName, $existingTables)) {
                                    $existingTables[] = $tableName;
                                    $this->info("✅ Table trouvée (RPC) : {$tableName}");
                                }
                            }
                            
                            if (!empty($existingTables)) {
                                $this->info("📊 Tables trouvées via RPC : " . count($existingTables));
                                break;
                            }
                        }
                    }
                } catch (\Exception $e) {
                    $this->info("   ❌ Requête RPC #" . ($index + 1) . " échouée : " . $e->getMessage());
                }
            }
            
            // Méthode B: Utiliser une liste pré-établie de tables à exporter
            if (empty($existingTables)) {
                $this->info("🔍 Utilisation de la liste pré-établie des tables...");
                
                // Liste des tables à exporter (même liste que SupabaseBackup)
                $tablesToExport = [
                    // Tables d'authentification
                    'auth_register', 'auth_login', 'auth_google', 'auth_me',
                    
                    // Tables de cours
                    'CourseCategories', 'CourseLessons', 'CourseModules', 'courseprogress', 'CourseProgress', 'Courses',
                    'lessonaudios', 'lessondocuments', 'lessonquizzes', 'lessonvideos',
                    'quizquestions', 'quizresults',
                    
                    // Tables administratives
                    'administrative_divisions', 'administrative_levels', 'contracting_authorities',
                    'contracting_authority_type_translations', 'contracting_authority_types',
                    
                    // Tables IA
                    'ai_training_files', 'ai_training_folders', 'ais',
                    
                    // Tables bancaires et financières
                    'authority_offers', 'bank_credit_document_types', 'bank_credit_documents_submitted',
                    'bank_credit_request_needs', 'bank_credit_requests',
                    
                    // Tables de contenu
                    'comments',
                    
                    // Tables de référence
                    'countries', 'currencies', 'languages', 'roles',
                    
                    // Tables d'experts
                    'expert_active_badges', 'expert_categories', 'expert_category_links',
                    'expert_certification_awards', 'expert_certifications', 'expert_rankings',
                    'expert_reviews', 'experts',
                    
                    // Tables de gestion de besoins
                    'need_kanban_columns', 'need_kanban_tasks',
                    
                    // Tables de notifications
                    'notifications',
                    
                    // Tables de profils et utilisateurs
                    'profiles', 'user_roles',
                    
                    // Tables de projets
                    'project_members', 'projects',
                    
                    // Tables de secteurs
                    'sector_translations', 'sectors',
                    
                    // Tables de startups
                    'startup_attestations', 'startup_needs', 'startup_portfolios', 'startup_tasks', 'startups',
                    
                    // Tables de fournisseurs
                    'supplier_categories', 'supplier_contacts', 'supplier_proformas', 'suppliers',
                    
                    // Tables de tâches
                    'tasks',
                    
                    // Tables de techniciens
                    'technician_attestations', 'technician_portfolios', 'technicians',
                    
                    // Tables de marchés publics
                    'tender_applications', 'tender_type_translations', 'tender_types', 'tenders'
                ];
                
                foreach ($tablesToExport as $tableName) {
                    $tableVariations = [
                        $tableName,                    // Original
                        strtolower($tableName),        // tout en minuscules
                        strtoupper($tableName),        // tout en majuscules
                        ucfirst($tableName),           // première lettre majuscule
                        ucwords(str_replace('_', ' ', $tableName)), // mots avec majuscules
                        str_replace('_', '', $tableName), // sans underscores
                    ];
                    
                    $found = false;
                    foreach ($tableVariations as $variation) {
                        try {
                            $response = Http::withHeaders([
                                'apikey' => $serviceKey,
                                'Authorization' => 'Bearer ' . $serviceKey,
                                'Content-Type' => 'application/json'
                            ])->get($supabaseUrl . '/rest/v1/' . $variation, [
                                'select' => 'count',
                                'limit' => 1
                            ]);

                            if ($response->successful()) {
                                $existingTables[] = $variation;
                                $this->info("✅ Table trouvée : $variation (original: $tableName)");
                                $found = true;
                                break;
                            }
                        } catch (\Exception $e) {
                            // Continuer avec la variation suivante
                        }
                    }
                    
                    if (!$found) {
                        $this->info("❌ Table non trouvée : $tableName (aucune variation fonctionnelle)");
                    }
                }
            }
            
        } catch (\Exception $e) {
            $this->info("❌ Erreur lors du scan : " . $e->getMessage());
        }

        // Méthode 3: Si aucune table trouvée, essayer avec des variations de noms
        if (empty($existingTables)) {
            $this->warn("⚠️  Aucune table trouvée avec les noms standards, test des variations...");
            
            // Essayer des variations de cas et pluriels
            $baseNames = ['user', 'role', 'language', 'country', 'profile', 'account'];
            
            foreach ($baseNames as $baseName) {
                $variations = [
                    $baseName,
                    $baseName . 's',
                    ucfirst($baseName),
                    ucfirst($baseName) . 's',
                    strtoupper($baseName),
                    strtoupper($baseName) . 'S'
                ];
                
                foreach ($variations as $variation) {
                    if (!in_array($variation, $existingTables)) {
                        try {
                            $response = Http::withHeaders([
                                'apikey' => $serviceKey,
                                'Authorization' => 'Bearer ' . $serviceKey,
                                'Content-Type' => 'application/json'
                            ])->get($supabaseUrl . '/rest/v1/' . $variation, [
                                'select' => 'count',
                                'limit' => 1
                            ]);

                            if ($response->successful()) {
                                $existingTables[] = $variation;
                                $this->info("✅ Table trouvée (variation) : {$variation}");
                            }
                        } catch (\Exception $e) {
                            // Ignorer
                        }
                    }
                }
            }
        }

        if (empty($existingTables)) {
            $this->warn("⚠️  Aucune table trouvée.");
            $this->warn("📍  Vérifiez que :");
            $this->warn("   1. Les tables existent dans Supabase Dashboard → Table Editor");
            $this->warn("   2. Les tables sont exposées via l'API REST (icône ⚙️ → API)");
            $this->warn("   3. Le SERVICE_ROLE_KEY a les permissions nécessaires");
        } else {
            $this->info("📊 Tables trouvées automatiquement : " . count($existingTables));
        }

        $this->info("📊 Tables à exporter : " . implode(', ', $existingTables));
        return $existingTables;
    }

    private function generateCreateTableSQL($tableName, $columns)
    {
        $sql = "CREATE TABLE \"{$tableName}\" (\n";
        
        $columnDefinitions = [];
        foreach ($columns as $column) {
            $def = "    \"{$column['column_name']}\" ";
            
            // Mapping des types PostgreSQL
            $typeMap = [
                'character varying' => 'varchar',
                'timestamp without time zone' => 'timestamp',
                'timestamp with time zone' => 'timestamptz',
                'integer' => 'integer',
                'bigint' => 'bigint',
                'text' => 'text',
                'boolean' => 'boolean',
                'json' => 'json',
                'jsonb' => 'jsonb',
                'uuid' => 'uuid',
                'decimal' => 'decimal',
                'real' => 'real',
                'double precision' => 'double precision'
            ];
            
            $dataType = $column['data_type'];
            $sqlType = $typeMap[$dataType] ?? $dataType;
            
            if ($dataType === 'character varying' && $column['character_maximum_length']) {
                $sqlType .= "({$column['character_maximum_length']})";
            } elseif ($dataType === 'numeric' && $column['numeric_precision']) {
                $sqlType .= "({$column['numeric_precision']}";
                if ($column['numeric_scale']) {
                    $sqlType .= ",{$column['numeric_scale']}";
                }
                $sqlType .= ")";
            }
            
            $def .= $sqlType;
            
            if (!$column['is_nullable']) {
                $def .= ' NOT NULL';
            }
            
            if ($column['column_default']) {
                $def .= ' DEFAULT ' . $column['column_default'];
            }
            
            $columnDefinitions[] = $def;
        }
        
        $sql .= implode(",\n", $columnDefinitions);
        $sql .= "\n);\n\n";
        
        return $sql;
    }

    private function generateCreateTableFromData($tableName, $data)
    {
        if (empty($data)) {
            return $this->generateBasicCreateTableSQL($tableName);
        }
        
        $firstRow = $data[0];
        $columns = array_keys((array) $firstRow);
        
        $sql = "CREATE TABLE \"{$tableName}\" (\n";
        
        $columnDefinitions = [];
        foreach ($columns as $columnName) {
            $def = "    \"{$columnName}\" ";
            
            // Analyser les valeurs de la colonne pour déterminer le type
            $columnType = $this->inferColumnType($columnName, $data);
            
            $def .= $columnType;
            
            // Ajouter PRIMARY KEY si c'est une colonne 'id'
            if ($columnName === 'id') {
                $def .= ' PRIMARY KEY';
            }
            
            $columnDefinitions[] = $def;
        }
        
        $sql .= implode(",\n", $columnDefinitions);
        $sql .= "\n);\n\n";
        
        return $sql;
    }

    private function inferColumnType($columnName, $data)
    {
        $sampleSize = min(100, count($data));
        $samples = [];
        
        for ($i = 0; $i < $sampleSize; $i++) {
            $value = $data[$i][$columnName] ?? null;
            if ($value !== null) {
                $samples[] = $value;
            }
        }
        
        if (empty($samples)) {
            return 'TEXT';
        }
        
        // Analyser les échantillons pour déterminer le type
        $hasUUID = false;
        $hasInteger = false;
        $hasFloat = false;
        $hasBoolean = false;
        $hasTimestamp = false;
        $hasLongText = false;
        $maxStringLength = 0;
        
        foreach ($samples as $sample) {
            // Vérifier si c'est un UUID
            if (is_string($sample) && preg_match('/^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i', $sample)) {
                $hasUUID = true;
            }
            // Vérifier si c'est un booléen (vérification stricte)
            elseif (is_bool($sample) || in_array($sample, [true, false], true)) {
                $hasBoolean = true;
            }
            // Vérifier si c'est un timestamp
            elseif (is_string($sample) && preg_match('/^\d{4}-\d{2}-\d{2}/', $sample)) {
                $hasTimestamp = true;
            }
            // Vérifier si c'est un nombre
            elseif (is_numeric($sample) && !is_string($sample)) {
                if (strpos($sample, '.') !== false) {
                    $hasFloat = true;
                } else {
                    $hasInteger = true;
                }
            }
            // Vérifier la longueur du texte (pour les chaînes de caractères)
            elseif (is_string($sample)) {
                $maxStringLength = max($maxStringLength, strlen($sample));
                if ($maxStringLength > 255) {
                    $hasLongText = true;
                }
            }
        }
        
        // Déterminer le type PostgreSQL approprié
        if ($hasUUID) {
            return 'UUID';
        } elseif ($hasBoolean && !$hasInteger && !$hasFloat && !$hasTimestamp) {
            return 'BOOLEAN';
        } elseif ($hasTimestamp) {
            return 'TIMESTAMP WITH TIME ZONE';
        } elseif ($hasFloat) {
            return 'DECIMAL';
        } elseif ($hasInteger) {
            return 'BIGINT';
        } elseif ($hasLongText) {
            return 'TEXT';
        } elseif ($maxStringLength > 0) {
            $length = min(255, max(10, $maxStringLength + 20));
            return "VARCHAR($length)";
        } else {
            return 'TEXT';
        }
    }

    private function generateBasicCreateTableSQL($tableName)
    {
        // Générer un CREATE TABLE basique avec les colonnes courantes
        $sql = "CREATE TABLE \"{$tableName}\" (\n";
        $sql .= "    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),\n";
        $sql .= "    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),\n";
        $sql .= "    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()\n";
        $sql .= ");\n\n";
        
        return $sql;
    }

    private function generateInsertSQL($tableName, $data)
    {
        if (empty($data)) {
            return '';
        }
        
        $firstRow = $data[0];
        $columns = array_keys($firstRow);
        
        $sql = "INSERT INTO \"{$tableName}\" (\"" . implode('", "', $columns) . "\") VALUES\n";
        
        $values = [];
        foreach ($data as $row) {
            $escapedValues = [];
            foreach ($columns as $column) {
                $value = $row[$column] ?? null;
                
                if ($value === null) {
                    $escapedValues[] = 'NULL';
                } elseif (is_bool($value)) {
                    $escapedValues[] = $value ? 'true' : 'false';
                } elseif (is_string($value)) {
                    $escapedValues[] = "'" . addslashes(str_replace(["\r", "\n"], ["\\r", "\\n"], $value)) . "'";
                } elseif (is_array($value) || is_object($value)) {
                    $escapedValues[] = "'" . addslashes(json_encode($value)) . "'";
                } else {
                    $escapedValues[] = $value;
                }
            }
            $values[] = "(" . implode(', ', $escapedValues) . ")";
        }
        
        $sql .= implode(",\n", $values) . ";\n\n";
        
        return $sql;
    }

    private function getTableStructure($pdo, $tableName)
    {
        $sql = "SELECT column_name, data_type, character_maximum_length, is_nullable, column_default 
                FROM information_schema.columns 
                WHERE table_schema = 'public' AND table_name = '{$tableName}' 
                ORDER BY ordinal_position";
        
        $stmt = $pdo->query($sql);
        $columns = $stmt->fetchAll();
        
        $createSql = "CREATE TABLE \"{$tableName}\" (\n";
        
        foreach ($columns as $i => $column) {
            $createSql .= "    \"{$column['column_name']}\" {$this->getPostgresType($column)}";
            
            if ($column['is_nullable'] === 'NO') {
                $createSql .= " NOT NULL";
            }
            
            if ($column['column_default']) {
                $createSql .= " DEFAULT {$column['column_default']}";
            }
            
            if ($i < count($columns) - 1) {
                $createSql .= ",";
            }
            
            $createSql .= "\n";
        }
        
        // Récupérer les clés primaires
        $pkSql = "SELECT a.attname
                  FROM pg_attribute a
                  JOIN pg_class t ON a.attrelid = t.oid
                  JOIN pg_index i ON a.attrelid = i.indrelid AND a.attnum = ANY(i.indkey)
                  WHERE t.relkind = 'r' 
                    AND t.relname = '{$tableName}' 
                    AND i.indisprimary";
        
        $pkStmt = $pdo->query($pkSql);
        $primaryKeys = $pkStmt->fetchAll(PDO::FETCH_COLUMN);
        
        if (!empty($primaryKeys)) {
            $createSql .= ",\n    PRIMARY KEY (\"" . implode('", "', $primaryKeys) . "\")";
        }
        
        $createSql .= "\n);";
        
        return $createSql;
    }
    
    private function getPostgresType($column)
    {
        $type = strtoupper($column['data_type']);
        
        if ($column['character_maximum_length']) {
            return "{$type}({$column['character_maximum_length']})";
        }
        
        return $type;
    }
    
    private function getTableData($pdo, $tableName)
    {
        $sql = "SELECT * FROM \"{$tableName}\"";
        $stmt = $pdo->query($sql);
        $rows = $stmt->fetchAll();
        
        if (empty($rows)) {
            return "-- Table {$tableName} vide\n";
        }
        
        $columns = array_keys($rows[0]);
        $insertSql = "INSERT INTO \"{$tableName}\" (\"" . implode('", "', $columns) . "\") VALUES\n";
        
        $values = [];
        foreach ($rows as $row) {
            $escapedValues = [];
            foreach ($row as $value) {
                if ($value === null) {
                    $escapedValues[] = 'NULL';
                } elseif (is_bool($value)) {
                    $escapedValues[] = $value ? 'TRUE' : 'FALSE';
                } elseif (is_numeric($value)) {
                    $escapedValues[] = $value;
                } else {
                    $escapedValues[] = "'" . addslashes($value) . "'";
                }
            }
            $values[] = "(" . implode(', ', $escapedValues) . ")";
        }
        
        $insertSql .= implode(",\n", $values) . ";";
        
        return $insertSql;
    }
}
