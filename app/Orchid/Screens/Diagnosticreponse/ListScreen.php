<?php

namespace App\Orchid\Screens\Diagnosticreponse;

use App\Models\Diagnosticreponse;
use App\Models\Diagnosticquestion;
use App\Models\Langue;
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
            'diagnosticreponses' => Diagnosticreponse::with(['diagnosticquestion', 'langue'])
                ->orderBy('position', 'asc')
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
        return 'Réponses de Diagnostics';
    }

    /**
     * Display header description.
     *
     * @return string|null
     */
    public function description(): ?string
    {
        return 'Gestion des réponses de diagnostics';
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Link::make('Ajouter une réponse')
                ->icon('bs.plus-circle')
                ->route('platform.diagnosticreponse.create'),
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
            Layout::table('diagnosticreponses', [
                TD::make('id', 'ID')
                    ->width('80')
                    ->sort(),
                    
                TD::make('titre', 'Titre')
                    ->width('200')
                    ->sort()
                    ->filter(TD::FILTER_TEXT)
                    ->render(fn (Diagnosticreponse $reponse) => 
                        Link::make($reponse->titre)
                            ->route('platform.diagnosticreponse.edit', $reponse)
                    ),
                    
                TD::make('explication', 'Explication')
                    ->width('250')
                    ->render(fn (Diagnosticreponse $reponse) => 
                        $reponse->explication 
                            ? substr(strip_tags($reponse->explication), 0, 80) . '...' 
                            : '—'
                    ),
                    
                TD::make('diagnosticquestion.titre', 'Question')
                    ->width('200')
                    ->sort()
                    ->filter(TD::FILTER_TEXT),
                    
                TD::make('score', 'Score')
                    ->width('80')
                    ->alignCenter()
                    ->sort(),
                    
                TD::make('position', 'Position')
                    ->width('80')
                    ->alignCenter()
                    ->sort(),
                    
                TD::make('langue.titre', 'Langue')
                    ->width('100')
                    ->sort(),
                    
                TD::make('spotlight', 'Spotlight')
                    ->width('100')
                    ->alignCenter()
                    ->render(fn (Diagnosticreponse $reponse) => 
                        $reponse->spotlight ? '✅' : '❌'
                    ),
                    
                TD::make('etat', 'État')
                    ->width('100')
                    ->alignCenter()
                    ->render(fn (Diagnosticreponse $reponse) => 
                        $reponse->etat ? '✅' : '❌'
                    ),
                    
                TD::make('created_at', 'Créé le')
                    ->width('150')
                    ->dateTime()
                    ->sort(),
                    
                TD::make('Actions')
                    ->width('100')
                    ->alignCenter()
                    ->render(fn (Diagnosticreponse $reponse) => 
                        Link::make('Voir')
                            ->icon('bs.eye')
                            ->route('platform.diagnosticreponse.show', $reponse)
                    ),
            ]),
        ];
    }

    public function toggleEtat(Request $request)
    {
        $reponse = Diagnosticreponse::findOrFail($request->input('id'));
        $reponse->etat = !$reponse->etat;
        $reponse->save();

        Alert::info("État modifié.");
        return redirect()->back();
    }

    public function toggleSpotlight(Request $request)
    {
        $reponse = Diagnosticreponse::findOrFail($request->input('id'));
        $reponse->spotlight = !$reponse->spotlight;
        $reponse->save();

        Alert::info("Spotlight modifié.");
        return redirect()->back();
    }

    public function delete(Request $request)
    {
        $reponse = Diagnosticreponse::findOrFail($request->input('diagnosticreponse'));
        $reponse->delete();

        Alert::info("Réponse de diagnostic supprimée.");
        return redirect()->back();
    }
}
