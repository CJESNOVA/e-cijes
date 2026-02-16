<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class DiagnosticstatutreglesSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run(): void
    {
        $data = [
            // RÈGLES PÉPITE (ID 1)
            [
                'entrepriseprofil_id' => 1, // Pépites
                'score_total_min' => 0,
                'score_total_max' => 119, // Score total < 120
                'min_blocs_score' => 0,
                'min_score_bloc' => 0,
                'bloc_juridique_min' => 0,
                'bloc_finance_min' => 0,
                'aucun_bloc_inf' => 0, // Pas de condition sur blocs critiques
                'duree_min_mois' => 0,
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'entrepriseprofil_id' => 1, // Pépites
                'score_total_min' => 120,
                'score_total_max' => 159, // Score total 120-159 mais conditions non remplies
                'min_blocs_score' => 0,
                'min_score_bloc' => 0,
                'bloc_juridique_min' => 0,
                'bloc_finance_min' => 0,
                'aucun_bloc_inf' => 0,
                'duree_min_mois' => 0,
                'created_at' => now(),
                'updated_at' => now()
            ],

            // RÈGLES ÉMERGENTE (ID 2)
            [
                'entrepriseprofil_id' => 2, // Émergents
                'score_total_min' => 120,
                'score_total_max' => 159, // Score total 120-159
                'min_blocs_score' => 4,
                'min_score_bloc' => 12,
                'bloc_juridique_min' => 12,
                'bloc_finance_min' => 12,
                'aucun_bloc_inf' => 1, // Moins de 2 blocs critiques
                'duree_min_mois' => 3,
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'entrepriseprofil_id' => 2, // Émergents
                'score_total_min' => 160,
                'score_total_max' => 199, // Score total 160-199 mais conditions Élite non remplies
                'min_blocs_score' => 0,
                'min_score_bloc' => 0,
                'bloc_juridique_min' => 0,
                'bloc_finance_min' => 0,
                'aucun_bloc_inf' => 0,
                'duree_min_mois' => 0,
                'created_at' => now(),
                'updated_at' => now()
            ],

            // RÈGLES ÉLITE (ID 3)
            [
                'entrepriseprofil_id' => 3, // Élites
                'score_total_min' => 160,
                'score_total_max' => 200, // Score total ≥ 160
                'min_blocs_score' => 10, // 100% des blocs
                'min_score_bloc' => 16,
                'bloc_juridique_min' => 16,
                'bloc_finance_min' => 16,
                'aucun_bloc_inf' => 1, // Aucun bloc < 16
                'duree_min_mois' => 3,
                'created_at' => now(),
                'updated_at' => now()
            ],

            // RÈGLES SPÉCIFIQUES POUR CONDITIONS BLOQUANTES
            // Blocs critiques pour Pépites
            [
                'entrepriseprofil_id' => 1, // Pépites - Bloc Juridique bloquant
                'score_total_min' => 0,
                'score_total_max' => 200,
                'min_blocs_score' => 0,
                'min_score_bloc' => 0,
                'bloc_juridique_min' => 8, // Bloc Juridique < 8 = reste Pépite
                'bloc_finance_min' => 0,
                'aucun_bloc_inf' => 0,
                'duree_min_mois' => 0,
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'entrepriseprofil_id' => 1, // Pépites - Bloc Finance bloquant
                'score_total_min' => 0,
                'score_total_max' => 200,
                'min_blocs_score' => 0,
                'min_score_bloc' => 0,
                'bloc_juridique_min' => 0,
                'bloc_finance_min' => 8, // Bloc Finance < 8 = reste Pépite
                'aucun_bloc_inf' => 0,
                'duree_min_mois' => 0,
                'created_at' => now(),
                'updated_at' => now()
            ],

            // Blocs fragiles pour Émergents
            [
                'entrepriseprofil_id' => 2, // Émergents - Bloc Juridique bloquant
                'score_total_min' => 0,
                'score_total_max' => 200,
                'min_blocs_score' => 0,
                'min_score_bloc' => 0,
                'bloc_juridique_min' => 16, // Bloc Juridique < 16 = reste Émergent
                'bloc_finance_min' => 0,
                'aucun_bloc_inf' => 0,
                'duree_min_mois' => 0,
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'entrepriseprofil_id' => 2, // Émergents - Bloc Finance bloquant
                'score_total_min' => 0,
                'score_total_max' => 200,
                'min_blocs_score' => 0,
                'min_score_bloc' => 0,
                'bloc_juridique_min' => 0,
                'bloc_finance_min' => 16, // Bloc Finance < 16 = reste Émergent
                'aucun_bloc_inf' => 0,
                'duree_min_mois' => 0,
                'created_at' => now(),
                'updated_at' => now()
            ],

            // Rétrogradations Élite → Émergent
            [
                'entrepriseprofil_id' => 3, // Élites - Rétrogradation possible
                'score_total_min' => 0,
                'score_total_max' => 159, // Score total < 160
                'min_blocs_score' => 0,
                'min_score_bloc' => 0,
                'bloc_juridique_min' => 0,
                'bloc_finance_min' => 0,
                'aucun_bloc_inf' => 0,
                'duree_min_mois' => 0,
                'created_at' => now(),
                'updated_at' => now()
            ],
            [
                'entrepriseprofil_id' => 3, // Élites - Bloc < 16 = rétrogradation
                'score_total_min' => 0,
                'score_total_max' => 200,
                'min_blocs_score' => 0,
                'min_score_bloc' => 0,
                'bloc_juridique_min' => 16, // Bloc Juridique < 16 = rétrogradation
                'bloc_finance_min' => 0,
                'aucun_bloc_inf' => 0,
                'duree_min_mois' => 0,
                'created_at' => now(),
                'updated_at' => now()
            ],
        ];

        foreach ($data as $item) {
            DB::table('diagnosticstatutregles')->updateOrInsert(
                [
                    'entrepriseprofil_id' => $item['entrepriseprofil_id'],
                    'score_total_min' => $item['score_total_min'],
                    'bloc_juridique_min' => $item['bloc_juridique_min'],
                    'bloc_finance_min' => $item['bloc_finance_min']
                ],
                $item
            );
        }
    }
}
