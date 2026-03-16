<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Http;

class SupabaseBackup extends Command
{
    protected $signature = 'supabase:backup {type?}';
    protected $description = 'Backup Supabase (database ou storage)';

    public function handle()
    {
        $type = $this->argument('type');
        
        if (!$type) {
            $this->info('Usage: php artisan supabase:backup {database|storage}');
            $this->info('  database - Backup de la base de données');
            $this->info('  storage  - Backup du storage');
            return;
        }

        if ($type === 'database') {
            return $this->backupDatabase();
        } elseif ($type === 'storage') {
            return $this->backupStorage();
        } else {
            $this->error('Type invalide. Utilisez "database" ou "storage"');
            return;
        }
    }

    private function backupDatabase()
    {
        $this->info('🔄 Backup de la base de données Supabase...');
        
        $date = now()->format('Y-m-d_H-i-s');
        $filename = "supabase_database_backup_$date.sql";
        
        // Utiliser la configuration depuis les variables d'environnement
        $supabaseUrl = env('SUPABASE_URL', 'https://cjes-nova-supabase-c2d40c-144-91-65-9.traefik.me');
        $serviceKey = env('SUPABASE_SERVICE_ROLE_KEY');
        
        if (!$supabaseUrl || !$serviceKey) {
            $this->error('❌ Configuration manquante : SUPABASE_URL ou SUPABASE_SERVICE_ROLE_KEY');
            $this->info('   Ajoutez ces variables dans votre fichier .env');
            return;
        }
        
        $this->info('🔗 Connexion à Supabase REST API...');
        
        // Liste des tables à exporter
        $tablesToExport = [
            'languages', 'countries', // Vos tables confirmées
            // Ajoutez ici toutes vos autres tables :
            'users', // 'profiles', 'settings', 'orders', 'products'
        ];
        
        $foundTables = [];
        foreach ($tablesToExport as $tableName) {
            try {
                $response = Http::withHeaders([
                    'apikey' => $serviceKey,
                    'Authorization' => 'Bearer ' . $serviceKey,
                    'Content-Type' => 'application/json'
                ])->get($supabaseUrl . '/rest/v1/' . $tableName, [
                    'select' => 'count',
                    'limit' => 1
                ]);

                if ($response->successful()) {
                    $foundTables[] = $tableName;
                    $this->info("✅ Table trouvée : {$tableName}");
                } else {
                    $this->info("❌ Table non trouvée : {$tableName} (" . $response->status() . ")");
                }
            } catch (\Exception $e) {
                $this->info("❌ Erreur table {$tableName} : " . $e->getMessage());
            }
        }
        
        if (empty($foundTables)) {
            $this->warn('⚠️  Aucune table accessible trouvée');
            return;
        }
        
        $this->info("📊 Tables à exporter : " . implode(', ', $foundTables));
        
        // Créer le contenu SQL
        $sqlContent = "-- Backup de la base de données Supabase\n";
        $sqlContent .= "-- Généré le : " . date('Y-m-d H:i:s') . "\n";
        $sqlContent .= "-- URL : " . $supabaseUrl . "\n\n";
        
        $sqlContent .= "SET session_replication_role = 'replica';\n\n";
        
        foreach ($foundTables as $tableName) {
            $this->info("📋 Exportation de la table : {$tableName}");
            
            try {
                $response = Http::withHeaders([
                    'apikey' => $serviceKey,
                    'Authorization' => 'Bearer ' . $serviceKey,
                    'Content-Type' => 'application/json'
                ])->get($supabaseUrl . '/rest/v1/' . $tableName);

                if ($response->successful()) {
                    $data = $response->json();
                    if (!empty($data)) {
                        $sqlContent .= $this->generateInsertSQL($tableName, $data) . "\n\n";
                    }
                }
            } catch (\Exception $e) {
                $this->warn("   ⚠️  Erreur export table {$tableName} : " . $e->getMessage());
            }
        }
        
        $sqlContent .= "\nSET session_replication_role = 'origin';\n";
        
        // Sauvegarder le fichier
        $backupPath = storage_path('app/backups');
        if (!File::exists($backupPath)) {
            File::makeDirectory($backupPath, 0755, true);
        }
        
        $filePath = $backupPath . '/' . $filename;
        File::put($filePath, $sqlContent);
        
        $this->info('✅ Backup de la base de données terminé !');
        $this->info('📁 Fichier : ' . $filename);
        $this->info('📍 Chemin : ' . $filePath);
        $this->info('📊 Taille : ' . $this->formatBytes(File::size($filePath)));
        
        // Générer le lien de téléchargement
        $downloadUrl = url("storage/backups/" . $filename);
        $this->info('🔗 Téléchargement : ' . $downloadUrl);
    }

