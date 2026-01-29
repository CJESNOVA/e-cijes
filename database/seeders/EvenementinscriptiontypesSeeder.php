<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class EvenementinscriptiontypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Oui', 'etat' => 1, 'created_at' => '2025-08-11 10:50:43', 'updated_at' => '2025-08-11 10:50:43'],
            ['id' => 2, 'titre' => 'Peut-être', 'etat' => 1, 'created_at' => '2025-08-11 10:51:01', 'updated_at' => '2025-08-11 10:51:01'],
            ['id' => 3, 'titre' => 'Non', 'etat' => 1, 'created_at' => '2025-08-11 10:51:09', 'updated_at' => '2025-08-11 10:51:09'],
        ];

        foreach ($data as $item) {
            DB::table('evenementinscriptiontypes')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
