<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class MembretypeSeeder extends BaseSeeder
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
                'titre' => 'Membre actif',
                'description' => 'Membre actif avec tous les droits et avantages',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Membre passif',
                'description' => 'Membre passif avec droits limités',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Membre honoraire',
                'description' => 'Membre honoraire pour services rendus',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Membre associé',
                'description' => 'Membre associé partenaire',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'titre' => 'Membre junior',
                'description' => 'Membre junior en formation',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];
        
        $results = $this->createMany('membretypes', 'titre', $data);
        
        $this->command->info("Membretypes seeded: {$results['created']} created, {$results['updated']} updated");
    }
}
