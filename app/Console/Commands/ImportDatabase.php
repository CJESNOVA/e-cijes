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

        $dbName = env('DB_DATABASE');
        $tables = DB::select("SHOW TABLES");
        foreach ($tables as $table) {
            $tableName = $table->{"Tables_in_$dbName"};
            DB::statement("TRUNCATE TABLE `$tableName`;");
        }

        DB::statement('SET FOREIGN_KEY_CHECKS=1;');

        $this->info('Importation du fichier SQL...');

        // Lecture du fichier et découpage par point-virgule
        $sqlContent = File::get($filePath);
        $statements = array_filter(array_map('trim', explode(';', $sqlContent)));

        foreach ($statements as $statement) {
            // Ignorer les lignes vides ou les commentaires
            if ($statement && !str_starts_with($statement, '--') && !str_starts_with($statement, '/*')) {
                try {
                    DB::unprepared($statement);
                } catch (\Exception $e) {
                    $this->error('Erreur sur la requête : ' . $e->getMessage());
                }
            }
        }

        $this->info('Import terminé !');
    }
}
