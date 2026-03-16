<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class OffretypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Prestations', 'etat' => 1, 'created_at' => '2026-01-11 13:11:42', 'updated_at' => '2026-01-11 13:11:42'],
            ['id' => 2, 'titre' => 'Formations', 'etat' => 1, 'created_at' => '2026-01-11 13:11:58', 'updated_at' => '2026-01-11 13:11:58'],
            ['id' => 3, 'titre' => 'Evènements', 'etat' => 1, 'created_at' => '2026-01-11 13:12:16', 'updated_at' => '2026-01-11 13:12:16'],
            ['id' => 4, 'titre' => 'Espaces', 'etat' => 1, 'created_at' => '2026-01-11 13:12:36', 'updated_at' => '2026-01-11 13:12:36'],
        ];

        foreach ($data as $item) {
            DB::table('offretypes')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
