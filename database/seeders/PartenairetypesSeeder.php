<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PartenairetypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Banques', 'etat' => 1, 'created_at' => '2025-07-21 18:10:13', 'updated_at' => '2025-07-21 18:10:13'],
            ['id' => 2, 'titre' => 'Bailleurs', 'etat' => 1, 'created_at' => '2025-07-21 18:10:25', 'updated_at' => '2025-07-21 18:10:25'],
            ['id' => 3, 'titre' => 'Ministères', 'etat' => 1, 'created_at' => '2025-07-21 18:10:37', 'updated_at' => '2025-07-21 18:10:37'],
            ['id' => 4, 'titre' => 'ONG', 'etat' => 1, 'created_at' => '2025-07-21 18:10:48', 'updated_at' => '2025-07-21 18:10:48'],
            ['id' => 5, 'titre' => 'Entreprises partenaires', 'etat' => 1, 'created_at' => '2025-07-21 18:11:05', 'updated_at' => '2025-07-21 18:11:05'],
        ];

        foreach ($data as $item) {
            DB::table('partenairetypes')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
