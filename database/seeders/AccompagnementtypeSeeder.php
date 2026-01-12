<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AccompagnementtypeSeeder extends BaseSeeder
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
                'titre' => 'Accompagnement individuel',
                'description' => 'Accompagnement personnalisé one-to-one',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Accompagnement collectif',
                'description' => 'Accompagnement en groupe',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Accompagnement entrepreneurial',
                'description' => 'Accompagnement pour entrepreneurs',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Accompagnement carrière',
                'description' => 'Accompagnement développement de carrière',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Accompagnement projet',
                'description' => 'Accompagnement spécifique à un projet',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];
        
        $results = $this->createMany('accompagnementtypes', 'titre', $data);
        
        $this->command->info("Accompagnementtypes seeded: {$results['created']} created, {$results['updated']} updated");
    }
}
