<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class EvenementtypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Séminaires', 'etat' => 1, 'created_at' => '2025-08-11 09:48:25', 'updated_at' => '2025-08-11 09:48:25'],
            ['id' => 2, 'titre' => 'Colloques', 'etat' => 1, 'created_at' => '2025-08-11 09:48:44', 'updated_at' => '2025-08-11 09:48:44'],
            ['id' => 3, 'titre' => 'Conférences de presse', 'etat' => 1, 'created_at' => '2025-08-11 09:49:01', 'updated_at' => '2025-08-11 09:49:01'],
            ['id' => 4, 'titre' => 'Ateliers', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 5, 'titre' => 'Webinaires', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 6, 'titre' => 'Networking', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('evenementtypes')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
