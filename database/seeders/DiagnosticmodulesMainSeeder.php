<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DiagnosticmodulesMainSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Vider la table avant d'insérer les nouvelles données
        DB::table('diagnosticmodules')->delete();

        // Appeler les seeders individuels
        $this->call([
            DiagnosticmodulesType1Seeder::class,
            DiagnosticmodulesType2Seeder::class,
            DiagnosticmodulesType3Seeder::class,
        ]);
    }
}
