<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CotisationtypeSeeder extends BaseSeeder
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
                'titre' => 'Cotisation annuelle',
                'description' => 'Cotisation annuelle standard pour membres',
                'montant' => 50000.00,
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Cotisation mensuelle',
                'description' => 'Cotisation mensuelle échelonnée',
                'montant' => 5000.00,
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Cotisation étudiant',
                'description' => 'Cotisation réduite pour étudiants',
                'montant' => 15000.00,
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Cotisation entreprise',
                'description' => 'Cotisation pour entreprises',
                'montant' => 100000.00,
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Cotisation vie',
                'description' => 'Cotisation unique à vie',
                'montant' => 500000.00,
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];
        
        $results = $this->createMany('cotisationtypes', 'titre', $data);
        
        $this->command->info("Cotisationtypes seeded: {$results['created']} created, {$results['updated']} updated");
    }
}
