<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class NewslettertypesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            ['id' => 1, 'titre' => 'Newsletter', 'etat' => 1, 'created_at' => '2026-01-12 17:40:26', 'updated_at' => '2026-01-12 17:40:26'],
            ['id' => 2, 'titre' => 'Bulletin d\'information', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
            ['id' => 3, 'titre' => 'Alerte newsletter', 'etat' => 1, 'created_at' => now(), 'updated_at' => now()],
        ];

        foreach ($data as $item) {
            DB::table('newslettertypes')->updateOrInsert(
                ['id' => $item['id']],
                $item
            );
        }
    }
}
