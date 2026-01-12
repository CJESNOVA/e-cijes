<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class FormationtypeSeeder extends BaseSeeder
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
                'titre' => 'Formation en ligne',
                'description' => 'Formations e-learning et à distance',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Formation présentiel',
                'description' => 'Formations en présentiel en groupe',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Formation certifiante',
                'description' => 'Formations avec certification professionnelle',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Formation sur mesure',
                'description' => 'Formations personnalisées pour entreprises',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Workshop',
                'description' => 'Ateliers pratiques et courts',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];
        
        $results = $this->createMany('formationtypes', 'titre', $data);
        
        $this->command->info("Formationtypes seeded: {$results['created']} created, {$results['updated']} updated");
    }
}
