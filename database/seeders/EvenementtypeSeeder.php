<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class EvenementtypeSeeder extends BaseSeeder
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
                'titre' => 'Conférence',
                'description' => 'Conférences professionnelles et techniques',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Séminaire',
                'description' => 'Séminaires de formation et d\'information',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Colloque',
                'description' => 'Colloques scientifiques et académiques',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Atelier',
                'description' => 'Ateliers pratiques et interactifs',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Réunion réseau',
                'description' => 'Événements de réseautage professionnel',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];
        
        $results = $this->createMany('evenementtypes', 'titre', $data);
        
        $this->command->info("Evenementtypes seeded: {$results['created']} created, {$results['updated']} updated");
    }
}
