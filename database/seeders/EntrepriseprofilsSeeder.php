<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class EntrepriseprofilsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Pépites', 'etat' => 1, 'created_at' => '2026-01-06 14:24:40', 'updated_at' => '2026-01-06 14:24:40'],
            ['id' => 2, 'titre' => 'Emergeants', 'etat' => 1, 'created_at' => '2026-01-06 14:25:15', 'updated_at' => '2026-01-06 14:25:15'],
            ['id' => 3, 'titre' => 'Elites', 'etat' => 1, 'created_at' => '2026-01-06 14:25:29', 'updated_at' => '2026-01-06 14:25:40'],
        ];

        foreach ($data as $item) {
            DB::table('entrepriseprofils')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
