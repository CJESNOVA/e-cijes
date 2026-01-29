<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class OperationtypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Crédit', 'etat' => 1, 'created_at' => '2026-01-12 17:34:51', 'updated_at' => '2026-01-12 17:34:51'],
            ['id' => 2, 'titre' => 'Débit', 'etat' => 1, 'created_at' => '2026-01-12 17:35:27', 'updated_at' => '2026-01-12 17:35:27'],
            ['id' => 3, 'titre' => 'Remboursement', 'etat' => 1, 'created_at' => '2026-01-12 17:36:08', 'updated_at' => '2026-01-12 17:36:08'],
            ['id' => 4, 'titre' => 'Retrait', 'etat' => 1, 'created_at' => '2026-01-12 17:36:20', 'updated_at' => '2026-01-12 17:36:20'],
            ['id' => 5, 'titre' => 'Conversion', 'etat' => 1, 'created_at' => '2026-01-12 17:36:29', 'updated_at' => '2026-01-12 17:36:29'],
        ];

        foreach ($data as $item) {
            DB::table('operationtypes')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
