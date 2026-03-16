<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DiagnosticstatutsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            [
                'id' => 1, 
                'titre' => 'En cours de diagnostic', 
                'etat' => 1, 
                'created_at' => '2025-08-22 10:27:32', 
                'updated_at' => '2025-08-22 10:27:32'
            ],
            [
                'id' => 2, 
                'titre' => 'Diagnostic complet - Bloc critique', 
                'etat' => 1, 
                'created_at' => '2025-08-22 10:29:11', 
                'updated_at' => '2025-08-22 10:29:11'
            ],
            [
                'id' => 3, 
                'titre' => 'Diagnostic complet - Bloc fragile', 
                'etat' => 1, 
                'created_at' => now(), 
                'updated_at' => now()
            ],
            [
                'id' => 4, 
                'titre' => 'Diagnostic complet - Bloc intermédiaire', 
                'etat' => 1, 
                'created_at' => now(), 
                'updated_at' => now()
            ],
            [
                'id' => 5, 
                'titre' => 'Diagnostic complet - Bloc conforme', 
                'etat' => 1, 
                'created_at' => now(), 
                'updated_at' => now()
            ],
            [
                'id' => 6, 
                'titre' => 'Diagnostic complet - Bloc de référence', 
                'etat' => 1, 
                'created_at' => now(), 
                'updated_at' => now()
            ],
            [
                'id' => 7, 
                'titre' => 'Accompagnement requis', 
                'etat' => 1, 
                'created_at' => now(), 
                'updated_at' => now()
            ],
            [
                'id' => 8, 
                'titre' => 'Accompagnement en cours', 
                'etat' => 1, 
                'created_at' => now(), 
                'updated_at' => now()
            ],
            [
                'id' => 9, 
                'titre' => 'Accompagnement terminé avec succès', 
                'etat' => 1, 
                'created_at' => now(), 
                'updated_at' => now()
            ],
            [
                'id' => 10, 
                'titre' => 'Certifié - Niveau Pépites', 
                'etat' => 1, 
                'created_at' => now(), 
                'updated_at' => now()
            ],
            [
                'id' => 11, 
                'titre' => 'Certifié - Niveau Émergents', 
                'etat' => 1, 
                'created_at' => now(), 
                'updated_at' => now()
            ],
            [
                'id' => 12, 
                'titre' => 'Certifié - Niveau Élites', 
                'etat' => 1, 
                'created_at' => now(), 
                'updated_at' => now()
            ],
            [
                'id' => 13, 
                'titre' => 'Archivé - Abandon', 
                'etat' => 1, 
                'created_at' => now(), 
                'updated_at' => now()
            ],
            [
                'id' => 14, 
                'titre' => 'Archivé - Inactif', 
                'etat' => 1, 
                'created_at' => now(), 
                'updated_at' => now()
            ],
            [
                'id' => 15, 
                'titre' => 'Non démarré', 
                'etat' => 1, 
                'created_at' => now(), 
                'updated_at' => now()
            ],
        ];

        foreach ($data as $item) {
            DB::table('diagnosticstatuts')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
