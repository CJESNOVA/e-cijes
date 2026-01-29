<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PrestationtypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Structuration', 'etat' => 1, 'created_at' => '2025-08-05 14:45:06', 'updated_at' => '2026-01-11 13:13:27'],
            ['id' => 2, 'titre' => 'Organisation structurelle', 'etat' => 1, 'created_at' => '2025-08-22 10:25:28', 'updated_at' => '2026-01-11 13:14:56'],
            ['id' => 3, 'titre' => 'Consulting stratégique', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 4, 'titre' => 'Accompagnement juridique', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('prestationtypes')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
