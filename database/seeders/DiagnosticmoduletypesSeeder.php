<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DiagnosticmoduletypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Tests psychotechniques', 'etat' => 1, 'created_at' => '2025-08-13 13:04:35', 'updated_at' => '2026-01-12 17:30:11'],
            ['id' => 2, 'titre' => 'Niveaux de structuration', 'etat' => 1, 'created_at' => '2025-08-13 13:04:48', 'updated_at' => '2026-01-12 17:29:50'],
            ['id' => 3, 'titre' => 'Tests de classification', 'etat' => 1, 'created_at' => '2026-01-12 17:29:06', 'updated_at' => '2026-01-12 17:49:42'],
        ];

        foreach ($data as $item) {
            DB::table('diagnosticmoduletypes')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
