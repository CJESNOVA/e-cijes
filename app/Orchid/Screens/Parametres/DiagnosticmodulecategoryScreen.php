<?php

namespace App\Orchid\Screens\Parametres;

use Orchid\Screen\Screen;
use Orchid\Screen\Fields\Input;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Actions\ModalToggle;

use App\Models\Diagnosticmodulecategory;
use Illuminate\Http\Request;

use Orchid\Screen\TD;
use Orchid\Screen\Actions\Button;

use Illuminate\Support\Facades\Redirect; // si tu veux rediriger après

class DiagnosticmodulecategoryScreen extends Screen
{
    /**
     * Fetch data to be displayed on the screen.
     *
     * @return array
     */
    public function query(): iterable
    {
        return [
            'diagnosticmodulecategories' => Diagnosticmodulecategory::latest()->paginate(20),
        ];
    }

    /**
     * The name of the screen displayed in the header.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'Liste des catégories du module du diagnostics';
    }

    /**
     * Displays a description on the user's screen
     * directly under the heading.
     */
    public function description(): ?string
    {
        return "Paramètres";
    }

    public function asyncDiagnosticmodulecategory(Diagnosticmodulecategory $diagnosticmodulecategory): iterable
    {
        return [
            'diagnosticmodulecategory' => $diagnosticmodulecategory
        ];
    }

    /**
     * The screen's action buttons.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            ModalToggle::make('Ajouter une catégorie du module du diagnostic')
                ->modal('diagnosticmodulecategoryModal')
                ->method('create')
                ->icon('plus'),
        ];
    }

    /**
     * The screen's layout elements.
     *
     * @return \Orchid\Screen\Layout[]|string[]
     */
    public function layout(): iterable
    {
        return [
            Layout::table('diagnosticmodulecategories', [
                TD::make('titre'),

                TD::make('etat', 'État')
                    ->render(function (Diagnosticmodulecategory $diagnosticmodulecategory) {
                        return Button::make($diagnosticmodulecategory->etat ? 'Désactiver' : 'Activer')
                            ->method('toggleEtat', [
                                'diagnosticmodulecategory' => $diagnosticmodulecategory->id,
                            ])
                            ->icon($diagnosticmodulecategory->etat ? 'toggle-on' : 'toggle-off')
                            ->class($diagnosticmodulecategory->etat ? 'btn btn-success' : 'btn btn-secondary');
                    }),

                TD::make('Actions')
                    ->alignRight()
                    ->render(function (Diagnosticmodulecategory $diagnosticmodulecategory) {
                        return ModalToggle::make('Modifier')
                                ->modal('editDiagnosticmodulecategoryModal')
                                ->modalTitle('Modifier la catégorie du module du diagnostic')
                                ->method('update')
                                ->asyncParameters([
                                    'diagnosticmodulecategory' => $diagnosticmodulecategory->id,
                                ])
                                ->icon('pencil')
                                ->class('btn btn-sm btn-warning')
                            . ' ' . 
                            Button::make('Supprimer')
                                ->confirm('Après la suppression, la catégorie du module du diagnostic disparaîtra définitivement.')
                                ->method('delete', ['diagnosticmodulecategory' => $diagnosticmodulecategory->id])
                                ->icon('trash')
                                ->class('btn btn-sm btn-danger');
                    }),

            ]),

            Layout::modal('diagnosticmodulecategoryModal', Layout::rows([
                Input::make('diagnosticmodulecategory.titre')
                    ->title('Titre')
                    ->placeholder('Entrez le nom de la catégorie')
                    ->help('Le nom de la catégorie à créer.'),
            ]))
                ->title('Créer une catégorie')
                ->applyButton('Ajouter une catégorie'),


            Layout::modal('editDiagnosticmodulecategoryModal', Layout::rows([
                Input::make('diagnosticmodulecategory.id')->type('hidden'),

                Input::make('diagnosticmodulecategory.titre')
                    ->title('Titre')
                    ->required(),
            ]))
                ->async('asyncDiagnosticmodulecategory')
                ->applyButton('Mettre à jour'),

        ];
    }

    /**
     * @param \Illuminate\Http\Request $request
     *
     * @return void
     */
    public function create(Request $request)
    {
        // Validate form data, save diagnosticmodulecategory to database, etc.
        $request->validate([
            'diagnosticmodulecategory.titre' => 'required|max:255',
        ]);

        $diagnosticmodulecategory = new Diagnosticmodulecategory();
        $diagnosticmodulecategory->titre = $request->input('diagnosticmodulecategory.titre');
        $diagnosticmodulecategory->save();
    }

    /**
     * @param Diagnosticmodulecategory $diagnosticmodulecategory
     *
     * @return void
     */
    public function delete(Diagnosticmodulecategory $diagnosticmodulecategory)
    {
        $diagnosticmodulecategory->delete();
    }



    public function toggleEtat(Request $request)
    {
        $diagnosticmodulecategory = Diagnosticmodulecategory::findOrFail($request->input('diagnosticmodulecategory'));
        $diagnosticmodulecategory->etat = !$diagnosticmodulecategory->etat;
        $diagnosticmodulecategory->save();
    }

    public function update(Request $request)
    {
        $request->validate([
            'diagnosticmodulecategory.titre' => 'required|max:255',
        ]);

        $diagnosticmodulecategory = Diagnosticmodulecategory::findOrFail($request->input('diagnosticmodulecategory.id'));
        $diagnosticmodulecategory->titre = $request->input('diagnosticmodulecategory.titre');
        $diagnosticmodulecategory->save();
    }

}
