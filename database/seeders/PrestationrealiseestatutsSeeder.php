<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PrestationrealiseestatutsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'En attente', 'etat' => 1, 'created_at' => '2025-06-18 13:29:50', 'updated_at' => '2025-06-18 13:29:53'],
            ['id' => 2, 'titre' => 'Terminé', 'etat' => 1, 'created_at' => '2026-01-12 17:05:43', 'updated_at' => '2026-01-12 17:05:43'],
            ['id' => 3, 'titre' => 'En cours', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 4, 'titre' => 'Annulé', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('prestationrealiseestatuts')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
