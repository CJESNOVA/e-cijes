<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class FormationtypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Formation entreprenariat', 'etat' => 1, 'created_at' => '2026-01-11 13:15:55', 'updated_at' => '2026-01-11 13:15:55'],
            ['id' => 2, 'titre' => 'Formation de structuration', 'etat' => 1, 'created_at' => '2026-01-11 13:16:19', 'updated_at' => '2026-01-11 13:16:19'],
            ['id' => 3, 'titre' => 'Formation digitale', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 4, 'titre' => 'Formation management', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 5, 'titre' => 'Formation financière', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('formationtypes')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
