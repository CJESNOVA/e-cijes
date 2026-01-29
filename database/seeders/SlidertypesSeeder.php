<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class SlidertypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Image', 'etat' => 1, 'created_at' => '2025-07-02 20:54:26', 'updated_at' => '2025-07-02 20:54:26'],
            ['id' => 2, 'titre' => 'Vidéo', 'etat' => 1, 'created_at' => '2025-07-02 20:54:34', 'updated_at' => '2025-07-02 20:54:34'],
        ];

        foreach ($data as $item) {
            DB::table('slidertypes')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
