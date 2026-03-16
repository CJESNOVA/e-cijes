<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DiagnostictypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Tests psychotechniques', 'etat' => 1, 'created_at' => '2026-01-12 17:30:33', 'updated_at' => '2026-01-12 17:30:33'],
            ['id' => 2, 'titre' => 'Niveaux de structuration', 'etat' => 1, 'created_at' => '2026-01-12 17:30:54', 'updated_at' => '2026-01-12 17:30:54'],
            ['id' => 3, 'titre' => 'Tests de classification', 'etat' => 1, 'created_at' => '2026-01-12 17:31:08', 'updated_at' => '2026-01-12 17:49:06'],
        ];

        foreach ($data as $item) {
            DB::table('diagnostictypes')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
