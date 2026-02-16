<?php

namespace App\Orchid\Screens\Diagnosticevolution;

use App\Models\Diagnosticevolution;
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
            'diagnosticevolutions' => Diagnosticevolution::with(['entreprise', 'diagnostic', 'diagnosticstatut', 'entrepriseprofil'])
                ->orderBy('created_at', 'desc')
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
        return 'Évolutions de Diagnostics';
    }

    /**
     * Display header description.
     *
     * @return string|null
     */
    public function description(): ?string
    {
        return 'Historique des évolutions et changements de statuts des diagnostics';
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Link::make('Ajouter une évolution')
                ->icon('bs.plus-circle')
                ->route('platform.diagnosticevolution.edit'),
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
            Layout::table('diagnosticevolutions', [
                TD::make('id', 'ID')
                    ->width('80')
                    ->sort(),
                    
                TD::make('entreprise.nom_complet', 'Entreprise')
                    ->width('200')
                    ->sort()
                    ->filter(TD::FILTER_TEXT),
                    
                TD::make('score_global', 'Score global')
                    ->width('100')
                    ->alignCenter()
                    ->sort()
                    ->render(fn (Diagnosticevolution $evolution) => 
                        '<span class="badge bg-' . ($evolution->score_global >= 70 ? 'success' : ($evolution->score_global >= 50 ? 'warning' : 'danger')) . '">' . $evolution->score_global . '</span>'
                    ),
                    
                TD::make('diagnosticstatut.titre', 'Statut')
                    ->width('150')
                    ->sort()
                    ->filter(TD::FILTER_TEXT)
                    ->render(fn (Diagnosticevolution $evolution) => 
                        '<span class="badge bg-info">' . ($evolution->diagnosticstatut ? $evolution->diagnosticstatut->titre : 'Non défini') . '</span>'
                    ),
                    
                TD::make('entrepriseprofil.titre', 'Profil')
                    ->width('150')
                    ->sort()
                    ->filter(TD::FILTER_TEXT),
                    
                TD::make('diagnostic_precedent_id', 'Diagnostic précédent')
                    ->width('120')
                    ->alignCenter()
                    ->render(fn (Diagnosticevolution $evolution) => 
                        $evolution->diagnostic_precedent_id ? '<span class="badge bg-secondary">#' . $evolution->diagnostic_precedent_id . '</span>' : '<span class="badge bg-light">Initial</span>'
                    ),
                    
                TD::make('commentaire', 'Commentaire')
                    ->width('200')
                    ->render(fn (Diagnosticevolution $evolution) => 
                        $evolution->commentaire ? substr($evolution->commentaire, 0, 50) . (strlen($evolution->commentaire) > 50 ? '...' : '') : '—'
                    ),
                    
                TD::make('created_at', 'Date')
                    ->width('150')
                    ->render(fn (Diagnosticevolution $evolution) => 
                        $evolution->created_at ? $evolution->created_at->format('d/m/Y H:i') : '—'
                    )
                    ->sort(),
                    
                TD::make('Actions')
                    ->width('100')
                    ->alignCenter()
                    ->render(fn (Diagnosticevolution $evolution) => 
                        Link::make('Voir')
                            ->icon('bs.eye')
                            ->route('platform.diagnosticevolution.show', $evolution)
                    ),
            ]),
        ];
    }

    public function delete(Request $request)
    {
        Diagnosticevolution::findOrFail($request->get('id'))->delete();
        
        Alert::info('L\'évolution a été supprimée avec succès.');
        
        return redirect()->route('platform.diagnosticevolution.list');
    }
}
