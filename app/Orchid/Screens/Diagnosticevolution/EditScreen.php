<?php

namespace App\Orchid\Screens\Diagnosticevolution;

use App\Models\Diagnosticevolution;
use App\Models\Entreprise;
use App\Models\Diagnostic;
use App\Models\Diagnosticstatut;
use App\Models\Entrepriseprofil;
use Orchid\Screen\Screen;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\Select;
use Orchid\Screen\Fields\TextArea;
use Orchid\Support\Facades\Layout;
use Orchid\Support\Facades\Alert;
use Illuminate\Http\Request;

class EditScreen extends Screen
{
    /**
     * @var Diagnosticevolution
     */
    public $diagnosticevolution;

    /**
     * Query data.
     *
     * @param Diagnosticevolution $diagnosticevolution
     *
     * @return array
     */
    public function query(Diagnosticevolution $diagnosticevolution): iterable
    {
        return [
            'diagnosticevolution' => $diagnosticevolution,
            'entreprises' => Entreprise::where('etat', 1)->pluck('nom_complet', 'id'),
            'diagnostics' => Diagnostic::pluck('id', 'id'),
            'diagnosticstatuts' => Diagnosticstatut::where('etat', 1)->pluck('titre', 'id'),
            'entrepriseprofils' => Entrepriseprofil::where('etat', 1)->pluck('titre', 'id'),
        ];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return $this->diagnosticevolution->exists ? 'Modifier une évolution' : 'Ajouter une évolution';
    }

    /**
     * Display header description.
     *
     * @return string|null
     */
    public function description(): ?string
    {
        return 'Enregistrer une évolution dans le statut d\'un diagnostic';
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Sauvegarder')
                ->icon('bs.check-circle')
                ->method('save'),
                
            Link::make('Annuler')
                ->icon('bs.x-circle')
                ->route('platform.diagnosticevolution.list'),
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
            Layout::rows([
                Select::make('diagnosticevolution.entreprise_id')
                    ->title('Entreprise')
                    ->placeholder('Choisir l\'entreprise')
                    ->fromModel(Entreprise::class, 'nom_complet')
                    ->required(),

                Select::make('diagnosticevolution.diagnostic_id')
                    ->title('Diagnostic')
                    ->placeholder('Choisir le diagnostic')
                    ->fromModel(Diagnostic::class, 'id')
                    ->required(),

                Select::make('diagnosticevolution.diagnostic_precedent_id')
                    ->title('Diagnostic précédent')
                    ->placeholder('Choisir le diagnostic précédent (optionnel)')
                    ->fromModel(Diagnostic::class, 'id')
                    ->empty('Aucun', null),

                Input::make('diagnosticevolution.score_global')
                    ->title('Score global')
                    ->type('number')
                    ->placeholder('Score global du diagnostic')
                    ->required(),

                Select::make('diagnosticevolution.diagnosticstatut_id')
                    ->title('Statut du diagnostic')
                    ->placeholder('Choisir le statut')
                    ->fromModel(Diagnosticstatut::class, 'titre')
                    ->required(),

                Select::make('diagnosticevolution.entrepriseprofil_id')
                    ->title('Profil d\'entreprise')
                    ->placeholder('Choisir le profil')
                    ->fromModel(Entrepriseprofil::class, 'titre')
                    ->required(),

                TextArea::make('diagnosticevolution.commentaire')
                    ->title('Commentaire')
                    ->placeholder('Ajouter un commentaire sur cette évolution')
                    ->rows(3),
            ]),
        ];
    }

    public function save(Request $request)
    {
        $request->validate([
            'diagnosticevolution.entreprise_id' => 'required|exists:entreprises,id',
            'diagnosticevolution.diagnostic_id' => 'required|exists:diagnostics,id',
            'diagnosticevolution.diagnostic_precedent_id' => 'nullable|exists:diagnostics,id',
            'diagnosticevolution.score_global' => 'required|integer',
            'diagnosticevolution.diagnosticstatut_id' => 'required|exists:diagnosticstatuts,id',
            'diagnosticevolution.entrepriseprofil_id' => 'required|exists:entrepriseprofils,id',
            'diagnosticevolution.commentaire' => 'nullable|string|max:255',
        ]);

        $data = $request->get('diagnosticevolution');
        
        $this->diagnosticevolution->fill($data)->save();

        Alert::success('L\'évolution a été sauvegardée avec succès.');

        return redirect()->route('platform.diagnosticevolution.list');
    }
}
