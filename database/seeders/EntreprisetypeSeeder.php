<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class EntreprisetypeSeeder extends BaseSeeder
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
                'titre' => 'Startup',
                'description' => 'Entreprise innovante en phase de lancement',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'PME',
                'description' => 'Petite et moyenne entreprise',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Grande entreprise',
                'description' => 'Entreprise de grande taille',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Association',
                'description' => 'Organisation à but non lucratif',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Auto-entrepreneur',
                'description' => 'Entrepreneur individuel',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Coopérative',
                'description' => 'Entreprise coopérative',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];
        
        $results = $this->createMany('entreprisetypes', 'titre', $data);
        
        $this->command->info("Entreprisetypes seeded: {$results['created']} created, {$results['updated']} updated");
    }
}
