<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AlertetypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Alertes', 'etat' => 1, 'created_at' => '2025-07-07 17:25:09', 'updated_at' => '2025-07-07 17:25:09'],
            ['id' => 2, 'titre' => 'Infos', 'etat' => 1, 'created_at' => '2025-07-07 17:25:18', 'updated_at' => '2025-07-07 17:25:18'],
            ['id' => 3, 'titre' => 'Urgent', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 4, 'titre' => 'Rappel', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('alertetypes')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
