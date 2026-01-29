<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ConseillervalidesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'En attente', 'etat' => 1, 'created_at' => '2025-08-12 10:38:15', 'updated_at' => '2025-08-22 10:19:59'],
            ['id' => 2, 'titre' => 'Validé', 'etat' => 1, 'created_at' => '2026-01-12 17:39:35', 'updated_at' => '2026-01-12 17:39:35'],
            ['id' => 3, 'titre' => 'Rejeté', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 4, 'titre' => 'En révision', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('conseillervalides')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
