<?php

namespace App\Orchid\Screens\Plantemplate;

use App\Models\Plantemplate;
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
        // 1. Charger tous les plans templates
        $plantemplates = Plantemplate::with('diagnosticmodule')->get();

        return [
            'plantemplates' => $plantemplates,
        ];
    }

    public function name(): ?string
    {
        return 'Liste des plans templates';
    }

    public function description(): ?string
    {
        return 'Tous les plans templates enregistrés';
    }

    /**
     * Barre d'action (boutons en haut)
     */
    public function commandBar(): iterable
    {
        return [
            Link::make('Créer un plan template')
                ->icon('plus')
                ->route('platform.plantemplate.edit'),
        ];
    }

    public function layout(): iterable
    {
        return [
            Layout::view('screens.plantemplate.list'), 
        ];
    }

    public function toggleEtat(Request $request)
    {
        $plantemplate = Plantemplate::findOrFail($request->input('id'));
        $plantemplate->etat = !$plantemplate->etat;
        $plantemplate->save();

        Alert::info("État modifié.");
        return redirect()->back();
    }

    public function toggleSpotlight(Request $request)
    {
        $plantemplate = Plantemplate::findOrFail($request->input('id'));
        $plantemplate->spotlight = !$plantemplate->spotlight;
        $plantemplate->save();

        Alert::info("Spotlight modifié.");
        return redirect()->back();
    }

    public function delete(Request $request)
    {
        $plantemplate = Plantemplate::findOrFail($request->input('plantemplate'));
        $plantemplate->delete();

        Alert::info("Plan template supprimé.");
        return redirect()->back();
    }
}
