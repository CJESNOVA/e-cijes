<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Membre;
use App\Models\Entreprise;
use App\Models\Diagnostic;
use App\Models\Diagnosticresultat;
use App\Models\Diagnosticquestion;
use App\Models\Diagnosticreponse;
use App\Models\Diagnosticmodule;
use App\Models\Plan;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;

class DiagnosticController extends Controller
{
    /**
     * Récupère tous les diagnostics complets pour un utilisateur via son email
     * 
     * @param string $email
     * @return JsonResponse
     */
    public function getDiagnosticComplet($email): JsonResponse
    {
        try {
            // Récupérer l'utilisateur par son email
            $user = User::where('email', $email)->first();
            
            if (!$user) {
                return response()->json([
                    'success' => false,
                    'message' => 'Aucun utilisateur trouvé avec cet email',
                    'data' => null
                ], 404);
            }

            // Récupérer le membre associé à l'utilisateur
            $membre = Membre::where('user_id', $user->id)->first();
            
            if (!$membre) {
                return response()->json([
                    'success' => false,
                    'message' => 'Aucun membre trouvé pour cet utilisateur',
                    'data' => null
                ], 404);
            }

            // Récupérer toutes les entreprises du membre via la table entreprisemembres
            $entreprises = \App\Models\Entreprisemembre::where('membre_id', $membre->id)
                ->with('entreprise')
                ->get()
                ->pluck('entreprise')
                ->filter();

            // Préparer la structure de données
            $data = [
                'user_email' => $email,
                'user_id' => $user->id,
                'membre' => [
                    'id' => $membre->id,
                    'numero_identifiant' => $membre->numero_identifiant,
                    'nom' => $membre->nom,
                    'prenom' => $membre->prenom,
                    'email' => $membre->email,
                    'telephone' => $membre->telephone,
                    'nom_complet' => $membre->nom_complet,
                    'diagnostics' => [],
                    'entreprises' => []
                ]
            ];

            // Ajouter les diagnostics du membre lui-même (sans entreprise)
            $diagnosticsMembre = Diagnostic::where('membre_id', $membre->id)
                //->whereNull('entreprise_id')
                ->where('diagnostictype_id', 1)
                ->with(['diagnostictype', 'diagnosticstatut', 'accompagnement'])
                ->get();

            if ($diagnosticsMembre->isNotEmpty()) {
                $data['membre']['diagnostics'] = $this->formatDiagnostics($diagnosticsMembre);
            }

            // Traiter chaque entreprise et ses diagnostics
            foreach ($entreprises as $entreprise) {
                $entrepriseData = [
                    'id' => $entreprise->id,
                    'nom' => $entreprise->nom,
                    'email' => $entreprise->email,
                    'telephone' => $entreprise->telephone,
                    'adresse' => $entreprise->adresse,
                    'description' => $entreprise->description,
                    'annee_creation' => $entreprise->annee_creation,
                    'est_membre_cijes' => $entreprise->est_membre_cijes,
                    'diagnostics' => []
                ];

                // Récupérer les diagnostics pour cette entreprise
                $diagnosticsEntreprise = Diagnostic::where('membre_id', $membre->id)
                    ->where('entreprise_id', $entreprise->id)
                    ->where('diagnostictype_id', 2)
                    ->with(['diagnostictype', 'diagnosticstatut', 'accompagnement'])
                    ->get();

                if ($diagnosticsEntreprise->isNotEmpty()) {
                    $entrepriseData['diagnostics'] = $this->formatDiagnostics($diagnosticsEntreprise);
                }

                //$data['membre']['entreprises'][] = $entrepriseData;
            }

            return response()->json([
                'success' => true,
                'message' => 'Données de diagnostic récupérées avec succès',
                'data' => $data
            ]);

        } catch (\Exception $e) {
            return response()->json([
                'success' => false,
                'message' => 'Erreur lors de la récupération des données: ' . $e->getMessage(),
                'data' => null
            ], 500);
        }
    }