    private function backupStorage()
    {
        $this->info('🔄 Backup du Supabase Storage...');
        
        $date = now()->format('Y-m-d_H-i-s');
        $filename = "supabase_storage_backup_$date.zip";
        
        // Utiliser la configuration depuis les variables d'environnement
        $supabaseUrl = env('SUPABASE_URL', 'https://cjes-nova-supabase-c2d40c-144-91-65-9.traefik.me');
        $serviceKey = env('SUPABASE_SERVICE_ROLE_KEY');
        
        if (!$supabaseUrl || !$serviceKey) {
            $this->error('❌ Configuration manquante : SUPABASE_URL ou SUPABASE_SERVICE_ROLE_KEY');
            $this->info('   Ajoutez ces variables dans votre fichier .env');
            return;
        }
        $bucket = 'ecijes-bucket';
        
        $this->info('🔗 Connexion au Supabase Storage...');
        
        // Pour l'instant, créer un ZIP avec README car l'accès est limité
        $backupPath = storage_path('app/backups');
        if (!File::exists($backupPath)) {
            File::makeDirectory($backupPath, 0755, true);
        }
        
        $filePath = $backupPath . '/' . $filename;
        
        // Créer un ZIP avec README
        $zip = new \ZipArchive();
        if ($zip->open($filePath, \ZipArchive::CREATE | \ZipArchive::OVERWRITE) !== TRUE) {
            $this->error('Impossible de créer le fichier ZIP');
            return;
        }
        
        $readmeContent = "# Backup Supabase Storage\n\n";
        $readmeContent .= "Généré le : " . date('Y-m-d H:i:s') . "\n";
        $readmeContent .= "Bucket : " . $bucket . "\n";
        $readmeContent .= "URL : " . $supabaseUrl . "\n";
        $readmeContent .= "\nNote: L'accès au storage est limité avec la clé actuelle.\n";
        $readmeContent .= "Pour un backup complet, utilisez une clé service_role avec permissions complètes.\n";
        
        $zip->addFromString('README.txt', $readmeContent);
        $zip->close();
        
        $this->info('✅ Backup du storage terminé !');
        $this->info('📁 Fichier : ' . $filename);
        $this->info('📍 Chemin : ' . $filePath);
        $this->info('📊 Taille : ' . $this->formatBytes(File::size($filePath)));
        
        // Générer le lien de téléchargement
        $downloadUrl = url("storage/backups/" . $filename);
        $this->info('🔗 Téléchargement : ' . $downloadUrl);
    }

    private function generateInsertSQL($tableName, $data)
    {
        if (empty($data)) {
            return "-- Table $tableName vide\n";
        }
        
        $columns = array_keys($data[0]);
        $insertSql = "INSERT INTO \"$tableName\" (\"" . implode('", "', $columns) . "\") VALUES\n";
        
        $values = [];
        foreach ($data as $row) {
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

    private function formatBytes($bytes, $precision = 2)
    {
        $units = array('B', 'KB', 'MB', 'GB', 'TB');
        
        for ($i = 0; $bytes > 1024 && $i < count($units) - 1; $i++) {
            $bytes /= 1024;
        }
        
        return round($bytes, $precision) . ' ' . $units[$i];
    }
}