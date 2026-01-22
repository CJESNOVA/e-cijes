<?php

namespace App\Orchid\Screens\Proposition;

use App\Models\Proposition;
use Illuminate\Support\Facades\Storage;
use Orchid\Screen\Screen;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Sight;
use Illuminate\Support\HtmlString;

class ShowScreen extends Screen
{
    public function query(Proposition $proposition): iterable
    {
        $proposition->load(['membre', 'expert', 'prestation', 'plan', 'accompagnement', 'propositionstatut']); 

        return [
            'proposition' => $proposition,
        ];
    }

    public function name(): ?string
    {
        return 'Détail de la proposition';
    }

    public function description(): ?string
    {
        return 'Fiche complète de la proposition sélectionnée';
    }

    public function layout(): iterable
    {
        return [
            Layout::legend('proposition', [
                Sight::make('membre.nom_complet', 'Membre'),
                Sight::make('expert.domaine', 'Expert'),
                Sight::make('prestation.titre', 'Prestation'),
                Sight::make('plan.objectif', 'Plan d\'accompagnement'),
                Sight::make('accompagnement.titre', 'Accompagnement'),
                Sight::make('message', 'Message')->render(function ($proposition) {
                    return new HtmlString($proposition->message);
                }),
                Sight::make('prix_propose', 'Prix proposé'),
                Sight::make('duree_prevue', 'Durée prévue (jours)'),
                Sight::make('propositionstatut.titre', 'Statut'),
                Sight::make('date_proposition', 'Date de proposition'),
                Sight::make('date_expiration', 'Date d\'expiration'),
                Sight::make('spotlight', 'Spotlight')->render(fn($proposition) => $proposition->spotlight ? '✅ Actif' : '❌ Inactif'),
                Sight::make('etat', 'État')->render(fn($proposition) => $proposition->etat ? '✅ Actif' : '❌ Inactif'),
                Sight::make('created_at', 'Créé le'),
                Sight::make('updated_at', 'Modifié le'),
            ]),
        ];
    }
}
