<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BonstatutsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'En attente', 'etat' => 1, 'created_at' => '2025-08-16 06:29:13', 'updated_at' => '2025-08-22 10:30:41'],
            ['id' => 2, 'titre' => 'Validé', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 3, 'titre' => 'Utilisé', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 4, 'titre' => 'Expiré', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('bonstatuts')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
