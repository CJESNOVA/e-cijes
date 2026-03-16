<?php

namespace App\Orchid\Screens\Plan;

use App\Models\Plan;
use Orchid\Screen\Screen;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Sight;
use Illuminate\Support\HtmlString;

class ShowScreen extends Screen
{
    public function query(Plan $plan): iterable
    {
        $plan->load(['accompagnement', 'diagnostic', 'diagnosticmodule', 'diagnosticquestion', 'plantemplate']); 

        return [
            'plan' => $plan,
        ];
    }

    public function name(): ?string
    {
        return 'Détail du plan';
    }

    public function description(): ?string
    {
        return 'Fiche complète du plan sélectionnée';
    }

    public function layout(): iterable
    {
        return [
            Layout::legend('plan', [
                Sight::make('dateplan', 'Date du plan'),
                Sight::make('objectif', 'Objectif'),
                Sight::make('actionprioritaire', 'Actions prioritaires')->render(function ($plan) {
                    return new HtmlString($plan->actionprioritaire); // ✅ Affiche HTML sans échapper
                }),
                Sight::make('plantemplate.objectif', 'Modèle de plan')->render(fn($plan) => $plan->plantemplate?->objectif ?? 'Non défini'),
                Sight::make('accompagnement.id', 'Accompagnement'),
                Sight::make('diagnostic.id', 'Diagnostic'),
                Sight::make('diagnosticmodule.titre', 'Module de diagnostic'),
                Sight::make('diagnosticquestion.titre', 'Question de diagnostic'),
                Sight::make('spotlight', 'Spotlight')->render(fn($plan) => $plan->spotlight ? '✅ Actif' : '❌ Inactif'),
                Sight::make('etat', 'État')->render(fn($plan) => $plan->etat ? '✅ Actif' : '❌ Inactif'),
                Sight::make('created_at', 'Créé le'),
                Sight::make('updated_at', 'Modifié le'),
            ]),
        ];
    }
}
