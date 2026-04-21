<?php

namespace App\Orchid\Screens\Abonnement;

use Orchid\Screen\Screen;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Actions\Link;
use Orchid\Support\Facades\Alert;

use App\Models\Abonnement;
use Illuminate\Http\Request;

class AbonnementScreen extends Screen
{
    /**
     * Query data.
     *
     * @return array
     */
    public function query(): iterable
    {
        return [
            'abonnements' => Abonnement::with(['entreprise', 'abonnementtype'])->latest()->paginate(20),
        ];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'Liste des abonnements';
    }

    /**
     * Display header description.
     *
     * @return string|null
     */
    public function description(): ?string
    {
        return 'Gestion des abonnements des entreprises';
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Link::make('Créer un abonnement')
                ->icon('plus')
                ->route('platform.abonnement.edit'),
        ];
    }

    /**
     * Views.
     *
     * @return \Orchid\Screen\Layout[]|string[]
     */
    public function layout(): iterable
    {
        return [
            Layout::view('screens.abonnement.list'), 
        ];
    }

    public function toggleEtat(Request $request)
    {
        $abonnement = Abonnement::findOrFail($request->input('id'));
        $abonnement->etat = !$abonnement->etat;
        $abonnement->save();

        Alert::info("État modifié.");
        return redirect()->back();
    }

    public function delete(Request $request)
    {
        $abonnement = Abonnement::findOrFail($request->input('abonnement'));
        $abonnement->delete();

        Alert::info("Abonnement supprimé.");
        return redirect()->back();
    }

    public function renouveler(Request $request)
    {
        $abonnement = Abonnement::findOrFail($request->input('abonnement'));
        
        if ($abonnement->renouveler()) {
            Alert::success("Abonnement renouvelé avec succès.");
        } else {
            Alert::error("Impossible de renouveler cet abonnement.");
        }
        
        return redirect()->back();
    }

    public function resilier(Request $request)
    {
        $abonnement = Abonnement::findOrFail($request->input('abonnement'));
        
        if ($abonnement->resilier()) {
            Alert::success("Abonnement résilié avec succès.");
        } else {
            Alert::error("Impossible de résilier cet abonnement.");
        }
        
        return redirect()->back();
    }

    public function suspendre(Request $request)
    {
        $abonnement = Abonnement::findOrFail($request->input('abonnement'));
        
        if ($abonnement->suspendre()) {
            Alert::success("Abonnement suspendu avec succès.");
        } else {
            Alert::error("Impossible de suspendre cet abonnement.");
        }
        
        return redirect()->back();
    }

    public function reactiver(Request $request)
    {
        $abonnement = Abonnement::findOrFail($request->input('abonnement'));
        
        if ($abonnement->reactiver()) {
            Alert::success("Abonnement réactivé avec succès.");
        } else {
            Alert::error("Impossible de réactiver cet abonnement.");
        }
        
        return redirect()->back();
    }
}
