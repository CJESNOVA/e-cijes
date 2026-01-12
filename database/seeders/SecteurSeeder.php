<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SecteurSeeder extends BaseSeeder
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
                'titre' => 'Technologie',
                'description' => 'Secteur des technologies de l\'information',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Finance',
                'description' => 'Secteur bancaire et financier',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Santé',
                'description' => 'Secteur médical et de la santé',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Éducation',
                'description' => 'Secteur de l\'éducation et formation',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Commerce',
                'description' => 'Secteur commercial et de distribution',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Industrie',
                'description' => 'Secteur industriel et manufacturier',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Agriculture',
                'description' => 'Secteur agricole et agroalimentaire',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Tourisme',
                'description' => 'Secteur du tourisme et hôtellerie',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Transport',
                'description' => 'Secteur des transports et logistique',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Énergie',
                'description' => 'Secteur de l\'énergie et environnement',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];
        
        $results = $this->createMany('secteurs', 'titre', $data);
        
        $this->command->info("Secteurs seeded: {$results['created']} created, {$results['updated']} updated");
    }
}
