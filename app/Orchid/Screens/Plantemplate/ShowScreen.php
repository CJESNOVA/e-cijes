<?php

namespace App\Orchid\Screens\Plantemplate;

use App\Models\Plantemplate;

use Orchid\Screen\Screen;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Sight;
use Illuminate\Support\HtmlString;

class ShowScreen extends Screen
{
    public function query(Plantemplate $plantemplate): iterable
    {
        $plantemplate->load(['diagnosticmodule']); 

        return [
            'plantemplate' => $plantemplate,
        ];
    }

    public function name(): ?string
    {
        return 'Détail du plan template';
    }

    public function description(): ?string
    {
        return 'Fiche complète du plan template sélectionné';
    }

    public function layout(): iterable
    {
        return [
            Layout::legend('plantemplate', [
                Sight::make('niveau', 'Niveau'),
                Sight::make('objectif', 'Objectif'),
                Sight::make('actionprioritaire', 'Action prioritaire')->render(function ($plantemplate) {
                    return new HtmlString($plantemplate->actionprioritaire); // ✅ Affiche HTML sans échapper
                }),
                Sight::make('priorite', 'Priorité'),
                Sight::make('diagnosticmodule.titre', 'Module de diagnostic'),
                Sight::make('spotlight', 'Spotlight')->render(fn($plantemplate) => $plantemplate->spotlight ? '✅ Actif' : '❌ Inactif'),
                Sight::make('etat', 'État')->render(fn($plantemplate) => $plantemplate->etat ? '✅ Actif' : '❌ Inactif'),
                Sight::make('created_at', 'Créé le'),
                Sight::make('updated_at', 'Modifié le'),
            ]),
        ];
    }
}
