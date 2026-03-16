<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class BontypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Bon d\'achat', 'etat' => 1, 'created_at' => '2025-07-15 09:09:03', 'updated_at' => '2025-08-22 10:23:00'],
            ['id' => 2, 'titre' => 'Bon de réduction', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 3, 'titre' => 'Bon de formation', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 4, 'titre' => 'Bon d\'accompagnement', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('bontypes')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
