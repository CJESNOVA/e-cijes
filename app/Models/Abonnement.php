<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;

class Abonnement extends Model
{
    use HasFactory, AsSource;

    protected $table = 'abonnements';

    protected $fillable = [
        'entreprise_id',
        'abonnementtype_id',
        'montant',
        'montant_paye',
        'montant_restant',
        'devise',
        'date_debut',
        'date_fin',
        'date_echeance',
        'date_paiement',
        'statut',
        'est_actif',
        'nombre_rappels',
        'reference_paiement',
        'mode_paiement',
        'commentaires',
        'renouvellement_auto',
        'date_dernier_renouvellement',
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
        'est_actif' => 'boolean',
        'nombre_rappels' => 'integer',
        'renouvellement_auto' => 'boolean',
        'date_dernier_renouvellement' => 'date',
        'etat' => 'boolean',
    ];

    protected static function boot()
    {
        parent::boot();

        static::saving(function ($abonnement) {
            // Calcul du montant restant
            $abonnement->montant_restant = $abonnement->montant - ($abonnement->montant_paye ?? 0);
            
            // Mise à jour automatique du statut pour les abonnements
            if ($abonnement->montant_restant <= 0) {
                $abonnement->statut = 'paye';
                $abonnement->est_actif = true;
            } elseif ($abonnement->montant_paye > 0) {
                $abonnement->statut = 'partiel';
                $abonnement->est_actif = true;
            } else {
                $abonnement->statut = 'en_attente';
                $abonnement->est_actif = false;
            }

            // Vérifier si expiré (spécifique aux abonnements)
            if ($abonnement->date_fin && now()->greaterThan($abonnement->date_fin)) {
                $abonnement->statut = 'expire';
                $abonnement->est_actif = false;
            }

            // Vérifier si en retard
            if ($abonnement->date_echeance && now()->greaterThan($abonnement->date_echeance) && $abonnement->statut !== 'paye') {
                $abonnement->statut = 'retard';
                $abonnement->est_actif = false;
            }
        });
    }

    public function entreprise()
    {
        return $this->belongsTo(Entreprise::class);
    }

    public function abonnementtype()
    {
        return $this->belongsTo(Abonnementtype::class);
    }

    public function getStatutLabelAttribute()
    {
        return match($this->statut) {
            'en_attente' => 'En attente',
            'partiel' => 'Partiellement payé',
            'paye' => 'Payé',
            'retard' => 'En retard',
            'expire' => 'Expiré',
            'resilie' => 'Résilié',
            'suspendu' => 'Suspendu',
            default => 'Inconnu',
        };
    }

    public function getStatutColorAttribute()
    {
        return match($this->statut) {
            'en_attente' => 'warning',
            'partiel' => 'info',
            'paye' => 'success',
            'retard' => 'danger',
            'expire' => 'secondary',
            'resilie' => 'dark',
            'suspendu' => 'warning',
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
            'carte' => 'Carte bancaire',
            'prelevement' => 'Prélèvement automatique',
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
            $this->statut = 'paye';
            $this->est_actif = true;
        } elseif ($this->montant_paye > 0) {
            $this->statut = 'partiel';
            $this->est_actif = true;
        } else {
            $this->statut = 'en_attente';
            $this->est_actif = false;
        }

        // Vérifier si expiré (spécifique aux abonnements)
        if ($this->date_fin && now()->greaterThan($this->date_fin)) {
            $this->statut = 'expire';
            $this->est_actif = false;
        }

        // Vérifier si en retard
        if ($this->date_echeance && now()->greaterThan($this->date_echeance) && $this->statut !== 'paye') {
            $this->statut = 'retard';
            $this->est_actif = false;
        }

        return $this;
    }

    // Méthodes spécifiques aux abonnements
    public function estExpirant()
    {
        return $this->date_fin && 
               now()->copy()->addDays(30)->greaterThanOrEqualTo($this->date_fin) && 
               now()->lessThanOrEqualTo($this->date_fin);
    }

    public function joursRestants()
    {
        if (!$this->date_fin) return null;
        
        return now()->diffInDays($this->date_fin, false);
    }

    public function renouveler()
    {
        if ($this->abonnementtype && $this->renouvellement_auto) {
            $this->date_dernier_renouvellement = now();
            $this->date_debut = now();
            $this->date_fin = now()->addDays($this->abonnementtype->nombre_jours);
            $this->date_echeance = $this->date_fin;
            $this->montant_paye = 0;
            $this->statut = 'en_attente';
            $this->est_actif = false;
            $this->nombre_rappels = 0;
            
            return $this->save();
        }
        
        return false;
    }

    public function resilier()
    {
        $this->statut = 'resilie';
        $this->est_actif = false;
        $this->renouvellement_auto = false;
        
        return $this->save();
    }

    public function suspendre()
    {
        $this->statut = 'suspendu';
        $this->est_actif = false;
        
        return $this->save();
    }

    public function reactiver()
    {
        if (in_array($this->statut, ['suspendu', 'resilie'])) {
            $this->statut = 'paye';
            $this->est_actif = true;
            
            return $this->save();
        }
        
        return false;
    }
}
