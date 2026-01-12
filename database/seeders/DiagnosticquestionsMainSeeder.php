<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DiagnosticquestionsMainSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Vider la table avant d'insérer les nouvelles données
        DB::table('diagnosticquestions')->delete();

        // Appeler les seeders individuels
        $this->call([
            DiagnosticquestionsModule1Seeder::class,
            DiagnosticquestionsModule2Seeder::class,
            DiagnosticquestionsModule3Seeder::class,
            DiagnosticquestionsModule3SuiteSeeder::class,
        ]);
    }
}
