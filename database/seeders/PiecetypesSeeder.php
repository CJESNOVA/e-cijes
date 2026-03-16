<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class PiecetypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Carte d\'opérateur économique', 'etat' => 1, 'created_at' => '2025-08-22 10:24:02', 'updated_at' => '2025-08-22 10:24:02'],
            ['id' => 2, 'titre' => 'Carte OTR', 'etat' => 1, 'created_at' => '2025-08-22 10:24:19', 'updated_at' => '2025-08-22 10:24:58'],
            ['id' => 3, 'titre' => 'Récépissé', 'etat' => 1, 'created_at' => '2025-08-22 10:24:40', 'updated_at' => '2025-08-22 10:24:40'],
            ['id' => 4, 'titre' => 'Registre de commerce', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 5, 'titre' => 'Autorisation d\'exploitation', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('piecetypes')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
