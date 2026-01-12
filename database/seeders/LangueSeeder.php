<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class LangueSeeder extends BaseSeeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $data = [
            [
                'code' => 'fr',
                'nom' => 'Français',
                'pays' => 'France',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'code' => 'en',
                'nom' => 'English',
                'pays' => 'United Kingdom',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'code' => 'es',
                'nom' => 'Español',
                'pays' => 'Spain',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'code' => 'de',
                'nom' => 'Deutsch',
                'pays' => 'Germany',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'code' => 'it',
                'nom' => 'Italiano',
                'pays' => 'Italy',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'code' => 'pt',
                'nom' => 'Português',
                'pays' => 'Portugal',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'code' => 'nl',
                'nom' => 'Nederlands',
                'pays' => 'Netherlands',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
            [
                'code' => 'ar',
                'nom' => 'العربية',
                'pays' => 'Arabic',
                'etat' => 1,
                'created_at' => now(),
                'updated_at' => now(),
            ],
        ];
        
        $results = $this->createMany('langues', 'code', $data);
        
        $this->command->info("Langues seeded: {$results['created']} created, {$results['updated']} updated");
    }
}
