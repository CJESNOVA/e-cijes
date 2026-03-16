<?php

namespace App\Orchid\Screens\Diagnosticblocstatut;

use App\Models\Diagnosticblocstatut;
use Orchid\Screen\Screen;
use Orchid\Screen\Actions\Link;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Sight;

class ShowScreen extends Screen
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
        $diagnosticblocstatut->loadCount('diagnosticmodulescores');

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
        return 'Détail du Statut';
    }

    /**
     * Display header description.
     *
     * @return string|null
     */
    public function description(): ?string
    {
        return 'Informations détaillées du statut de bloc';
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): iterable
    {
        return [
            Link::make('Modifier')
                ->icon('bs.pencil')
                ->route('platform.diagnosticblocstatut.edit', $this->diagnosticblocstatut),

            Link::make('Retour')
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
            Layout::legend('diagnosticblocstatut', [
                Sight::make('code', 'Code'),
                Sight::make('titre', 'Titre'),
                Sight::make('description', 'Description'),
                Sight::make('diagnosticmodulescores_count', 'Scores associés')
                    ->render(fn ($statut) => $statut->diagnosticmodulescores_count . ' score(s)'),
                Sight::make('created_at', 'Créé le'),
                Sight::make('updated_at', 'Modifié le'),
            ]),
        ];
    }
}
