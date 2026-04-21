<?php

namespace App\Orchid\Screens\Abonnement;

use Orchid\Screen\Screen;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Sight;
use Illuminate\Support\HtmlString;

use App\Models\Abonnement;
use App\Models\Entreprise;
use App\Models\Abonnementtype;

class ShowScreen extends Screen
{
    public function query(Abonnement $abonnement): iterable
    {
        $abonnement->load(['entreprise', 'abonnementtype']);

        return [
            'abonnement' => $abonnement,
        ];
    }

    public function name(): ?string
    {
        return 'Détail de l\'abonnement';
    }

    public function description(): ?string
    {
        return 'Fiche complète de l\'abonnement sélectionné';
    }

    public function layout(): iterable
    {
        return [
            Layout::legend('abonnement', [
                Sight::make('entreprise.nom', 'Entreprise'),
                Sight::make('abonnementtype.titre', 'Type d\'abonnement'),
                Sight::make('montant', 'Montant')
                    ->render(fn ($abonnement) =>
                        number_format($abonnement->montant, 2, ',', ' ') . ' ' . $abonnement->devise_label
                    ),
                Sight::make('montant_paye', 'Montant payé')
                    ->render(fn ($abonnement) =>
                        number_format($abonnement->montant_paye, 2, ',', ' ') . ' ' . $abonnement->devise_label
                    ),
                Sight::make('montant_restant', 'Montant restant')
                    ->render(function ($abonnement) {
                        $color = $abonnement->montant_restant > 0 ? 'red' : 'green';
                        $amount = number_format($abonnement->montant_restant, 2, ',', ' ') . ' ' . $abonnement->devise_label;
                        return new HtmlString(
                            '<span style="color:' . $color . '; font-weight:bold;">' . $amount . '</span>'
                        );
                    }),
                Sight::make('devise', 'Devise'),
                Sight::make('date_debut', 'Date de début')
                    ->render(fn ($abonnement) =>
                        $abonnement->date_debut
                            ? $abonnement->date_debut->format('d/m/Y')
                            : '—'
                    ),
                Sight::make('date_fin', 'Date de fin')
                    ->render(function ($abonnement) {
                        if (!$abonnement->date_fin) return '—';
                        
                        $date = $abonnement->date_fin->format('d/m/Y');
                        if ($abonnement->estExpirant()) {
                            $date .= ' <small class="text-warning">(expirant dans ' . $abonnement->joursRestants() . ' jours)</small>';
                        }
                        return new HtmlString($date);
                    }),
                Sight::make('date_echeance', 'Date d\'échéance')
                    ->render(fn ($abonnement) =>
                        $abonnement->date_echeance
                            ? $abonnement->date_echeance->format('d/m/Y')
                            : '—'
                    ),
                Sight::make('date_paiement', 'Date de paiement')
                    ->render(fn ($abonnement) =>
                        $abonnement->date_paiement
                            ? $abonnement->date_paiement->format('d/m/Y')
                            : '—'
                    ),
                Sight::make('statut', 'Statut')
                    ->render(fn ($abonnement) =>
                        new HtmlString(
                            "<span class='badge bg-{$abonnement->statut_color} text-white'>{$abonnement->statut_label}</span>"
                        )
                    ),
                Sight::make('est_actif', 'Actif')
                    ->render(fn ($abonnement) => $abonnement->est_actif ? '✅ Oui' : '❌ Non'),
                Sight::make('renouvellement_auto', 'Renouvellement automatique')
                    ->render(fn ($abonnement) => $abonnement->renouvellement_auto ? '🔄 Oui' : '❌ Non'),
                Sight::make('date_dernier_renouvellement', 'Date du dernier renouvellement')
                    ->render(fn ($abonnement) =>
                        $abonnement->date_dernier_renouvellement
                            ? $abonnement->date_dernier_renouvellement->format('d/m/Y')
                            : '—'
                    ),
                Sight::make('nombre_rappels', 'Nombre de rappels'),
                Sight::make('reference_paiement', 'Référence de paiement'),
                Sight::make('mode_paiement', 'Mode de paiement')
                    ->render(fn ($abonnement) => $abonnement->mode_paiement_label),
                Sight::make('commentaires', 'Commentaires')
                    ->render(fn ($abonnement) =>
                        new HtmlString(nl2br($abonnement->commentaires ?? ''))
                    ),
                Sight::make('created_at', 'Créé le'),
                Sight::make('updated_at', 'Modifié le'),
            ]),
        ];
    }
}
