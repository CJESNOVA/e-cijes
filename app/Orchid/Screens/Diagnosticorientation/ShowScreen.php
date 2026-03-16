<?php

namespace App\Orchid\Screens\Diagnosticorientation;

use App\Models\Diagnosticorientation;
use Orchid\Screen\Screen;
use Orchid\Screen\Actions\Link;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Sight;

class ShowScreen extends Screen
{
    /**
     * @var Diagnosticorientation
     */
    public $diagnosticorientation;

    /**
     * Query data.
     *
     * @param Diagnosticorientation $diagnosticorientation
     *
     * @return array
     */
    public function query(Diagnosticorientation $diagnosticorientation): iterable
    {
        $diagnosticorientation->load(['diagnosticmodule', 'diagnosticblocstatut']);

        return [
            'diagnosticorientation' => $diagnosticorientation,
        ];
    }

    /**
     * Display header name.
     *
     * @return string|null
     */
    public function name(): ?string
    {
        return 'Détail de l\'Orientation';
    }

    /**
     * Display header description.
     *
     * @return string|null
     */
    public function description(): ?string
    {
        return 'Informations détaillées de l\'orientation';
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
                ->route('platform.diagnosticorientation.edit', $this->diagnosticorientation),

            Link::make('Retour')
                ->icon('bs.arrow-left')
                ->route('platform.diagnosticorientation.list'),
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
            Layout::legend('diagnosticorientation', [
                Sight::make('diagnosticmodule.titre', 'Module'),
                Sight::make('diagnosticblocstatut.titre', 'Statut de bloc'),
                Sight::make('seuil_max', 'Seuil maximum'),
                Sight::make('dispositif', 'Dispositif'),
                Sight::make('created_at', 'Créé le'),
                Sight::make('updated_at', 'Modifié le'),
            ]),
        ];
    }
}
