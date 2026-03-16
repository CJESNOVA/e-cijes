<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class MembrecategoriesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Entrepreneur', 'etat' => 1, 'created_at' => '2026-01-06 14:30:45', 'updated_at' => '2026-01-06 14:30:45'],
            ['id' => 2, 'titre' => 'Expert', 'etat' => 1, 'created_at' => '2026-01-06 14:30:59', 'updated_at' => '2026-01-06 14:30:59'],
            ['id' => 3, 'titre' => 'Conseiller', 'etat' => 1, 'created_at' => '2026-01-12 17:22:51', 'updated_at' => '2026-01-12 17:22:51'],
        ];

        foreach ($data as $item) {
            DB::table('membrecategories')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
