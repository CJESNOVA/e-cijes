<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Diagnosticmodulescore;
use App\Models\Diagnostic;
use App\Models\Diagnosticmodule;

class DiagnosticmodulescoresSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        // Récupérer quelques diagnostics et modules pour les associer
        $diagnostics = Diagnostic::all();
        $diagnosticmodules = Diagnosticmodule::all();
        
        if ($diagnostics->isEmpty()) {
            $this->command->warn('Aucun diagnostic trouvé. Veuillez exécuter le seeder des diagnostics d\'abord.');
            return;
        }

        if ($diagnosticmodules->isEmpty()) {
            $this->command->warn('Aucun module de diagnostic trouvé. Veuillez exécuter le seeder des modules de diagnostic d\'abord.');
            return;
        }

        $diagnosticmodulescores = [
            [
                'diagnostic_id' => $diagnostics->random()->id,
                'diagnosticmodule_id' => $diagnosticmodules->random()->id,
                'score_total' => 85,
                'score_max' => 100,
                'score_pourcentage' => 85.00,
                'niveau' => 'Avancé',
            ],
            [
                'diagnostic_id' => $diagnostics->random()->id,
                'diagnosticmodule_id' => $diagnosticmodules->random()->id,
                'score_total' => 72,
                'score_max' => 100,
                'score_pourcentage' => 72.00,
                'niveau' => 'Intermédiaire',
            ],
            [
                'diagnostic_id' => $diagnostics->random()->id,
                'diagnosticmodule_id' => $diagnosticmodules->random()->id,
                'score_total' => 95,
                'score_max' => 100,
                'score_pourcentage' => 95.00,
                'niveau' => 'Expert',
            ],
            [
                'diagnostic_id' => $diagnostics->random()->id,
                'diagnosticmodule_id' => $diagnosticmodules->random()->id,
                'score_total' => 58,
                'score_max' => 100,
                'score_pourcentage' => 58.00,
                'niveau' => 'Débutant',
            ],
            [
                'diagnostic_id' => $diagnostics->random()->id,
                'diagnosticmodule_id' => $diagnosticmodules->random()->id,
                'score_total' => 88,
                'score_max' => 100,
                'score_pourcentage' => 88.00,
                'niveau' => 'Avancé',
            ],
        ];

        foreach ($diagnosticmodulescores as $score) {
            Diagnosticmodulescore::create($score);
        }

        $this->command->info('Scores des modules de diagnostics créés avec succès.');
    }
}
