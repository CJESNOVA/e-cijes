<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Propositionstatut;

class PropositionstatutsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $statuts = [
            ['titre' => 'En attente de validation', 'etat' => true],
            ['titre' => 'Validé', 'etat' => true],
            ['titre' => 'Rejeté', 'etat' => true],
            ['titre' => 'En cours', 'etat' => true],
            ['titre' => 'Archivé', 'etat' => true],
        ];

        foreach ($statuts as $statut) {
            Propositionstatut::create($statut);
        }

        $this->command->info('Statuts des propositions créés avec succès.');
    }
}
