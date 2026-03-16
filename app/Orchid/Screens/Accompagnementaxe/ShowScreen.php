<?php

namespace App\Orchid\Screens\Accompagnementaxe;

use App\Models\Accompagnementaxe;

use Orchid\Screen\Screen;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Sight;
use Illuminate\Support\HtmlString;

class ShowScreen extends Screen
{
    public function query(Accompagnementaxe $accompagnementaxe): iterable
    {
        $accompagnementaxe->load(['diagnosticmodule']); 

        return [
            'accompagnementaxe' => $accompagnementaxe,
        ];
    }

    public function name(): ?string
    {
        return 'Détail de l\'axe d\'accompagnement';
    }

    public function description(): ?string
    {
        return 'Fiche complète de l\'axe d\'accompagnement sélectionnée';
    }

    public function layout(): iterable
    {
        return [
            Layout::legend('accompagnementaxe', [
                Sight::make('titre', 'Titre'),
                Sight::make('description', 'Description')->render(function ($accompagnementaxe) {
                    return new HtmlString($accompagnementaxe->description); // ✅ Affiche HTML sans échapper
                }),
                Sight::make('diagnosticmodule.titre', 'Module de diagnostic'),
                Sight::make('spotlight', 'Spotlight')->render(fn($accompagnementaxe) => $accompagnementaxe->spotlight ? '✅ Actif' : '❌ Inactif'),
                Sight::make('etat', 'État')->render(fn($accompagnementaxe) => $accompagnementaxe->etat ? '✅ Actif' : '❌ Inactif'),
                Sight::make('created_at', 'Créé le'),
                Sight::make('updated_at', 'Modifié le'),
            ]),
        ];
    }
}
