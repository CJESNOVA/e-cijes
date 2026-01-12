<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class EspacetypeSeeder extends BaseSeeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            [
                'titre' => 'Salle de réunion',
                'description' => 'Salle équipée pour réunions et conférences',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Salle de formation',
                'description' => 'Espace de formation avec équipement pédagogique',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Coworking',
                'description' => 'Espace de coworking partagé',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Bureau privatif',
                'description' => 'Bureau individuel privatif',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Open space',
                'description' => 'Espace de travail ouvert et flexible',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];
        
        $results = $this->createMany('espacetypes', 'titre', $data);
        
        $this->command->info("Espacetypes seeded: {$results['created']} created, {$results['updated']} updated");
    }
}
