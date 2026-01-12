<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ExampleTableSeeder extends BaseSeeder
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
                'nom' => 'Exemple 1',
                'description' => 'Description de l\'exemple 1',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'nom' => 'Exemple 2', 
                'description' => 'Description de l\'exemple 2',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];
        
        $results = $this->createMany('example_table', 'nom', $data);
        
        $this->command->info("Example table seeded: {$results['created']} created, {$results['updated']} updated");
    }
}
