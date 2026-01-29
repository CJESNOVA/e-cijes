<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ConseillertypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Conseiller CJES', 'etat' => 1, 'created_at' => '2025-08-12 10:38:35', 'updated_at' => '2026-01-12 17:40:06'],
            ['id' => 2, 'titre' => 'Conseiller senior', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 3, 'titre' => 'Conseiller junior', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 4, 'titre' => 'Conseiller expert', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('conseillertypes')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
