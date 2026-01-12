<?php

namespace App\Orchid\Screens\Cotisation;

use Orchid\Screen\Screen;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Sight;
use Illuminate\Support\HtmlString;

use App\Models\Cotisation;
use App\Models\Entreprise;
use App\Models\Cotisationtype;

class ShowScreen extends Screen
{
    public function query(Cotisation $cotisation): iterable
    {
        $cotisation->load(['entreprise', 'cotisationtype']);

        return [
            'cotisation' => $cotisation,
        ];
    }

    public function name(): ?string
    {
        return 'Détail de la cotisation';
    }

    public function description(): ?string
    {
        return 'Fiche complète de la cotisation sélectionnée';
    }

    public function layout(): iterable
    {
        return [
            Layout::legend('cotisation', [
                Sight::make('entreprise.nom', 'Entreprise'),
                Sight::make('cotisationtype.titre', 'Type de cotisation'),
                Sight::make('montant', 'Montant')
                    ->render(fn ($cotisation) =>
                        number_format($cotisation->montant, 2, ',', ' ') . ' ' . $cotisation->devise_label
                    ),
                Sight::make('montant_paye', 'Montant payé')
                    ->render(fn ($cotisation) =>
                        number_format($cotisation->montant_paye, 2, ',', ' ') . ' ' . $cotisation->devise_label
                    ),
                Sight::make('montant_restant', 'Montant restant')
                    ->render(function ($cotisation) {
                        $color = $cotisation->montant_restant > 0 ? 'red' : 'green';
                        $amount = number_format($cotisation->montant_restant, 2, ',', ' ') . ' ' . $cotisation->devise_label;
                        return new HtmlString(
                            '<span style="color:' . $color . '; font-weight:bold;">' . $amount . '</span>'
                        );
                    }),
                Sight::make('devise', 'Devise'),
                Sight::make('date_debut', 'Date de début')
                    ->render(fn ($cotisation) =>
                        $cotisation->date_debut
                            ? $cotisation->date_debut->format('d/m/Y')
                            : '—'
                    ),
                Sight::make('date_fin', 'Date de fin')
                    ->render(fn ($cotisation) =>
                        $cotisation->date_fin
                            ? $cotisation->date_fin->format('d/m/Y')
                            : '—'
                    ),
                Sight::make('date_echeance', 'Date d\'échéance')
                    ->render(fn ($cotisation) =>
                        $cotisation->date_echeance
                            ? $cotisation->date_echeance->format('d/m/Y')
                            : '—'
                    ),
                Sight::make('date_paiement', 'Date de paiement')
                    ->render(fn ($cotisation) =>
                        $cotisation->date_paiement
                            ? $cotisation->date_paiement->format('d/m/Y')
                            : '—'
                    ),
                Sight::make('statut', 'Statut')
                    ->render(fn ($cotisation) =>
                        new HtmlString(
                            "<span class='badge bg-{$cotisation->statut_color} text-white'>{$cotisation->statut_label}</span>"
                        )
                    ),
                Sight::make('est_a_jour', 'À jour')
                    ->render(fn ($cotisation) => $cotisation->est_a_jour ? '✅ Oui' : '❌ Non'),
                Sight::make('nombre_rappels', 'Nombre de rappels'),
                Sight::make('reference_paiement', 'Référence de paiement'),
                Sight::make('mode_paiement', 'Mode de paiement')
                    ->render(fn ($cotisation) => $cotisation->mode_paiement_label),
                Sight::make('commentaires', 'Commentaires')
                    ->render(fn ($cotisation) =>
                        new HtmlString(nl2br($cotisation->commentaires ?? ''))
                    ),
                Sight::make('created_at', 'Créé le'),
                Sight::make('updated_at', 'Modifié le'),
            ]),
        ];
    }
}
