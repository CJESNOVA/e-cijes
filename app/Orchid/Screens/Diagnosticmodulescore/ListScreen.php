<?php

namespace App\Orchid\Screens\Diagnosticmodulescore;

use App\Models\Diagnosticmodulescore;
use App\Models\Diagnostic;
use App\Models\Diagnosticmodule;

use Orchid\Screen\Screen;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Layouts\Table;
use Orchid\Screen\TD;
use Orchid\Support\Facades\Layout;
use Orchid\Support\Facades\Alert;
use Illuminate\Http\Request;

class ListScreen extends Screen
{
    public function query(): iterable
    {
        return [
            'diagnosticmodulescores' => Diagnosticmodulescore::with(['diagnostic', 'diagnosticmodule', 'diagnosticblocstatut'])
                ->orderBy('created_at', 'desc')
                ->paginate(),
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
            Layout::table('diagnosticmodulescores', [
                TD::make('id', 'ID')
                    ->width('80')
                    ->sort(),
                    
                TD::make('diagnostic', 'Diagnostic')
                    ->width('200')
                    ->sort()
                    ->filter(TD::FILTER_TEXT)
                    ->render(fn (Diagnosticmodulescore $score) => 
                        $score->diagnostic ? $score->diagnostic->getNomCompletAttribute() : '—'
                    ),
                    
                TD::make('diagnosticmodule.titre', 'Module')
                    ->width('200')
                    ->sort()
                    ->filter(TD::FILTER_TEXT),
                    
                TD::make('score_total', 'Score total')
                    ->width('100')
                    ->alignCenter()
                    ->sort(),
                    
                TD::make('score_max', 'Score max')
                    ->width('100')
                    ->alignCenter()
                    ->sort(),
                    
                TD::make('score_pourcentage', 'Score %')
                    ->width('100')
                    ->alignCenter()
                    ->render(fn (Diagnosticmodulescore $score) => 
                        $score->score_pourcentage ? $score->score_pourcentage . '%' : '—'
                    ),
                    
                TD::make('niveau', 'Niveau')
                    ->width('100')
                    ->alignCenter()
                    ->sort(),
                    
                TD::make('diagnosticblocstatut.titre', 'Statut de bloc')
                    ->width('150')
                    ->sort()
                    ->filter(TD::FILTER_TEXT)
                    ->render(fn (Diagnosticmodulescore $score) => 
                        $score->diagnosticblocstatut ? $score->diagnosticblocstatut->titre : '—'
                    ),
                    
                TD::make('created_at', 'Créé le')
                    ->width('150')
                    ->render(fn (Diagnosticmodulescore $score) => 
                        $score->created_at ? $score->created_at->format('d/m/Y H:i') : '—'
                    )
                    ->sort(),
                    
                TD::make('Actions')
                    ->width('100')
                    ->alignCenter()
                    ->render(fn (Diagnosticmodulescore $score) => 
                        Link::make('Voir')
                            ->icon('bs.eye')
                            ->route('platform.diagnosticmodulescore.show', $score)
                    ),
            ]),
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