    /**
     * Formate les diagnostics avec toutes leurs données associées
     * 
     * @param \Illuminate\Database\Eloquent\Collection $diagnostics
     * @return array
     */
    private function formatDiagnostics($diagnostics): array
    {
        $formattedDiagnostics = [];

        foreach ($diagnostics as $diagnostic) {
            // Récupérer tous les résultats pour ce diagnostic
            $resultats = Diagnosticresultat::where('diagnostic_id', $diagnostic->id)
                ->with([
                    'diagnosticquestion' => function($query) {
                        $query->with(['diagnosticmodule', 'diagnosticquestiontype', 'diagnosticquestioncategorie']);
                    },
                    'diagnosticreponse'
                ])
                ->get();

            // Grouper les résultats par module
            $modulesData = [];
            foreach ($resultats as $resultat) {
                $module = $resultat->diagnosticquestion->diagnosticmodule;
                $moduleId = $module->id;

                if (!isset($modulesData[$moduleId])) {
                    $modulesData[$moduleId] = [
                        'id' => $module->id,
                        'titre' => $module->titre,
                        'description' => $module->description,
                        'position' => $module->position,
                        'questions' => [],
                    ];
                }

                $questionData = [
                    'id' => $resultat->diagnosticquestion->id,
                    'titre' => $resultat->diagnosticquestion->titre,
                    'position' => $resultat->diagnosticquestion->position,
                    'obligatoire' => $resultat->diagnosticquestion->obligatoire,
                    'type' => $resultat->diagnosticquestion->diagnosticquestiontype->titre ?? null,
                    'categorie' => $resultat->diagnosticquestion->diagnosticquestioncategorie->titre ?? null,
                    'reponse' => [
                        'id' => $resultat->diagnosticreponse->id ?? null,
                        'titre' => $resultat->diagnosticreponse->titre ?? null,
                        'score' => $resultat->diagnosticreponse->score ?? 0,
                        'position' => $resultat->diagnosticreponse->position ?? null
                    ],
                    'reponse_texte' => $resultat->reponsetexte,
                    'reponse_ids' => $resultat->diagnosticreponseids
                ];

                $modulesData[$moduleId]['questions'][] = $questionData;
            }

            // Calculer les statistiques par module
            foreach ($modulesData as &$module) {
                $scoreTotal = 0;
                $scoreMaximum = 0;
                $questionsRepondues = 0;

                foreach ($module['questions'] as $question) {
                    if ($question['reponse']['score'] !== null) {
                        $scoreTotal += $question['reponse']['score'];
                        $questionsRepondues++;
                    }
                    // Calculer le score maximum pour cette question
                    $maxQuestionScore = Diagnosticreponse::where('diagnosticquestion_id', $question['id'])
                        ->max('score') ?? 0;
                    $scoreMaximum += $maxQuestionScore;
                }
                $pourcentage = $scoreMaximum > 0 ? round(($scoreTotal * 100) / $scoreMaximum, 2) : 0;
                $module['statistiques'] = [
                    'score_total' => $scoreTotal,
                    'score_maximum' => $scoreMaximum,
                    'pourcentage' => $pourcentage,
                    'questions_repondues' => $questionsRepondues,
                    'nombre_questions' => count($module['questions'])
                ];
            }
            
            // Récupérer les plans d'accompagnement pour ce diagnostic (une seule fois)
            $plansAccompagnement = Plan::where('accompagnement_id', $diagnostic->accompagnement_id)
                ->where('etat', 1) // Uniquement les plans actifs
                ->orderBy('dateplan', 'asc')
                ->get()
                ->map(function($plan) {
                    return [
                        'id' => $plan->id,
                        'objectif' => $plan->objectif,
                        'action_prioritaire' => $plan->actionprioritaire,
                        'date_plan' => $plan->dateplan,
                        'spotlight' => $plan->spotlight,
                        'etat' => $plan->etat
                    ];
                });

            // Calculer les statistiques globales
            $globalScoreTotal = array_sum(array_column(array_column($modulesData, 'statistiques'), 'score_total'));
            $globalScoreMaximum = array_sum(array_column(array_column($modulesData, 'statistiques'), 'score_maximum'));
            $globalPourcentage = $globalScoreMaximum > 0 ? round(($globalScoreTotal * 100) / $globalScoreMaximum, 2) : 0;
            
            $diagnosticData = [
                'id' => $diagnostic->id,
                'score_global' => $diagnostic->scoreglobal,
                'commentaire' => $diagnostic->commentaire,
                'etat' => $diagnostic->etat,
                'spotlight' => $diagnostic->spotlight,
                'type' => $diagnostic->diagnostictype->titre ?? null,
                'statut' => $diagnostic->diagnosticstatut->titre ?? null,
                'accompagnement' => $diagnostic->accompagnement_id ?? null,
                'modules' => array_values($modulesData),
                'statistiques_globales' => [
                    'score_total' => $globalScoreTotal,
                    'score_maximum' => $globalScoreMaximum,
                    'pourcentage' => $globalPourcentage,
                    'nombre_modules' => count($modulesData),
                    'nombre_total_questions' => array_sum(array_column(array_column($modulesData, 'statistiques'), 'nombre_questions')),
                    'questions_repondues_total' => array_sum(array_column(array_column($modulesData, 'statistiques'), 'questions_repondues'))
                ],
                'plans_accompagnement' => $plansAccompagnement->toArray()
            ];

            $formattedDiagnostics[] = $diagnosticData;
        }

        return $formattedDiagnostics;
    }
}
