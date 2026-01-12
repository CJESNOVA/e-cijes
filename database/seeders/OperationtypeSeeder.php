<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class OperationtypeSeeder extends BaseSeeder
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
                'titre' => 'Création',
                'description' => 'Création d\'un nouvel enregistrement',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Modification',
                'description' => 'Modification d\'un enregistrement existant',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Suppression',
                'description' => 'Suppression d\'un enregistrement',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Validation',
                'description' => 'Validation d\'une demande ou action',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Rejet',
                'description' => 'Rejet d\'une demande ou action',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Archivage',
                'description' => 'Archivage d\'un enregistrement',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];
        
        $results = $this->createMany('operationtypes', 'titre', $data);
        
        $this->command->info("Operationtypes seeded: {$results['created']} created, {$results['updated']} updated");
    }
}
