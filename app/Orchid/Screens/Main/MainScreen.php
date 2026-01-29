<?php

namespace App\Orchid\Screens\Main;

use App\Orchid\Layouts\Main\MenuLayout;
use Orchid\Screen\Screen;
use Orchid\Support\Facades\Layout;

class MainScreen extends Screen
{
    /**
     * Display header name.
     *
     * @var string
     */
    public $name = 'Tableau de Bord';

    /**
     * Display header description.
     *
     * @var string
     */
    public $description = 'Vue d\'ensemble complète de la plateforme CIJES';

    /**
     * Query data.
     *
     * @return array
     */
    public function query(): array
    {
        return [
            // Statistiques générales
            'stats' => [
                'membres' => \App\Models\Membre::count(),
                'entreprises' => \App\Models\Entreprise::count(),
                'diagnostics' => \App\Models\Diagnostic::count(),
                'accompagnements' => \App\Models\Accompagnement::count(),
                'formations' => \App\Models\Formation::count(),
                'experts' => \App\Models\Expert::count(),
            ],
            
            // Activités récentes
            'recent_diagnostics' => \App\Models\Diagnostic::with('membre')
                ->orderBy('created_at', 'desc')
                ->limit(5)
                ->get(),
                
            'recent_accompagnements' => \App\Models\Accompagnement::with('membre')
                ->orderBy('created_at', 'desc')
                ->limit(5)
                ->get(),
                
            'recent_formations' => \App\Models\Formation::orderBy('created_at', 'desc')
                ->limit(5)
                ->get(),
                
            // Statuts des diagnostics
            'diagnostics_stats' => \App\Models\Diagnostic::join('diagnosticstatuts', 'diagnostics.diagnosticstatut_id', '=', 'diagnosticstatuts.id')
                ->selectRaw('diagnosticstatuts.titre as statut, count(*) as count')
                ->groupBy('diagnosticstatuts.titre')
                ->get(),
                
            // Niveaux d'accompagnements (au lieu des types)
            'accompagnement_niveaux' => \App\Models\Accompagnement::join('accompagnementniveaus', 'accompagnements.accompagnementniveau_id', '=', 'accompagnementniveaus.id')
                ->selectRaw('accompagnementniveaus.titre as niveau, count(*) as count')
                ->groupBy('accompagnementniveaus.titre')
                ->get(),
        ];
    }

    /**
     * Button commands.
     *
     * @return \Orchid\Screen\Action[]
     */
    public function commandBar(): array
    {
        return [];
    }

    /**
     * Views.
     *
     * @return \Orchid\Screen\Layout[]|string[]
     */
    public function layout(): array
    {
        return [
            Layout::view('platform.partials.dashboard'),
        ];
    }
}
