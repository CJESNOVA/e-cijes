<?php

namespace App\Orchid\Screens\Diagnosticmodulescore;

use App\Models\Diagnosticmodulescore;
use App\Models\Diagnostic;
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
        // 1. Charger tous les scores de modules
        $diagnosticmodulescores = Diagnosticmodulescore::with(['diagnostic', 'diagnosticmodule'])->get();

        return [
            'diagnosticmodulescores' => $diagnosticmodulescores,
        ];
    }

    public function name(): ?string
    {
        return 'Liste des scores des modules de diagnostics';
    }

    public function description(): ?string
    {
        return 'Tous les scores des modules de diagnostics enregistrés';
    }

    /**
     * Barre d'action (boutons en haut)
     */
    public function commandBar(): iterable
    {
        return [
            Link::make('Créer un score de module')
                ->icon('plus')
                ->route('platform.diagnosticmodulescore.edit'),
        ];
    }

    public function layout(): iterable
    {
        return [
            Layout::view('screens.diagnosticmodulescore.list'), 
        ];
    }

    public function delete(Request $request)
    {
        $diagnosticmodulescore = Diagnosticmodulescore::findOrFail($request->input('diagnosticmodulescore'));
        $diagnosticmodulescore->delete();

        Alert::info("Score de module de diagnostic supprimé.");
        return redirect()->back();
    }
}
