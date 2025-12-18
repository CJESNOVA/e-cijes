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
            DB::statement("TRUNCATE TABLE `$tableName`;");
        }

        DB::statement('SET FOREIGN_KEY_CHECKS=1;');

        $this->info('Importation du fichier SQL...');

        $sql = File::get($filePath);
        DB::unprepared($sql);

        $this->info('Import terminé !');
    }
}
