<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ExperttypeSeeder extends BaseSeeder
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
                'titre' => 'Expert technique',
                'description' => 'Expert spécialisé en solutions techniques',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Expert business',
                'description' => 'Expert spécialisé en stratégie business',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Expert juridique',
                'description' => 'Expert spécialisé en droit et réglementation',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Expert financier',
                'description' => 'Expert spécialisé en finance et comptabilité',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Expert marketing',
                'description' => 'Expert spécialisé en marketing digital',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];
        
        $results = $this->createMany('experttypes', 'titre', $data);
        
        $this->command->info("Experttypes seeded: {$results['created']} created, {$results['updated']} updated");
    }
}
