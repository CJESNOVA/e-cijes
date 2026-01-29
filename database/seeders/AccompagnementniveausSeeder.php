<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AccompagnementniveausSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Diagnostic', 'etat' => 1, 'created_at' => '2025-06-19 12:38:23', 'updated_at' => '2025-06-19 12:38:38'],
            ['id' => 2, 'titre' => 'Accompagnement personnalisé', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 3, 'titre' => 'Accompagnement de groupe', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 4, 'titre' => 'Accompagnement intensif', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 5, 'titre' => 'Accompagnement à distance', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('accompagnementniveaus')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
