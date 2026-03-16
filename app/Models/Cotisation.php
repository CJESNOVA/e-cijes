<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;

class Cotisation extends Model
{
    use HasFactory, AsSource;

    protected $table = 'cotisations';

    protected $fillable = [
        'entreprise_id',
        'cotisationtype_id',
        'montant',
        'montant_paye',
        'montant_restant',
        'devise',
        'date_debut',
        'date_fin',
        'date_echeance',
        'date_paiement',
        'statut',
        'est_a_jour',
        'nombre_rappels',
        'reference_paiement',
        'mode_paiement',
        'commentaires',
        'etat',
    ];

    protected $casts = [
        'montant' => 'decimal:2',
        'montant_paye' => 'decimal:2',
        'montant_restant' => 'decimal:2',
        'date_debut' => 'date',
        'date_fin' => 'date',
        'date_echeance' => 'date',
        'date_paiement' => 'date',
        'est_a_jour' => 'boolean',
        'nombre_rappels' => 'integer',
        'etat' => 'boolean',
    ];

    protected static function boot()
    {
        parent::boot();

        static::saving(function ($cotisation) {
            // Calcul du montant restant
            $cotisation->montant_restant = $cotisation->montant - ($cotisation->montant_paye ?? 0);
            
            // Mise à jour automatique du statut
            if ($cotisation->montant_restant <= 0) {
                $cotisation->statut = 'payee';
                $cotisation->est_a_jour = true;
            } elseif ($cotisation->montant_paye > 0) {
                $cotisation->statut = 'partielle';
                $cotisation->est_a_jour = false;
            } else {
                $cotisation->statut = 'en_attente';
                $cotisation->est_a_jour = false;
            }

            // Vérifier si en retard
            if ($cotisation->date_echeance && now()->greaterThan($cotisation->date_echeance) && $cotisation->statut !== 'payee') {
                $cotisation->statut = 'retard';
                $cotisation->est_a_jour = false;
            }
        });
    }

    public function entreprise()
    {
        return $this->belongsTo(Entreprise::class);
    }

    public function cotisationtype()
    {
        return $this->belongsTo(Cotisationtype::class);
    }

    public function getStatutLabelAttribute()
    {
        return match($this->statut) {
            'en_attente' => 'En attente',
            'partielle' => 'Partiellement payée',
            'payee' => 'Payée',
            'retard' => 'En retard',
            default => 'Inconnu',
        };
    }

    public function getStatutColorAttribute()
    {
        return match($this->statut) {
            'en_attente' => 'warning',
            'partielle' => 'info',
            'payee' => 'success',
            'retard' => 'danger',
            default => 'secondary',
        };
    }

    public function getModePaiementLabelAttribute()
    {
        return match($this->mode_paiement) {
            'espece' => 'Espèce',
            'banque' => 'Banque',
            'mobile_money' => 'Mobile Money',
            'virement' => 'Virement',
            default => 'Non défini',
        };
    }

    public function getDeviseLabelAttribute()
    {
        return match($this->devise) {
            'XOF' => 'FCFA',
            'EUR' => '€',
            'USD' => '$',
            default => $this->devise,
        };
    }

    public function updateMontantRestant()
    {
        $this->montant_restant = $this->montant - $this->montant_paye;
        
        // Mise à jour automatique du statut
        if ($this->montant_restant <= 0) {
            $this->statut = 'payee';
            $this->est_a_jour = true;
        } elseif ($this->montant_paye > 0) {
            $this->statut = 'partielle';
            $this->est_a_jour = false;
        } else {
            $this->statut = 'en_attente';
            $this->est_a_jour = false;
        }

        // Vérifier si en retard
        if ($this->date_echeance && now()->greaterThan($this->date_echeance) && $this->statut !== 'payee') {
            $this->statut = 'retard';
            $this->est_a_jour = false;
        }

        return $this;
    }
}
