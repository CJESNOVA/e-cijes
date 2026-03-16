<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class MembrestatutsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'En attente', 'etat' => 1, 'created_at' => '2025-06-18 12:48:49', 'updated_at' => '2025-06-18 13:06:40'],
            ['id' => 2, 'titre' => 'Inactif', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 3, 'titre' => 'Actif', 'etat' => 1, 'created_at' => '2025-06-18 12:50:17', 'updated_at' => '2025-06-18 16:11:02'],
            ['id' => 4, 'titre' => 'Suspendu', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 5, 'titre' => 'Résilié', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('membrestatuts')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
