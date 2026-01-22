<?php

namespace App\Orchid\Screens\Propositionstatut;

use Orchid\Screen\Screen;
use App\Models\Propositionstatut;
use Illuminate\Http\Request;
use Orchid\Screen\Fields\Input;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Actions\Button;
use Orchid\Support\Facades\Alert;

class EditScreen extends Screen
{
    /**
     * @var Propositionstatut
     */
    public $propositionstatut;

    /**
     * Query data.
     *
     * @param Propositionstatut $propositionstatut
     *
     * @return array
     */
    public function query(Propositionstatut $propositionstatut): array
    {
        return [
            'propositionstatut' => $propositionstatut
        ];
    }

    /**
     * The name of screen displayed in the header.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return $this->propositionstatut->exists ? 'Modification du statut de proposition' : 'Créer un statut de proposition';
    }

    /**
     * The description is displayed on user's screen under the heading
     */
    public function description(): ?string
    {
        return "Gestion des statuts des propositions";
    }

    /**
     * The screen's action buttons.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Button::make('Créer un statut')
                ->icon('pencil')
                ->method('createOrUpdate')
                ->canSee(!$this->propositionstatut->exists),

            Button::make('Modifier le statut')
                ->icon('note')
                ->method('createOrUpdate')
                ->canSee($this->propositionstatut->exists),

            Button::make('Supprimer')
                ->icon('trash')
                ->method('remove')
                ->canSee($this->propositionstatut->exists),
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
            Layout::rows([
                Input::make('propositionstatut.titre')
                    ->title('Titre')
                    ->placeholder('Saisir le titre du statut')
                    ->required(),
            ])
        ];
    }

    /**
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function createOrUpdate(Request $request)
    {
        $data = $request->get('propositionstatut');

        $this->propositionstatut->fill($data)->save();

        Alert::info('Statut de proposition enregistré avec succès.');

        return redirect()->route('platform.propositionstatut.list');
    }

    /**
     * @param Propositionstatut $propositionstatut
     *
     * @return \Illuminate\Http\RedirectResponse
     */
    public function remove()
    {
        $this->propositionstatut->delete();

        Alert::info('Vous avez supprimé le statut de proposition avec succès.');

        return redirect()->route('platform.propositionstatut.list');
    }
}
