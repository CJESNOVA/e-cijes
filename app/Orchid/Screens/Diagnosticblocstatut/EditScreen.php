<?php

namespace App\Orchid\Screens\Diagnosticblocstatut;

use App\Models\Diagnosticblocstatut;
use Orchid\Screen\Screen;
use Orchid\Screen\Actions\Button;
use Orchid\Screen\Actions\Link;
use Orchid\Screen\Fields\Input;
use Orchid\Screen\Fields\TextArea;
use Orchid\Support\Facades\Layout;
use Orchid\Support\Facades\Alert;
use Illuminate\Http\Request;

class EditScreen extends Screen
{
    /**
     * @var Diagnosticblocstatut
     */
    public $diagnosticblocstatut;

    /**
     * Query data.
     *
     * @param Diagnosticblocstatut $diagnosticblocstatut
     *
     * @return array
     */
    public function query(Diagnosticblocstatut $diagnosticblocstatut): iterable
    {
        return [
            'diagnosticblocstatut' => $diagnosticblocstatut,
        ];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return $this->diagnosticblocstatut->exists ? 'Modifier un statut' : 'Ajouter un statut';
    }

    /**
     * Display header description.
     *
     * @return string|null
     */
    public function description(): ?string
    {
        return $this->diagnosticblocstatut->exists ? 'Modifier les informations du statut' : 'Créer un nouveau statut de bloc';
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

            Button::make('Supprimer')
                ->icon('bs.trash')
                ->method('remove')
                ->canSee($this->diagnosticblocstatut->exists),

            Link::make('Annuler')
                ->icon('bs.arrow-left')
                ->route('platform.diagnosticblocstatut.list'),
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
                Input::make('diagnosticblocstatut.code')
                    ->title('Code')
                    ->placeholder('Code unique du statut')
                    ->required()
                    ->help('Code court pour identifier le statut (ex: critique, fragile, conforme)'),

                Input::make('diagnosticblocstatut.titre')
                    ->title('Titre')
                    ->placeholder('Titre du statut')
                    ->required(),

                TextArea::make('diagnosticblocstatut.description')
                    ->title('Description')
                    ->placeholder('Description détaillée du statut')
                    ->rows(4)
                    ->help('Description expliquant ce que signifie ce statut'),
            ]),
        ];
    }

    /**
     * Save the statut.
     *
     * @param Diagnosticblocstatut $diagnosticblocstatut
     * @param Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function save(Diagnosticblocstatut $diagnosticblocstatut, Request $request)
    {
        $data = $request->get('diagnosticblocstatut');
        $diagnosticblocstatut->fill($data)->save();

        Alert::info('Statut sauvegardé avec succès.');

        return redirect()->route('platform.diagnosticblocstatut.list');
    }

    /**
     * Remove the statut.
     *
     * @param Diagnosticblocstatut $diagnosticblocstatut
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function remove(Diagnosticblocstatut $diagnosticblocstatut)
    {
        $diagnosticblocstatut->delete();

        Alert::info('Statut supprimé avec succès.');

        return redirect()->route('platform.diagnosticblocstatut.list');
    }
}
