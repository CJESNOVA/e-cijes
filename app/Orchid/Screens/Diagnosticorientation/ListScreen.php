<?php

namespace App\Orchid\Screens\Diagnosticorientation;

use App\Models\Diagnosticorientation;
use App\Models\Diagnosticmodule;
use App\Models\Diagnosticstatut;
use Orchid\Screen\Screen;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Layouts\Table;
use Orchid\Screen\TD;
use Orchid\Support\Facades\Layout;
use Orchid\Support\Facades\Alert;
use Illuminate\Http\Request;

class ListScreen extends Screen
{
    /**
     * Query data.
     *
     * @return array
     */
    public function query(): iterable
    {
        return [
            'diagnosticorientations' => Diagnosticorientation::with(['diagnosticmodule', 'diagnosticblocstatut'])
                ->orderBy('diagnosticmodule_id')
                ->orderBy('diagnosticblocstatut_id')
                ->orderBy('seuil_max')
                ->paginate(),
        ];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'Orientations';
    }

    /**
     * Display header description.
     *
     * @return string|null
     */
    public function description(): ?string
    {
        return 'Gestion des orientations selon les statuts et seuils';
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Link::make('Ajouter une orientation')
                ->icon('bs.plus-circle')
                ->route('platform.diagnosticorientation.create'),
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
            Layout::table('diagnosticorientations', [
                TD::make('id', 'ID')
                    ->width('80')
                    ->sort(),
                    
                TD::make('diagnosticmodule.titre', 'Module')
                    ->width('200')
                    ->sort()
                    ->filter(TD::FILTER_TEXT),
                    
                TD::make('diagnosticblocstatut.titre', 'Statut de bloc')
                    ->width('150')
                    ->sort()
                    ->filter(TD::FILTER_TEXT),
                    
                TD::make('seuil_max', 'Seuil maximum')
                    ->width('120')
                    ->alignCenter()
                    ->sort(),
                    
                TD::make('dispositif', 'Dispositif')
                    ->width('250')
                    ->sort()
                    ->filter(TD::FILTER_TEXT),
                    
                TD::make('created_at', 'Créé le')
                    ->width('150')
                    ->render(fn (Diagnosticorientation $orientation) => 
                        $orientation->created_at ? $orientation->created_at->format('d/m/Y H:i') : '—'
                    )
                    ->sort(),
                    
                TD::make('Actions')
                    ->width('100')
                    ->alignCenter()
                    ->render(fn (Diagnosticorientation $orientation) => 
                        Link::make('Voir')
                            ->icon('bs.eye')
                            ->route('platform.diagnosticorientation.show', $orientation)
                    ),
            ]),
        ];
    }

    public function delete(Request $request)
    {
        $orientation = Diagnosticorientation::findOrFail($request->input('diagnosticorientation'));
        $orientation->delete();

        Alert::info("Orientation supprimée.");
        return redirect()->back();
    }
}
