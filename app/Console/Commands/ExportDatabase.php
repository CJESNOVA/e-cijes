<?php

//php artisan db:export nom_fichier.sql
//php artisan db:export //par defaut

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use App\Services\SupabaseStorageService;
use Symfony\Component\Process\Process;
use Symfony\Component\Process\Exception\ProcessFailedException;

class ExportDatabase extends Command
{
    protected $signature = 'db:export {filename?}';
    protected $description = 'Exporter la base de données en fichier SQL vers Supabase Storage';

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
            $filename = 'backup_' . date('Y-m-d_H-i-s') . '.sql';
        }

        $this->info('Exportation de la base de données...');

        try {
            // Récupérer la configuration de la base de données
            $database = config('database.connections.mysql.database');
            $username = config('database.connections.mysql.username');
            $password = config('database.connections.mysql.password');
            $host = config('database.connections.mysql.host');
            $port = config('database.connections.mysql.port', '3306');

            // Créer un fichier temporaire
            $tempFile = tempnam(sys_get_temp_dir(), 'db_export_');
            $filePath = $tempFile . '.sql';
            rename($tempFile, $filePath);

            // Construire la commande mysqldump
            $command = [
                'mysqldump',
                '--host=' . $host,
                '--port=' . $port,
                '--user=' . $username,
                '--single-transaction',
                '--routines',
                '--triggers',
                '--no-create-db',
                '--skip-add-locks',
                '--disable-keys',
                '--extended-insert',
                '--quick',
                '--lock-tables=false',
                $database
            ];

            // Ajouter le mot de passe s'il existe
            if ($password) {
                array_unshift($command, '--password=' . $password);
            }

            $process = new Process($command);
            $process->run();

            if (!$process->isSuccessful()) {
                throw new ProcessFailedException($process);
            }

            // Écrire le contenu dans le fichier temporaire
            File::put($filePath, $process->getOutput());

            // Uploader vers Supabase
            $this->uploadToSupabase($filePath, $filename);

            // Supprimer le fichier temporaire
            unlink($filePath);

            $this->info('✅ Exportation réussie !');
            $this->info('📁 Fichier : ' . $filename);

        } catch (\Exception $e) {
            // Alternative avec PDO si mysqldump n'est pas disponible
            $this->info('🔄 mysqldump non disponible, utilisation de PDO...');
            $this->exportWithPDO($filename);
        }

        return 0;
    }

    private function uploadToSupabase($filePath, $filename)
    {
        try {
            // Vérifier si Supabase est configuré
            if (!env('SUPABASE_URL') || !env('SUPABASE_SERVICE_ROLE_KEY') || !env('SUPABASE_BUCKET')) {
                // Fallback vers le stockage local
                $this->info('⚠️  Supabase non configuré, sauvegarde locale...');
                return $this->saveLocally($filePath, $filename);
            }

            // Vérifier si c'est une URL locale
            if (str_contains(env('SUPABASE_URL'), '127.0.0.1') || str_contains(env('SUPABASE_URL'), 'localhost')) {
                $this->warn('⚠️  URL Supabase locale détectée !');
                $this->warn('📍  Pour le stockage Supabase, utilisez l\'URL de production : https://votre-projet.supabase.co');
                $this->warn('🔄  Fallback vers sauvegarde locale...');
                return $this->saveLocally($filePath, $filename);
            }

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

            $this->info('☁️  Upload Supabase réussi !');
            $this->info('📁 Fichier : ' . $filename);
            $this->info('📊 Taille : ' . $this->formatBytes($fileSize));
            $this->info('🔗 URL : ' . env('SUPABASE_URL') . '/storage/v1/object/' . env('SUPABASE_BUCKET') . '/' . $filename);

        } catch (\Exception $e) {
            $this->error('❌ Erreur upload Supabase : ' . $e->getMessage());
            $this->info('🔄 Fallback vers sauvegarde locale...');
            return $this->saveLocally($filePath, $filename);
        }
    }

    private function saveLocally($filePath, $filename)
    {
        try {
            // Utiliser SupabaseStorageService pour stocker dans /mysql/
            $storage = new SupabaseStorageService();
            
            // Lire le contenu du fichier
            $fileContent = File::get($filePath);
            $fileSize = strlen($fileContent);
            
            // Uploader vers Supabase dans le dossier mysql/
            $path = 'mysql/' . $filename;
            $result = $storage->upload(
                $path,
                $fileContent,
                'application/sql'
            );

            if (!isset($result['Key']) || !$result['Key']) {
                throw new \Exception('Erreur upload Supabase (mysql/): ' . json_encode($result));
            }

            $this->info('✅ Sauvegarde dans Supabase Storage (mysql/) réussie !');
            $this->info('📁 Fichier : ' . $filename);
            $this->info('📊 Taille : ' . $this->formatBytes($fileSize));
            $this->info('🔗 URL : ' . env('SUPABASE_URL') . '/storage/v1/object/' . env('SUPABASE_BUCKET') . '/' . $path);

            return $path;

        } catch (\Exception $e) {
            $this->error('❌ Erreur sauvegarde Supabase (mysql/): ' . $e->getMessage());
            throw $e;
        }
    }

    private function exportWithPDO($filename)
    {
        try {
            // Créer un fichier temporaire
            $tempFile = tempnam(sys_get_temp_dir(), 'db_export_pdo_');
            $filePath = $tempFile . '.sql';
            rename($tempFile, $filePath);

            // Récupérer toutes les tables
            $tables = DB::select('SHOW TABLES');
            $database = config('database.connections.mysql.database');
            
            $sql = "-- Exportation de la base de données : $database\n";
            $sql .= "-- Généré le : " . date('Y-m-d H:i:s') . "\n\n";
            $sql .= "SET FOREIGN_KEY_CHECKS=0;\n\n";

            foreach ($tables as $table) {
                $tableName = $table->{'Tables_in_' . $database};
                
                // Structure de la table
                $createTable = DB::select("SHOW CREATE TABLE `$tableName`");
                $sql .= $createTable[0]->{'Create Table'} . ";\n\n";
                
                // Données de la table
                $rows = DB::table($tableName)->get();
                if ($rows->isNotEmpty()) {
                    $columns = array_keys((array) $rows->first());
                    $sql .= "INSERT INTO `$tableName` (`" . implode('`, `', $columns) . "`) VALUES\n";
                    
                    $values = [];
                    foreach ($rows as $row) {
                        $rowArray = (array) $row;
                        $escapedValues = array_map(function($value) {
                            if ($value === null) return 'NULL';
                            if (is_string($value)) return "'" . addslashes($value) . "'";
                            return $value;
                        }, $rowArray);
                        $values[] = "(" . implode(', ', $escapedValues) . ")";
                    }
                    
                    $sql .= implode(",\n", $values) . ";\n\n";
                }
            }

            $sql .= "\nSET FOREIGN_KEY_CHECKS=1;";

            // Écrire dans le fichier temporaire
            File::put($filePath, $sql);

            // Uploader vers Supabase
            $this->uploadToSupabase($filePath, $filename);

            // Supprimer le fichier temporaire
            unlink($filePath);

            $this->info('✅ Exportation PDO réussie !');
            $this->info('📁 Fichier : ' . $filename);

        } catch (\Exception $e) {
            $this->error('❌ Erreur lors de l\'exportation PDO : ' . $e->getMessage());
        }
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
