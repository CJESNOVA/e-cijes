<?php

namespace App\Orchid\Screens\Ressourcetypeoffretype;

use App\Models\Ressourcetypeoffretype;
use Orchid\Screen\Screen;
use Orchid\Screen\TD;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Actions\Button;
use Orchid\Support\Facades\Layout;
use Orchid\Support\Facades\Alert;
use Illuminate\Http\Request;

class ListScreen extends Screen
{
    public function query(): iterable
    {
        return [
            'ressourcetypeoffretypes' => Ressourcetypeoffretype::with(['ressourcetype', 'offretype'])
                ->latest()
                ->paginate(20),
        ];
    }

    public function name(): ?string
    {
        return 'Liste des associations ressources-types';
    }

    public function description(): ?string
    {
        return 'Association des types de ressources aux types d\'offres';
    }

    public function commandBar(): iterable
    {
        return [
            Link::make('Créer une association')
                ->icon('plus')
                ->route('platform.ressourcetypeoffretype.edit'),
        ];
    }

    public function layout(): iterable
    {
        return [
            Layout::table('ressourcetypeoffretypes', [
                TD::make('id', 'ID')->sort(),
                
                TD::make('ressourcetype.titre', 'Type de ressource')
                    ->render(function (Ressourcetypeoffretype $ressourcetypeoffretype) {
                        return $ressourcetypeoffretype->ressourcetype ? 
                            $ressourcetypeoffretype->ressourcetype->titre : '—';
                    }),

                TD::make('offre_type_nom', "Type d'offre")
                    ->render(function (Ressourcetypeoffretype $ressourcetypeoffretype) {
                        return $ressourcetypeoffretype->offre_type_nom;
                    }),

                TD::make('type_offre_nom_complet', 'Type concret')
                    ->render(function (Ressourcetypeoffretype $ressourcetypeoffretype) {
                        return $ressourcetypeoffretype->type_offre_nom_complet;
                    }),

                TD::make('spotlight', 'Spotlight')
                    ->render(function (Ressourcetypeoffretype $ressourcetypeoffretype) {
                        return $ressourcetypeoffretype->spotlight ? '✅' : '❌';
                    }),

                TD::make('etat', 'État')
                    ->render(function (Ressourcetypeoffretype $ressourcetypeoffretype) {
                        return $ressourcetypeoffretype->etat ? '✅' : '❌';
                    }),

                TD::make('Actions')
                    ->align(TD::ALIGN_CENTER)
                    ->width('200px')
                    ->render(function (Ressourcetypeoffretype $ressourcetypeoffretype) {
                        return Link::make('Voir')
                            ->icon('eye')
                            ->route('platform.ressourcetypeoffretype.show', $ressourcetypeoffretype)
                            . ' ' .
                        Link::make('Modifier')
                            ->icon('pencil')
                            ->route('platform.ressourcetypeoffretype.edit', $ressourcetypeoffretype);
                    }),
            ]),
        ];
    }

    public function toggleEtat(Request $request)
    {
        $ressourcetypeoffretype = Ressourcetypeoffretype::findOrFail($request->input('id'));
        $ressourcetypeoffretype->etat = !$ressourcetypeoffretype->etat;
        $ressourcetypeoffretype->save();

        Alert::info("État modifié.");
        return redirect()->back();
    }

    public function toggleSpotlight(Request $request)
    {
        $ressourcetypeoffretype = Ressourcetypeoffretype::findOrFail($request->input('id'));
        $ressourcetypeoffretype->spotlight = !$ressourcetypeoffretype->spotlight;
        $ressourcetypeoffretype->save();

        Alert::info("Spotlight modifié.");
        return redirect()->back();
    }

    public function delete(Request $request)
    {
        $ressourcetypeoffretype = Ressourcetypeoffretype::findOrFail($request->input('ressourcetypeoffretype'));
        $ressourcetypeoffretype->delete();

        Alert::info("Association supprimée.");
        return redirect()->back();
    }
}
