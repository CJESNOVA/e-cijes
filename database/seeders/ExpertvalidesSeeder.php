<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ExpertvalidesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'En attente', 'etat' => 1, 'created_at' => '2025-07-09 13:05:04', 'updated_at' => '2026-01-12 17:38:36'],
            ['id' => 2, 'titre' => 'Validé', 'etat' => 1, 'created_at' => '2026-01-12 17:38:54', 'updated_at' => '2026-01-12 17:38:54'],
            ['id' => 3, 'titre' => 'Rejeté', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('expertvalides')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
