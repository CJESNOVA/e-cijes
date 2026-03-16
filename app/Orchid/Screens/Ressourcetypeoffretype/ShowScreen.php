<?php

namespace App\Orchid\Screens\Ressourcetypeoffretype;

use App\Models\Ressourcetypeoffretype;
use Orchid\Screen\Screen;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Sight;
use Illuminate\Support\HtmlString;

class ShowScreen extends Screen
{
    public function query(Ressourcetypeoffretype $ressourcetypeoffretype): iterable
    {
        $ressourcetypeoffretype->load(['ressourcetype', 'offretype']);

        return [
            'ressourcetypeoffretype' => $ressourcetypeoffretype,
        ];
    }

    public function name(): ?string
    {
        return 'Détail de l\'association';
    }

    public function description(): ?string
    {
        return 'Fiche complète de l\'association ressource-type';
    }

    public function layout(): iterable
    {
        return [
            Layout::legend('ressourcetypeoffretype', [
                Sight::make('id', 'ID'),
                Sight::make('ressourcetype.titre', 'Type de ressource')
                    ->render(fn($ressourcetypeoffretype) => $ressourcetypeoffretype->ressourcetype ? $ressourcetypeoffretype->ressourcetype->titre : '—'),
                Sight::make('offre_type_nom', 'Type d\'offre'),
                Sight::make('type_offre_nom_complet', 'Type concret'),
                Sight::make('table_id', 'ID du type concret'),
                Sight::make('spotlight', 'Spotlight')->render(fn($ressourcetypeoffretype) => $ressourcetypeoffretype->spotlight ? '✅ Actif' : '❌ Inactif'),
                Sight::make('etat', 'État')->render(fn($ressourcetypeoffretype) => $ressourcetypeoffretype->etat ? '✅ Actif' : '❌ Inactif'),
                Sight::make('created_at', 'Créé le'),
                Sight::make('updated_at', 'Modifié le'),
            ]),
        ];
    }
}
