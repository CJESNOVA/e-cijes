<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class CreditstatutsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'En attente', 'etat' => 1, 'created_at' => '2025-06-18 20:01:04', 'updated_at' => '2025-06-18 20:01:04'],
            ['id' => 2, 'titre' => 'Approuvé', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 3, 'titre' => 'Rejeté', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 4, 'titre' => 'En cours', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 5, 'titre' => 'Remboursé', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('creditstatuts')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
