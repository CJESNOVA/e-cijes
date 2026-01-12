<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class JourSeeder extends BaseSeeder
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
                'nom' => 'Lundi',
                'numero' => 1,
                'abreviation' => 'Lun',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'nom' => 'Mardi',
                'numero' => 2,
                'abreviation' => 'Mar',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'nom' => 'Mercredi',
                'numero' => 3,
                'abreviation' => 'Mer',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'nom' => 'Jeudi',
                'numero' => 4,
                'abreviation' => 'Jeu',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'nom' => 'Vendredi',
                'numero' => 5,
                'abreviation' => 'Ven',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'nom' => 'Samedi',
                'numero' => 6,
                'abreviation' => 'Sam',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'nom' => 'Dimanche',
                'numero' => 7,
                'abreviation' => 'Dim',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];
        
        $results = $this->createMany('jours', 'numero', $data);
        
        $this->command->info("Jours seeded: {$results['created']} created, {$results['updated']} updated");
    }
}
