<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DiagnosticreponsesMainSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Vider la table avant d'insérer les nouvelles données
        DB::table('diagnosticreponses')->delete();

        // Appeler les seeders individuels
        $this->call([
            Diagnosticreponses1Seeder::class,
            Diagnosticreponses2Seeder::class,
            Diagnosticreponses3Seeder::class,
            Diagnosticreponses4Seeder::class,
            Diagnosticreponses5Seeder::class,
            Diagnosticreponses6Seeder::class,
            Diagnosticreponses7Seeder::class,
            Diagnosticreponses8Seeder::class,
            Diagnosticreponses9Seeder::class,
            Diagnosticreponses10Seeder::class,
            Diagnosticreponses11Seeder::class,
            Diagnosticreponses12Seeder::class,
            DiagnosticreponsesFinalSeeder::class,
        ]);
    }
}
