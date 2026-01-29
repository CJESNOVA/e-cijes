<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ActualitetypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Actualités CIJES', 'etat' => 1, 'created_at' => '2025-07-25 07:52:12', 'updated_at' => '2025-07-25 07:52:12'],
            ['id' => 2, 'titre' => 'Événements & Formations', 'etat' => 1, 'created_at' => '2025-07-25 07:52:25', 'updated_at' => '2025-07-25 07:52:25'],
            ['id' => 3, 'titre' => 'Conseils & Bonnes Pratiques', 'etat' => 1, 'created_at' => '2025-07-25 07:52:49', 'updated_at' => '2025-07-25 07:52:49'],
            ['id' => 4, 'titre' => 'Annonces importantes', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 5, 'titre' => 'Succès stories', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('actualitetypes')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
