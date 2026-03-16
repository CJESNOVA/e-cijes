<?php

namespace App\Orchid\Screens\Accompagnementaxe;

use App\Models\Accompagnementaxe;
use App\Models\Diagnosticmodule;

use Orchid\Screen\Screen;
use Illuminate\Http\Request;
use Orchid\Support\Facades\Layout;
use Orchid\Support\Facades\Alert;
use Orchid\Screen\Actions\Link;

class ListScreen extends Screen
{
    public function query(): iterable
    {
        // 1. Charger toutes les axes d'accompagnement
        $accompagnementaxes = Accompagnementaxe::with('diagnosticmodule')->get();

        return [
            'accompagnementaxes' => $accompagnementaxes,
        ];
    }

    public function name(): ?string
    {
        return 'Liste des axes d\'accompagnement';
    }

    public function description(): ?string
    {
        return 'Tous les axes d\'accompagnement enregistrés';
    }

    /**
     * Barre d'action (boutons en haut)
     */
    public function commandBar(): iterable
    {
        return [
            Link::make('Créer un axe d\'accompagnement')
                ->icon('plus')
                ->route('platform.accompagnementaxe.edit'),
        ];
    }

    public function layout(): iterable
    {
        return [
            Layout::view('screens.accompagnementaxe.list'), 
        ];
    }

    public function toggleEtat(Request $request)
    {
        $accompagnementaxe = Accompagnementaxe::findOrFail($request->input('id'));
        $accompagnementaxe->etat = !$accompagnementaxe->etat;
        $accompagnementaxe->save();

        Alert::info("État modifié.");
        return redirect()->back();
    }

    public function toggleSpotlight(Request $request)
    {
        $accompagnementaxe = Accompagnementaxe::findOrFail($request->input('id'));
        $accompagnementaxe->spotlight = !$accompagnementaxe->spotlight;
        $accompagnementaxe->save();

        Alert::info("Spotlight modifié.");
        return redirect()->back();
    }

    public function delete(Request $request)
    {
        $accompagnementaxe = Accompagnementaxe::findOrFail($request->input('accompagnementaxe'));
        $accompagnementaxe->delete();

        Alert::info("Axe d'accompagnement supprimé.");
        return redirect()->back();
    }
}
