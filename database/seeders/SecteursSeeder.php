<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SecteursSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Technologies et innovation', 'etat' => 1, 'created_at' => '2025-08-22 10:50:55', 'updated_at' => '2025-08-22 10:50:55'],
            ['id' => 2, 'titre' => 'Incubateur de startups', 'etat' => 1, 'created_at' => '2025-08-22 10:51:05', 'updated_at' => '2025-08-22 10:51:05'],
            ['id' => 3, 'titre' => 'Services numériques', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 4, 'titre' => 'Industrie manufacturière', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 5, 'titre' => 'Commerce et distribution', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('secteurs')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
