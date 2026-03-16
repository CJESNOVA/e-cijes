<?php

namespace App\Orchid\Screens\Cotisation;

use Orchid\Screen\Screen;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\DateTimer;
use Orchid\Screen\Fields\TextArea;
use Orchid\Screen\Fields\Select;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Actions\Link;
use Orchid\Support\Facades\Alert;

use App\Models\Cotisation;
use App\Models\Entreprise;
use App\Models\Cotisationtype;
use Illuminate\Http\Request;

class CotisationScreen extends Screen
{
    /**
     * Query data.
     *
     * @return array
     */
    public function query(): iterable
    {
        return [
            'cotisations' => Cotisation::with(['entreprise', 'cotisationtype'])->latest()->paginate(20),
        ];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'Liste des cotisations';
    }

    /**
     * Display header description.
     *
     * @return string|null
     */
    public function description(): ?string
    {
        return 'Gestion des cotisations des entreprises';
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Link::make('Créer une cotisation')
                ->icon('plus')
                ->route('platform.cotisation.edit'),
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
            Layout::view('screens.cotisation.list'), 
        ];
    }

    public function toggleEtat(Request $request)
    {
        $cotisation = Cotisation::findOrFail($request->input('id'));
        $cotisation->etat = !$cotisation->etat;
        $cotisation->save();

        Alert::info("État modifié.");
        return redirect()->back();
    }

    public function delete(Request $request)
    {
        $cotisation = Cotisation::findOrFail($request->input('cotisation'));
        $cotisation->delete();

        Alert::info("Cotisation supprimée.");
        return redirect()->back();
    }
}
