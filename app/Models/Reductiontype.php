<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;

class Reductiontype extends Model
{
    use HasFactory, AsSource;

    protected $table = 'reductiontypes';

    protected $fillable = [
        'titre',
        'entrepriseprofil_id',
        'offretype_id',
        'pourcentage',
        'montant',
        'date_debut',
        'date_fin',
        'etat',
    ];

    protected $casts = [
        'pourcentage' => 'decimal:2',
        'montant' => 'decimal:2',
        'date_debut' => 'date',
        'date_fin' => 'date',
    ];

    protected $appends = ['titre_complet'];

    public function entrepriseprofil()
    {
        return $this->belongsTo(Entrepriseprofil::class);
    }

    public function offretype()
    {
        return $this->belongsTo(Offretype::class);
    }

    public function getTitreCompletAttribute(): string
    {
        $profilTitre = $this->entrepriseprofil ? $this->entrepriseprofil->titre : '';
        $offreTitre = $this->offretype ? $this->offretype->titre : '';
        
        if ($profilTitre && $offreTitre) {
            return "{$profilTitre} - {$offreTitre}";
        } elseif ($profilTitre) {
            return $profilTitre;
        } elseif ($offreTitre) {
            return $offreTitre;
        }
        
        return $this->titre ?: 'Réduction sans titre';
    }

    public function isPromotionActive(): bool
    {
        if (!$this->date_debut || !$this->date_fin) {
            return false;
        }
        
        $now = now()->startOfDay();
        $dateDebut = $this->date_debut->startOfDay();
        $dateFin = $this->date_fin->startOfDay();
        
        return $now->gte($dateDebut) && $now->lte($dateFin);
    }

    public function getPromotionStatusAttribute(): string
    {
        if (!$this->date_debut || !$this->date_fin) {
            return 'Pas de promotion';
        }
        
        $now = now()->startOfDay();
        $dateDebut = $this->date_debut->startOfDay();
        $dateFin = $this->date_fin->startOfDay();
        
        if ($now->lt($dateDebut)) {
            return 'À venir';
        } elseif ($now->gt($dateFin)) {
            return 'Terminée';
        } else {
            return 'Active';
        }
    }

    public function scopeActivePromotion($query)
    {
        return $query->whereNotNull('date_debut')
                    ->whereNotNull('date_fin')
                    ->where('date_debut', '<=', now())
                    ->where('date_fin', '>=', now());
    }

    public function scopeUpcomingPromotion($query)
    {
        return $query->whereNotNull('date_debut')
                    ->where('date_debut', '>', now());
    }

    public function scopeExpiredPromotion($query)
    {
        return $query->whereNotNull('date_fin')
                    ->where('date_fin', '<', now());
    }
}
