<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PaiementstatutSeeder extends BaseSeeder
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
                'titre' => 'En attente',
                'description' => 'Paiement en attente de validation',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Validé',
                'description' => 'Paiement validé et accepté',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Rejeté',
                'description' => 'Paiement rejeté par la banque',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Remboursé',
                'description' => 'Paiement remboursé au client',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Annulé',
                'description' => 'Paiement annulé avant validation',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];
        
        $results = $this->createMany('paiementstatuts', 'titre', $data);
        
        $this->command->info("Paiementstatuts seeded: {$results['created']} created, {$results['updated']} updated");
    }
}
