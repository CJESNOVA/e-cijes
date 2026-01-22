<?php

namespace App\Orchid\Screens\Propositionstatut;

use App\Models\Propositionstatut;
use Orchid\Screen\Screen;
use Orchid\Support\Facades\Layout;
use Orchid\Screen\Sight;

class ShowScreen extends Screen
{
    public function query(Propositionstatut $propositionstatut): iterable
    {
        return [
            'propositionstatut' => $propositionstatut,
        ];
    }

    public function name(): ?string
    {
        return 'Détail du statut de proposition';
    }

    public function description(): ?string
    {
        return 'Fiche complète du statut de proposition sélectionné';
    }

    public function layout(): iterable
    {
        return [
            Layout::legend('propositionstatut', [
                Sight::make('titre', 'Titre'),
                Sight::make('etat', 'État')->render(fn($propositionstatut) => $propositionstatut->etat ? '✅ Actif' : '❌ Inactif'),
                Sight::make('created_at', 'Créé le'),
                Sight::make('updated_at', 'Modifié le'),
            ]),
        ];
    }
}
