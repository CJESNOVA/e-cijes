<?php

namespace App\Orchid\Screens\Propositionstatut;

use App\Models\Propositionstatut;
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
            'propositionstatuts' => Propositionstatut::all(),
        ];
    }

    public function name(): ?string
    {
        return 'Liste des statuts de propositions';
    }

    public function description(): ?string
    {
        return 'Tous les statuts de propositions enregistrés';
    }

    /**
     * Barre d'action (boutons en haut)
     */
    public function commandBar(): iterable
    {
        return [
            Link::make('Créer un statut')
                ->icon('plus')
                ->route('platform.propositionstatut.edit'),
        ];
    }

    public function layout(): iterable
    {
        return [
            Layout::view('screens.propositionstatut.list'), 
        ];
    }

    public function toggleEtat(Request $request)
    {
        $propositionstatut = Propositionstatut::findOrFail($request->input('id'));
        $propositionstatut->etat = !$propositionstatut->etat;
        $propositionstatut->save();

        Alert::info("État modifié.");
        return redirect()->back();
    }

    public function delete(Request $request)
    {
        $propositionstatut = Propositionstatut::findOrFail($request->input('propositionstatut'));
        $propositionstatut->delete();

        Alert::info("Statut de proposition supprimé.");
        return redirect()->back();
    }
}
