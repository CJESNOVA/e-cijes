<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class MembretypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Entrepreneur', 'membrecategorie_id' => 1, 'etat' => 1, 'created_at' => '2025-07-04 20:06:55', 'updated_at' => '2026-01-12 17:24:46'],
            ['id' => 2, 'titre' => 'Expert', 'membrecategorie_id' => 2, 'etat' => 1, 'created_at' => '2025-07-04 20:07:17', 'updated_at' => '2026-01-12 17:25:30'],
            ['id' => 3, 'titre' => 'Conseiller CJES', 'membrecategorie_id' => 1, 'etat' => 1, 'created_at' => '2025-07-04 20:07:36', 'updated_at' => '2026-01-12 17:26:19'],
        ];

        foreach ($data as $item) {
            DB::table('membretypes')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
