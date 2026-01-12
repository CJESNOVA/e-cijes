<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PiecetypeSeeder extends BaseSeeder
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
                'titre' => 'Pièce d\'identité',
                'description' => 'Carte d\'identité, passeport, permis',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Justificatif de domicile',
                'description' => 'Facture, quittance de loyer',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Diplôme',
                'description' => 'Diplômes et certificats scolaires',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'CV',
                'description' => 'Curriculum vitae et lettre de motivation',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Justificatif de revenus',
                'description' => 'Fiches de paie, avis d\'imposition',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'RIB',
                'description' => 'Relevé d\'identité bancaire',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Photo',
                'description' => 'Photo d\'identité récente',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Attestation',
                'description' => 'Attestations diverses (assurance, etc.)',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];
        
        $results = $this->createMany('piecetypes', 'titre', $data);
        
        $this->command->info("Piecetypes seeded: {$results['created']} created, {$results['updated']} updated");
    }
}
