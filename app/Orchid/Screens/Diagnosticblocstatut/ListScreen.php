<?php

namespace App\Orchid\Screens\Diagnosticblocstatut;

use App\Models\Diagnosticblocstatut;
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
            'diagnosticblocstatuts' => Diagnosticblocstatut::orderBy('code', 'asc')->paginate(),
        ];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'Statuts de Blocs';
    }

    /**
     * Display header description.
     *
     * @return string|null
     */
    public function description(): ?string
    {
        return 'Gestion des statuts de blocs de diagnostics';
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Link::make('Ajouter un statut')
                ->icon('bs.plus-circle')
                ->route('platform.diagnosticblocstatut.create'),
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
            Layout::table('diagnosticblocstatuts', [
                TD::make('id', 'ID')
                    ->width('80')
                    ->sort(),
                    
                TD::make('code', 'Code')
                    ->width('120')
                    ->sort()
                    ->filter(TD::FILTER_TEXT)
                    ->render(fn (Diagnosticblocstatut $statut) => 
                        Link::make($statut->code)
                            ->route('platform.diagnosticblocstatut.edit', $statut)
                    ),
                    
                TD::make('titre', 'Titre')
                    ->width('250')
                    ->sort()
                    ->filter(TD::FILTER_TEXT),
                    
                TD::make('description', 'Description')
                    ->width('300')
                    ->render(fn (Diagnosticblocstatut $statut) => 
                        $statut->description 
                            ? substr(strip_tags($statut->description), 0, 100) . '...' 
                            : '—'
                    ),
                    
                TD::make('created_at', 'Créé le')
                    ->width('150')
                    ->render(fn (Diagnosticblocstatut $statut) => 
                        $statut->created_at ? $statut->created_at->format('d/m/Y H:i') : '—'
                    )
                    ->sort(),
                    
                TD::make('Actions')
                    ->width('100')
                    ->alignCenter()
                    ->render(fn (Diagnosticblocstatut $statut) => 
                        Link::make('Voir')
                            ->icon('bs.eye')
                            ->route('platform.diagnosticblocstatut.show', $statut)
                    ),
            ]),
        ];
    }

    public function delete(Request $request)
    {
        $statut = Diagnosticblocstatut::findOrFail($request->input('diagnosticblocstatut'));
        $statut->delete();

        Alert::info("Statut de bloc supprimé.");
        return redirect()->back();
    }
}
