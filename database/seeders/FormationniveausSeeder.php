<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class FormationniveausSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Débutant', 'etat' => 1, 'created_at' => '2025-08-11 14:37:30', 'updated_at' => '2025-08-22 10:18:48'],
            ['id' => 2, 'titre' => 'Intermédiaire', 'etat' => 1, 'created_at' => '2025-08-22 10:18:38', 'updated_at' => '2025-08-22 10:18:38'],
            ['id' => 3, 'titre' => 'Avancé', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 4, 'titre' => 'Expert', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('formationniveaus')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
