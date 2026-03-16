<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class EntreprisetypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'SA', 'etat' => 1, 'created_at' => '2025-06-18 21:29:26', 'updated_at' => '2025-06-18 21:29:26'],
            ['id' => 2, 'titre' => 'SARL', 'etat' => 1, 'created_at' => '2025-06-18 21:29:41', 'updated_at' => '2025-06-18 21:29:41'],
            ['id' => 3, 'titre' => 'PME', 'etat' => 1, 'created_at' => '2026-01-12 17:18:29', 'updated_at' => '2026-01-12 17:18:29'],
            ['id' => 4, 'titre' => 'Collectivité', 'etat' => 1, 'created_at' => '2026-01-12 17:19:04', 'updated_at' => '2026-01-12 17:19:04'],
            ['id' => 5, 'titre' => 'EURL', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 6, 'titre' => 'SAS', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 7, 'titre' => 'Auto-entrepreneur', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('entreprisetypes')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
