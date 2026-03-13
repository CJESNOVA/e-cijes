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
            // Récupérer la configuration de la base de données Supabase
            $database = config('database.connections.supabase.database');
            $username = config('database.connections.supabase.username');
            $password = config('database.connections.supabase.password');
            $host = config('database.connections.supabase.host');
            $port = config('database.connections.supabase.port', '54322');

            // Créer un fichier temporaire
            $tempFile = tempnam(sys_get_temp_dir(), 'supabase_export_');
            $filePath = $tempFile . '.sql';
            rename($tempFile, $filePath);

            // Construire la commande pg_dump
            $command = [
                'pg_dump',
                '--host=' . $host,
                '--port=' . $port,
                '--username=' . $username,
                '--no-password',
                '--verbose',
                '--clean',
                '--if-exists',
                '--disable-triggers',
                '--format=plain',
                '--encoding=UTF8',
                '--schema=public',
                $database
            ];

            // Définir le mot de passe dans la variable d'environnement
            if ($password) {
                putenv('PGPASSWORD=' . $password);
            }

            $process = new Process($command);
            $process->run();

            // Nettoyer la variable d'environnement
            putenv('PGPASSWORD');

            if (!$process->isSuccessful()) {
                throw new ProcessFailedException($process);
            }

            // Écrire le contenu dans le fichier temporaire
            File::put($filePath, $process->getOutput());

            // Uploader vers Supabase
            $this->uploadToSupabase($filePath, $filename);

            // Supprimer le fichier temporaire
            unlink($filePath);

            $this->info('✅ Exportation Supabase réussie !');
            $this->info('📁 Fichier : ' . $filename);

        } catch (\Exception $e) {
            // Alternative avec API REST si pg_dump n'est pas disponible
            $this->info('🔄 pg_dump non disponible, utilisation de API REST...');
            $this->exportWithRestAPI($filename);
        }

        return 0;
    }

    private function uploadToSupabase($filePath, $filename)
    {
        try {
            // Vérifier si Supabase est configuré
            if (!env('SUPABASE_URL') || !env('SUPABASE_SERVICE_ROLE_KEY') || !env('SUPABASE_BUCKET')) {
                // Fallback vers le stockage local
                $this->info('⚠️  Supabase Storage non configuré, sauvegarde locale...');
                return $this->saveLocally($filePath, $filename);
            }

            $supabaseUrl = env('SUPABASE_URL');
            
            // Utiliser le service Supabase existant
            $storage = new SupabaseStorageService();
            
            // Lire le contenu du fichier
            $fileContent = File::get($filePath);
            $fileSize = strlen($fileContent);
            
            // Uploader vers Supabase Storage
            $result = $storage->upload(
                $filename,
                $fileContent,
                'application/sql'
            );

            if (!isset($result['Key']) || !$result['Key']) {
                throw new \Exception('Erreur upload Supabase: ' . json_encode($result));
            }

            $this->info('☁️  Upload Supabase Storage réussi !');
            $this->info('📁 Fichier : ' . $filename);
            $this->info('📊 Taille : ' . $this->formatBytes($fileSize));
            $this->info('🔗 URL : ' . $supabaseUrl . '/storage/v1/object/' . env('SUPABASE_BUCKET') . '/' . $filename);

        } catch (\Exception $e) {
            $this->error('❌ Erreur upload Supabase : ' . $e->getMessage());
            $this->info('🔄 Fallback vers sauvegarde locale...');
            return $this->saveLocally($filePath, $filename);
        }
    }

    private function saveLocally($filePath, $filename)
    {
        try {
            // Utiliser SupabaseStorageService pour stocker dans /supabase/
            $storage = new SupabaseStorageService();
            
            // Lire le contenu du fichier
            $fileContent = File::get($filePath);
            $fileSize = strlen($fileContent);
            
            // Uploader vers Supabase dans le dossier supabase/
            $path = 'supabase/' . $filename;
            $result = $storage->upload(
                $path,
                $fileContent,
                'application/sql'
            );

            if (!isset($result['Key']) || !$result['Key']) {
                throw new \Exception('Erreur upload Supabase (supabase/): ' . json_encode($result));
            }

            $this->info('✅ Sauvegarde dans Supabase Storage (supabase/) réussie !');
            $this->info('📁 Fichier : ' . $filename);
            $this->info('📊 Taille : ' . $this->formatBytes($fileSize));
            $this->info('🔗 URL : ' . env('SUPABASE_URL') . '/storage/v1/object/' . env('SUPABASE_BUCKET') . '/' . $path);

            return $path;

        } catch (\Exception $e) {
            $this->error('❌ Erreur sauvegarde Supabase (supabase/): ' . $e->getMessage());
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

            $supabaseUrl = env('SUPABASE_URL');
            $serviceKey = env('SUPABASE_SERVICE_ROLE_KEY');
            
            if (!$supabaseUrl || !$serviceKey) {
                throw new \Exception('Configuration Supabase manquante');
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
            $this->uploadToSupabase($filePath, $filename);

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
        
        $this->info("🔍 Recherche automatique de toutes les tables...");
        
        // Méthode 1: Essayer de lister les tables via une requête RPC
        try {
            $response = Http::withHeaders([
                'apikey' => $serviceKey,
                'Authorization' => 'Bearer ' . $serviceKey,
                'Content-Type' => 'application/json'
            ])->post($supabaseUrl . '/rest/v1/rpc/get_all_tables', [
                'schema_name' => 'public'
            ]);

            if ($response->successful()) {
                $tables = $response->json();
                if (is_array($tables) && !empty($tables)) {
                    $tableNames = array_column($tables, 'table_name');
                    $this->info("✅ Tables trouvées via RPC : " . implode(', ', $tableNames));
                    return $tableNames;
                }
            }
        } catch (\Exception $e) {
            $this->info("❌ Méthode RPC échouée : " . $e->getMessage());
        }

        // Méthode 2: Essayer avec information_schema
        try {
            $response = Http::withHeaders([
                'apikey' => $serviceKey,
                'Authorization' => 'Bearer ' . $serviceKey,
                'Content-Type' => 'application/json'
            ])->get($supabaseUrl . '/rest/v1/information_schema.tables', [
                'select' => 'table_name',
                'table_schema' => 'eq.public',
                'table_type' => 'eq.BASE TABLE'
            ]);

            if ($response->successful()) {
                $tables = $response->json();
                if (is_array($tables) && !empty($tables)) {
                    $tableNames = array_column($tables, 'table_name');
                    $this->info("✅ Tables trouvées via information_schema : " . implode(', ', $tableNames));
                    return $tableNames;
                }
            }
        } catch (\Exception $e) {
            $this->info("❌ Méthode information_schema échouée : " . $e->getMessage());
        }

        // Méthode 3: Essayer avec pg_tables
        try {
            $response = Http::withHeaders([
                'apikey' => $serviceKey,
                'Authorization' => 'Bearer ' . $serviceKey,
                'Content-Type' => 'application/json'
            ])->get($supabaseUrl . '/rest/v1/pg_tables', [
                'select' => 'tablename',
                'schemaname' => 'eq.public'
            ]);

            if ($response->successful()) {
                $tables = $response->json();
                if (is_array($tables) && !empty($tables)) {
                    $tableNames = array_column($tables, 'tablename');
                    $this->info("✅ Tables trouvées via pg_tables : " . implode(', ', $tableNames));
                    return $tableNames;
                }
            }
        } catch (\Exception $e) {
            $this->info("❌ Méthode pg_tables échouée : " . $e->getMessage());
        }

        // Méthode 4: Scanner avec des noms de tables communs (fallback)
        $this->warn("⚠️  Détection automatique échouée, scan manuel des tables courantes...");
        
        $commonTablePrefixes = [
            'user', 'admin', 'post', 'article', 'comment', 'category', 'tag', 
            'product', 'order', 'customer', 'payment', 'invoice', 'country', 
            'language', 'setting', 'log', 'session', 'notification', 'file', 
            'cache', 'migration', 'job', 'telescope', 'profile', 'role', 
            'permission', 'audit', 'event', 'message', 'task', 'project'
        ];
        
        foreach ($commonTablePrefixes as $prefix) {
            // Tester différentes variations de casse et pluriels
            $variations = [
                strtolower($prefix),
                ucfirst($prefix),
                strtoupper($prefix),
                $prefix . 's',
                ucfirst($prefix) . 's'
            ];
            
            foreach ($variations as $tableName) {
                $response = Http::withHeaders([
                    'apikey' => $serviceKey,
                    'Authorization' => 'Bearer ' . $serviceKey,
                    'Content-Type' => 'application/json'
                ])->get($supabaseUrl . '/rest/v1/' . $tableName, [
                    'select' => 'count',
                    'limit' => 1
                ]);

                if ($response->successful()) {
                    if (!in_array($tableName, $existingTables)) {
                        $existingTables[] = $tableName;
                        $this->info("✅ Table trouvée : {$tableName}");
                    }
                }
            }
        }

        // Méthode 5: Scanner alphabétique (très thorough)
        if (count($existingTables) < 10) {  // Si on a trouvé peu de tables
            $this->info("🔍 Scan alphabétique complet...");
            $alphabet = range('a', 'z');
            
            foreach ($alphabet as $letter) {
                $response = Http::withHeaders([
                    'apikey' => $serviceKey,
                    'Authorization' => 'Bearer ' . $serviceKey,
                    'Content-Type' => 'application/json'
                ])->get($supabaseUrl . '/rest/v1/' . $letter, [
                    'select' => 'count',
                    'limit' => 1
                ]);

                if ($response->successful()) {
                    if (!in_array($letter, $existingTables)) {
                        $existingTables[] = $letter;
                        $this->info("✅ Table trouvée : {$letter}");
                    }
                }
            }
        }

        if (empty($existingTables)) {
            $this->warn("⚠️  Aucune table trouvée automatiquement");
        }

        $this->info("📊 Tables détectées : " . implode(', ', $existingTables));
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

    private function formatBytes($bytes, $precision = 2)
    {
        $units = array('B', 'KB', 'MB', 'GB', 'TB');
        
        for ($i = 0; $bytes > 1024 && $i < count($units) - 1; $i++) {
            $bytes /= 1024;
        }
        
        return round($bytes, $precision) . ' ' . $units[$i];
    }
}
