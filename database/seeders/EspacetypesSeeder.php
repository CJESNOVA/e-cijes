<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class EspacetypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Salle de conférence', 'etat' => 1, 'created_at' => '2025-07-31 08:04:15', 'updated_at' => '2025-07-31 08:04:15'],
            ['id' => 2, 'titre' => 'Co-working', 'etat' => 1, 'created_at' => '2025-07-31 08:04:15', 'updated_at' => '2025-07-31 08:04:15'],
            ['id' => 3, 'titre' => 'Salle de réunion', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 4, 'titre' => 'Open space', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 5, 'titre' => 'Bureau privatif', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('espacetypes')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
