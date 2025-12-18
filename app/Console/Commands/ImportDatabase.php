<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\File;

class ImportDatabase extends Command
{
    protected $signature = 'db:import {file}';
    protected $description = 'Vider la base et importer un fichier SQL';

    public function handle()
    {
        $filePath = $this->argument('file');

        if (!File::exists($filePath)) {
            $this->error("Fichier $filePath introuvable !");
            return 1;
        }

        $this->info('Vider toutes les tables...');

        DB::statement('SET FOREIGN_KEY_CHECKS=0;');

        $tables = DB::select('SHOW TABLES');
        $dbName = env('DB_DATABASE');

        foreach ($tables as $table) {
            $tableName = $table->{"Tables_in_$dbName"};
            try {
                DB::statement("TRUNCATE TABLE `$tableName`;");
            } catch (\Exception $e) {
                $this->warn("Impossible de vider la table $tableName : ".$e->getMessage());
            }
        }

        //DB::statement('SET FOREIGN_KEY_CHECKS=1;');

        $this->info('Importation du fichier SQL ligne par ligne...');

        $sql = File::lines($filePath);
        $query = '';
        foreach ($sql as $line) {
            $line = trim($line);

            // Ignorer les commentaires et lignes vides
            if ($line === '' || str_starts_with($line, '--') || str_starts_with($line, '/*') || str_starts_with($line, '//')) {
                continue;
            }

            $query .= $line . "\n";

            // Fin de requête
            if (str_ends_with($line, ';')) {
                try {
                    DB::unprepared($query);
                } catch (\Exception $e) {
                    $this->warn("Erreur sur la requête : ".$e->getMessage());
                }
                $query = '';
            }
        }

        DB::statement('SET FOREIGN_KEY_CHECKS=1;');
        
        $this->info('Import terminé !');
        return 0;
    }
}
