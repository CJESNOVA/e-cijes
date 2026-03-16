<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RecommandationoriginesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'IA', 'etat' => 1, 'created_at' => '2025-06-19 13:20:48', 'updated_at' => '2025-06-19 13:20:48'],
            ['id' => 2, 'titre' => 'Manuel', 'etat' => 1, 'created_at' => '2025-06-19 13:21:01', 'updated_at' => '2025-06-19 13:21:01'],
        ];

        foreach ($data as $item) {
            DB::table('recommandationorigines')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
