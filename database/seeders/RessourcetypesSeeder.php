<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class RessourcetypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'KOBO', 'etat' => 1, 'created_at' => '2025-09-13 13:02:38', 'updated_at' => '2025-09-13 13:02:38'],
            ['id' => 2, 'titre' => 'CORIS', 'etat' => 1, 'created_at' => '2025-09-13 13:02:50', 'updated_at' => '2025-09-13 13:02:50'],
            ['id' => 3, 'titre' => 'BON', 'etat' => 1, 'created_at' => '2025-09-13 13:03:08', 'updated_at' => '2025-09-13 13:03:08'],
            ['id' => 4, 'titre' => 'SIKA', 'etat' => 1, 'created_at' => '2025-09-13 13:03:14', 'updated_at' => '2025-09-13 13:03:14'],
        ];

        foreach ($data as $item) {
            DB::table('ressourcetypes')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
