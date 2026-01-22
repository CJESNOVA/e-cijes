<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Membrestatut;

class MembrestatutsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $statuts = [
            ['titre' => 'En attente', 'etat' => true],
            ['titre' => 'Validé', 'etat' => true],
            ['titre' => 'Rejeté', 'etat' => true],
            ['titre' => 'En cours de traitement', 'etat' => true],
        ];

        foreach ($statuts as $statut) {
            Membrestatut::create($statut);
        }

        $this->command->info('Statuts des membres créés avec succès.');
    }
}
