<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AccompagnementstatutSeeder extends BaseSeeder
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
                'created_at' => '2025-06-18 13:20:34',
                'updated_at' => '2025-08-22 10:31:06',
            ],
            [
                'id' => 2,
                'titre' => 'Terminé',
                'etat' => 1,
                'created_at' => '2025-08-22 21:25:32',
                'updated_at' => '2025-08-22 21:25:32',
            ],
        ];
        
        $results = $this->createMany('accompagnementstatuts', 'titre', $data);
        
        $this->command->info("Accompagnementstatuts seeded: {$results['created']} created, {$results['updated']} updated");
    }
}
