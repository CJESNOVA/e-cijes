<?php

namespace App\Orchid\Screens\Diagnosticmodule;

use App\Models\Diagnosticmodule;
use App\Models\Diagnosticmoduletype;
use App\Models\Entrepriseprofil;
use App\Models\Langue;
use App\Models\Pays;
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
            'diagnosticmodules' => Diagnosticmodule::with(['diagnosticmoduletype', 'entrepriseprofil', 'langue', 'pays'])
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
        return 'Modules de Diagnostics';
    }

    /**
     * Display header description.
     *
     * @return string|null
     */
    public function description(): ?string
    {
        return 'Gestion des modules de diagnostics';
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Link::make('Ajouter un module')
                ->icon('bs.plus-circle')
                ->route('platform.diagnosticmodule.create'),
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
            Layout::table('diagnosticmodules', [
                TD::make('id', 'ID')
                    ->width('100')
                    ->sort(),
                    
                TD::make('titre', 'Titre')
                    ->width('250')
                    ->sort()
                    ->filter(TD::FILTER_TEXT)
                    ->render(fn (Diagnosticmodule $module) => 
                        Link::make($module->titre)
                            ->route('platform.diagnosticmodule.edit', $module)
                    ),
                    
                TD::make('diagnosticmoduletype.titre', 'Type')
                    ->width('150')
                    ->sort()
                    ->filter(TD::FILTER_TEXT),
                    
                TD::make('entrepriseprofil.titre', 'Profil entreprise')
                    ->width('150')
                    ->sort()
                    ->filter(TD::FILTER_TEXT),
                    
                TD::make('position', 'Position')
                    ->width('100')
                    ->sort()
                    ->alignCenter(),
                    
                TD::make('langue.titre', 'Langue')
                    ->width('100')
                    ->sort(),
                    
                TD::make('pays.titre', 'Pays')
                    ->width('100')
                    ->sort(),
                    
                TD::make('spotlight', 'Spotlight')
                    ->width('100')
                    ->alignCenter()
                    ->render(fn (Diagnosticmodule $module) => 
                        $module->spotlight ? '✅' : '❌'
                    ),
                    
                TD::make('est_bloquant', 'Bloquant')
                    ->width('100')
                    ->alignCenter()
                    ->render(fn (Diagnosticmodule $module) => 
                        $module->est_bloquant ? '🔒' : '🔓'
                    ),
                    
                TD::make('etat', 'État')
                    ->width('100')
                    ->alignCenter()
                    ->render(fn (Diagnosticmodule $module) => 
                        $module->etat ? '✅' : '❌'
                    ),
                    
                TD::make('created_at', 'Créé le')
                    ->width('150')
                    ->dateTime()
                    ->sort(),
                    
                TD::make('Actions')
                    ->width('100')
                    ->alignCenter()
                    ->render(fn (Diagnosticmodule $module) => 
                        Link::make('Voir')
                            ->icon('bs.eye')
                            ->route('platform.diagnosticmodule.show', $module)
                    ),
            ]),
        ];
    }

    public function toggleEtat(Request $request)
    {
        $diagnosticmodule = Diagnosticmodule::findOrFail($request->input('id'));
        $diagnosticmodule->etat = !$diagnosticmodule->etat;
        $diagnosticmodule->save();

        Alert::info("État modifié.");
        return redirect()->back();
    }

    public function toggleSpotlight(Request $request)
    {
        $diagnosticmodule = Diagnosticmodule::findOrFail($request->input('id'));
        $diagnosticmodule->spotlight = !$diagnosticmodule->spotlight;
        $diagnosticmodule->save();

        Alert::info("Spotlight modifié.");
        return redirect()->back();
    }

    public function delete(Request $request)
    {
        $diagnosticmodule = Diagnosticmodule::findOrFail($request->input('diagnosticmodule'));
        $diagnosticmodule->delete();

        Alert::info("Module de diagnostic supprimé.");
        return redirect()->back();
    }
}
