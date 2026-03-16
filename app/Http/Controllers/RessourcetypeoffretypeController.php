<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Prestationtype;
use App\Models\Formationtype;
use App\Models\Evenementtype;
use App\Models\Espacetype;

class RessourcetypeoffretypeController extends Controller
{
    /**
     * Charger les options du champ table_id selon l'offretype_id
     */
    public function loadTableOptions(Request $request)
    {
        $offretypeId = $request->get('offretype_id');
        
        // Log de réception de la requête
        \Log::info('=== AJAX loadTableOptions appelé (HTML) ===');
        \Log::info('offretype_id reçu: ' . $offretypeId);
        
        $html = '<option value="">Choisir</option>';
        
        switch ($offretypeId) {
            case 1: // Prestation
                \Log::info('Chargement des Prestationtypes');
                $options = Prestationtype::pluck('titre', 'id')->toArray();
                \Log::info('Prestationtypes trouvés: ' . count($options));
                break;
                
            case 2: // Formation
                \Log::info('Chargement des Formationtypes');
                $options = Formationtype::pluck('titre', 'id')->toArray();
                \Log::info('Formationtypes trouvés: ' . count($options));
                break;
                
            case 3: // Événement
                \Log::info('Chargement des Evenementtypes');
                $options = Evenementtype::pluck('titre', 'id')->toArray();
                \Log::info('Evenementtypes trouvés: ' . count($options));
                break;
                
            case 4: // Espace
                \Log::info('Chargement des Espacetypes');
                $options = Espacetype::pluck('titre', 'id')->toArray();
                \Log::info('Espacetypes trouvés: ' . count($options));
                break;
                
            default:
                \Log::warning('offretype_id non reconnu: ' . $offretypeId);
                return '<option value="">Aucune option</option>';
        }
        
        // Générer le HTML des options
        foreach ($options as $id => $titre) {
            $html .= "<option value=\"$id\">" . htmlspecialchars($titre) . "</option>";
        }
        
        \Log::info('HTML généré: ' . $html);
        \Log::info('Options disponibles: ' . json_encode($options));
        
        return $html;
    }
}
