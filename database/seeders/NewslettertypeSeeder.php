<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class NewslettertypeSeeder extends BaseSeeder
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
                'titre' => 'Newsletter mensuelle',
                'description' => 'Newsletter mensuelle avec actualités et événements',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Newsletter hebdomadaire',
                'description' => 'Newsletter hebdomadaire avec mises à jour rapides',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Newsletter événementielle',
                'description' => 'Newsletter spéciale pour événements importants',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Newsletter promotionnelle',
                'description' => 'Newsletter avec offres et promotions',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Newsletter thématique',
                'description' => 'Newsletter sur des thèmes spécifiques',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];
        
        $results = $this->createMany('newslettertypes', 'titre', $data);
        
        $this->command->info("Newslettertypes seeded: {$results['created']} created, {$results['updated']} updated");
    }
}
