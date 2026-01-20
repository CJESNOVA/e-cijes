<?php

namespace App\Orchid\Screens\Diagnosticmodulescore;

use App\Models\Diagnosticmodulescore;

use Orchid\Screen\Screen;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Sight;

class ShowScreen extends Screen
{
    public function query(Diagnosticmodulescore $diagnosticmodulescore): iterable
    {
        $diagnosticmodulescore->load(['diagnostic', 'diagnosticmodule']); 

        return [
            'diagnosticmodulescore' => $diagnosticmodulescore,
        ];
    }

    public function name(): ?string
    {
        return 'Détail du score de module de diagnostic';
    }

    public function description(): ?string
    {
        return 'Fiche complète du score de module de diagnostic sélectionné';
    }

    public function layout(): iterable
    {
        return [
            Layout::legend('diagnosticmodulescore', [
                Sight::make('diagnostic.id', 'ID Diagnostic'),
                Sight::make('diagnosticmodule.titre', 'Module de diagnostic'),
                Sight::make('score_total', 'Score total'),
                Sight::make('score_max', 'Score maximum'),
                Sight::make('score_pourcentage', 'Score en pourcentage')->render(fn($diagnosticmodulescore) => $diagnosticmodulescore->score_pourcentage ? $diagnosticmodulescore->score_pourcentage . '%' : '—'),
                Sight::make('niveau', 'Niveau'),
                Sight::make('created_at', 'Créé le'),
                Sight::make('updated_at', 'Modifié le'),
            ]),
        ];
    }
}
