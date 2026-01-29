<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SuivistatutsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Actif', 'etat' => 1, 'created_at' => '2025-06-18 13:37:15', 'updated_at' => '2025-06-18 16:41:02'],
            ['id' => 2, 'titre' => 'Inactif', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 3, 'titre' => 'Terminé', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 4, 'titre' => 'Suspendu', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('suivistatuts')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
