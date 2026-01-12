<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ConseillertypeSeeder extends BaseSeeder
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
                'titre' => 'Conseiller principal',
                'description' => 'Conseiller principal avec expérience avancée',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Conseiller senior',
                'description' => 'Conseiller senior avec grande expérience',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Conseiller junior',
                'description' => 'Conseiller junior en développement',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Conseiller expert',
                'description' => 'Conseiller expert dans un domaine spécialisé',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Conseiller associé',
                'description' => 'Conseiller associé partenaire',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];
        
        $results = $this->createMany('conseillertypes', 'titre', $data);
        
        $this->command->info("Conseillertypes seeded: {$results['created']} created, {$results['updated']} updated");
    }
}
