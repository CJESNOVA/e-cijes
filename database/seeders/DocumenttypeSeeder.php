<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DocumenttypeSeeder extends BaseSeeder
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
                'titre' => 'Contrat',
                'description' => 'Contrats de travail, de service, etc.',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Facture',
                'description' => 'Factures et devis',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Rapport',
                'description' => 'Rapports d\'activité, de mission',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Procès-verbal',
                'description' => 'PV de réunion, d\'assemblée',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Attestation',
                'description' => 'Attestations de travail, de stage',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Certificat',
                'description' => 'Certificats divers et attestations',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Formulaire',
                'description' => 'Formulaires administratifs',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Guide',
                'description' => 'Guides et manuels d\'utilisation',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];
        
        $results = $this->createMany('documenttypes', 'titre', $data);
        
        $this->command->info("Documenttypes seeded: {$results['created']} created, {$results['updated']} updated");
    }
}
