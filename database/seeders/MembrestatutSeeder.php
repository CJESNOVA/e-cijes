<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class MembrestatutSeeder extends BaseSeeder
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
                'id' => 1,
                'titre' => 'En attente',
                'etat' => 1,
                'created_at' => '2025-06-18 12:48:49',
                'updated_at' => '2025-06-18 13:06:40',
            ],
            [
                'id' => 3,
                'titre' => 'Actif',
                'etat' => 1,
                'created_at' => '2025-06-18 12:50:17',
                'updated_at' => '2025-06-18 16:11:02',
            ],
        ];
        
        $results = $this->createMany('membrestatuts', 'titre', $data);
        
        $this->command->info("Membrestatuts seeded: {$results['created']} created, {$results['updated']} updated");
    }
}
