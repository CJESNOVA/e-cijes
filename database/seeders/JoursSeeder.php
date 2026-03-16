<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class JoursSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Lundi', 'etat' => 1, 'created_at' => '2025-07-09 14:10:04', 'updated_at' => '2025-07-09 14:10:04'],
            ['id' => 2, 'titre' => 'Mardi', 'etat' => 1, 'created_at' => '2025-07-09 14:10:14', 'updated_at' => '2025-07-09 14:10:14'],
            ['id' => 3, 'titre' => 'Mercredi', 'etat' => 1, 'created_at' => '2025-08-22 10:19:05', 'updated_at' => '2025-08-22 10:19:05'],
            ['id' => 4, 'titre' => 'Jeudi', 'etat' => 1, 'created_at' => '2025-08-22 10:19:14', 'updated_at' => '2025-08-22 10:19:14'],
            ['id' => 5, 'titre' => 'Vendredi', 'etat' => 1, 'created_at' => '2025-08-22 10:19:24', 'updated_at' => '2025-08-22 10:19:24'],
            ['id' => 6, 'titre' => 'Samedi', 'etat' => 1, 'created_at' => '2025-08-22 10:19:33', 'updated_at' => '2025-08-22 10:19:33'],
            ['id' => 7, 'titre' => 'Dimanche', 'etat' => 1, 'created_at' => '2025-08-22 10:19:42', 'updated_at' => '2025-08-22 10:19:42'],
        ];

        foreach ($data as $item) {
            DB::table('jours')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
