<?php

namespace App\Orchid\Screens\Proposition;

use App\Models\Proposition;
use Orchid\Screen\Screen;
use Illuminate\Http\Request;
use Orchid\Support\Facades\Layout;
use Orchid\Support\Facades\Alert;
use Orchid\Screen\Actions\Link;

class ListScreen extends Screen
{
    public function query(): iterable
    {
        return [
            'propositions' => Proposition::with(['membre', 'expert', 'prestation', 'plan', 'accompagnement', 'propositionstatut'])->get(),
        ];
    }

    public function name(): ?string
    {
        return 'Liste des propositions';
    }

    public function description(): ?string
    {
        return 'Toutes les propositions enregistrées';
    }

    /**
     * Barre d'action (boutons en haut)
     */
    public function commandBar(): iterable
    {
        return [
            Link::make('Créer une proposition')
                ->icon('plus')
                ->route('platform.proposition.edit'),
        ];
    }

    public function layout(): iterable
    {
        return [
            Layout::view('screens.proposition.list'), 
        ];
    }

    public function toggleEtat(Request $request)
    {
        $proposition = Proposition::findOrFail($request->input('id'));
        $proposition->etat = !$proposition->etat;
        $proposition->save();

        Alert::info("État modifié.");
        return redirect()->back();
    }

    public function toggleSpotlight(Request $request)
    {
        $proposition = Proposition::findOrFail($request->input('id'));
        $proposition->spotlight = !$proposition->spotlight;
        $proposition->save();

        Alert::info("Spotlight modifié.");
        return redirect()->back();
    }

    public function delete(Request $request)
    {
        $proposition = Proposition::findOrFail($request->input('proposition'));
        $proposition->delete();

        Alert::info("Proposition supprimée.");
        return redirect()->back();
    }
}
