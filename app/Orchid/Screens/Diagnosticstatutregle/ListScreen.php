<?php

namespace App\Orchid\Screens\Diagnosticstatutregle;

use App\Models\Diagnosticstatutregle;
use App\Models\Diagnosticstatut;
use App\Models\Entrepriseprofil;
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
            'diagnosticstatutregles' => Diagnosticstatutregle::with('entrepriseprofil')
                ->orderBy('entrepriseprofil_id')
                ->orderBy('score_total_min')
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
        return 'Règles de Statuts';
    }

    /**
     * Display header description.
     *
     * @return string|null
     */
    public function description(): ?string
    {
        return 'Gestion des règles de calcul des statuts de diagnostics';
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Link::make('Ajouter une règle')
                ->icon('bs.plus-circle')
                ->route('platform.diagnosticstatutregle.create'),
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
            Layout::table('diagnosticstatutregles', [
                TD::make('id', 'ID')
                    ->width('80')
                    ->sort(),
                    
                TD::make('entrepriseprofil.titre', 'Profil d\'entreprise')
                    ->width('150')
                    ->sort()
                    ->filter(TD::FILTER_TEXT),
                    
                TD::make('score_total_min', 'Score min')
                    ->width('100')
                    ->alignCenter()
                    ->sort(),
                    
                TD::make('score_total_max', 'Score max')
                    ->width('100')
                    ->alignCenter()
                    ->sort(),
                    
                TD::make('min_blocs_score', 'Min blocs')
                    ->width('100')
                    ->alignCenter()
                    ->render(fn (Diagnosticstatutregle $regle) => $regle->min_blocs_score ?? '—'),
                    
                TD::make('min_score_bloc', 'Min score/bloc')
                    ->width('120')
                    ->alignCenter()
                    ->render(fn (Diagnosticstatutregle $regle) => $regle->min_score_bloc ?? '—'),
                    
                TD::make('bloc_juridique_min', 'Juridique min')
                    ->width('120')
                    ->alignCenter()
                    ->render(fn (Diagnosticstatutregle $regle) => $regle->bloc_juridique_min ?? '—'),
                    
                TD::make('bloc_finance_min', 'Finance min')
                    ->width('120')
                    ->alignCenter()
                    ->render(fn (Diagnosticstatutregle $regle) => $regle->bloc_finance_min ?? '—'),
                    
                TD::make('duree_min_mois', 'Durée min')
                    ->width('100')
                    ->alignCenter()
                    ->render(fn (Diagnosticstatutregle $regle) => $regle->duree_min_mois . ' mois'),
                    
                TD::make('created_at', 'Créé le')
                    ->width('150')
                    ->render(fn (Diagnosticstatutregle $regle) => 
                        $regle->created_at ? $regle->created_at->format('d/m/Y H:i') : '—'
                    )
                    ->sort(),
                    
                TD::make('Actions')
                    ->width('100')
                    ->alignCenter()
                    ->render(fn (Diagnosticstatutregle $regle) => 
                        Link::make('Voir')
                            ->icon('bs.eye')
                            ->route('platform.diagnosticstatutregle.show', $regle)
                    ),
            ]),
        ];
    }

    public function delete(Request $request)
    {
        $regle = Diagnosticstatutregle::findOrFail($request->input('diagnosticstatutregle'));
        $regle->delete();

        Alert::info("Règle de statut supprimée.");
        return redirect()->back();
    }
}
