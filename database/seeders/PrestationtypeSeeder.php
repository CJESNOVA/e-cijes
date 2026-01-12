<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PrestationtypeSeeder extends BaseSeeder
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
                'titre' => 'Consulting stratégique',
                'description' => 'Mission de conseil stratégique pour entreprises',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Audit organisationnel',
                'description' => 'Audit complet de l\'organisation et processus',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Accompagnement au changement',
                'description' => 'Accompagnement des équipes lors de transformations',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Formation continue',
                'description' => 'Programmes de formation continue pour salariés',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Coaching individuel',
                'description' => 'Sessions de coaching personnalisé',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];
        
        $results = $this->createMany('prestationtypes', 'titre', $data);
        
        $this->command->info("Prestationtypes seeded: {$results['created']} created, {$results['updated']} updated");
    }
}
