<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SlidertypeSeeder extends BaseSeeder
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
                'titre' => 'Slider principal',
                'description' => 'Slider principal sur la page d\'accueil',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Slider événement',
                'description' => 'Slider pour les événements à venir',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Slider promotion',
                'description' => 'Slider pour les promotions en cours',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Slider partenaire',
                'description' => 'Slider pour les partenaires',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Slider actualité',
                'description' => 'Slider pour les dernières actualités',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];
        
        $results = $this->createMany('slidertypes', 'titre', $data);
        
        $this->command->info("Slidertypes seeded: {$results['created']} created, {$results['updated']} updated");
    }
}
