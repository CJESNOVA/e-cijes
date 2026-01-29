<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class AccompagnementstatutsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'En attente', 'etat' => 1, 'created_at' => '2025-06-18 13:20:34', 'updated_at' => '2025-08-22 10:31:06'],
            ['id' => 2, 'titre' => 'Terminé', 'etat' => 1, 'created_at' => '2025-08-22 21:25:32', 'updated_at' => '2025-08-22 21:25:32'],
            ['id' => 3, 'titre' => 'En cours', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 4, 'titre' => 'Suspendu', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 5, 'titre' => 'Annulé', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('accompagnementstatuts')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
