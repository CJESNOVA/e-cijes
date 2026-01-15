<?php

//php artisan db:export nom_fichier.sql
//php artisan db:export //par defaut

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;
use Symfony\Component\Process\Process;
use Symfony\Component\Process\Exception\ProcessFailedException;

class ExportDatabase extends Command
{
    protected $signature = 'db:export {filename?}';
    protected $description = 'Exporter la base de données en fichier SQL';

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

            // Créer le répertoire backups s'il n'existe pas
            $backupDir = storage_path('app/backups');
            if (!File::exists($backupDir)) {
                File::makeDirectory($backupDir, 0755, true);
            }

            $filePath = $backupDir . '/' . $filename;

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

            // Écrire le contenu dans le fichier
            File::put($filePath, $process->getOutput());

            $this->info('✅ Exportation réussie !');
            $this->info('📁 Fichier : ' . $filePath);
            $this->info('📊 Taille : ' . $this->formatBytes(filesize($filePath)));

        } catch (\Exception $e) {
            // Alternative avec PDO si mysqldump n'est pas disponible
            $this->info('🔄 mysqldump non disponible, utilisation de PDO...');
            $this->exportWithPDO($filename);
        }

        return 0;
    }

    private function exportWithPDO($filename)
    {
        try {
            $backupDir = storage_path('app/backups');
            $filePath = $backupDir . '/' . $filename;

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

            File::put($filePath, $sql);

            $this->info('✅ Exportation PDO réussie !');
            $this->info('📁 Fichier : ' . $filePath);
            $this->info('📊 Taille : ' . $this->formatBytes(filesize($filePath)));

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
