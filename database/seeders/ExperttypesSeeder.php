<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ExperttypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Expert', 'etat' => 1, 'created_at' => '2025-07-09 13:06:16', 'updated_at' => '2025-07-09 13:06:16'],
            ['id' => 2, 'titre' => 'Expert senior', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 3, 'titre' => 'Expert consultant', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('experttypes')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
