<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RessourcetypeSeeder extends BaseSeeder
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
                'titre' => 'Consulting',
                'description' => 'Services de consulting et conseil',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Formation',
                'description' => 'Services de formation et développement des compétences',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Prestation',
                'description' => 'Services de prestations techniques et professionnelles',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Accompagnement',
                'description' => 'Services d\'accompagnement personnalisé',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];
        
        $results = $this->createMany('ressourcetypes', 'titre', $data);
        
        $this->command->info("Ressourcetypes seeded: {$results['created']} created, {$results['updated']} updated");
    }
}
