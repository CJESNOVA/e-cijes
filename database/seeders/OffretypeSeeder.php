<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class OffretypeSeeder extends BaseSeeder
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
                'titre' => 'Prestation',
                'description' => 'Offres de prestations professionnelles',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Formation',
                'description' => 'Offres de formation et développement',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Événement',
                'description' => 'Offres d\'organisation d\'événements',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Espace',
                'description' => 'Offres d\'espaces et locaux',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];
        
        $results = $this->createMany('offretypes', 'titre', $data);
        
        $this->command->info("Offretypes seeded: {$results['created']} created, {$results['updated']} updated");
    }
}
