<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ReductiontypeSeeder extends BaseSeeder
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
                'titre' => 'Étudiant',
                'description' => 'Réduction pour les étudiants et jeunes',
                'pourcentage' => 15.00,
                'montant' => 0,
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Senior',
                'description' => 'Réduction pour les personnes âgées',
                'pourcentage' => 20.00,
                'montant' => 0,
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Entreprise',
                'description' => 'Réduction pour les entreprises partenaires',
                'pourcentage' => 10.00,
                'montant' => 0,
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Membre',
                'description' => 'Réduction pour les membres actifs',
                'pourcentage' => 25.00,
                'montant' => 0,
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Premier achat',
                'description' => 'Réduction pour premier achat',
                'pourcentage' => 0,
                'montant' => 5000.00,
                'date_debut' => now()->format('Y-m-d'),
                'date_fin' => now()->addDays(30)->format('Y-m-d'),
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Saison',
                'description' => 'Réduction saisonnière spéciale',
                'pourcentage' => 30.00,
                'montant' => 0,
                'date_debut' => now()->format('Y-m-d'),
                'date_fin' => now()->addMonths(3)->format('Y-m-d'),
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];
        
        $results = $this->createMany('reductiontypes', 'titre', $data);
        
        $this->command->info("Reductiontypes seeded: {$results['created']} created, {$results['updated']} updated");
    }
}
