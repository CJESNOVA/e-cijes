<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;
use Orchid\Attachment\Attachable;
use App\Models\Entreprise;
use App\Models\Diagnostic;
use App\Models\Diagnosticstatut;
use App\Models\Entrepriseprofil;

class Diagnosticevolution extends Model
{
    use HasFactory, AsSource, Attachable;

    protected $fillable = [
        'entreprise_id',
        'diagnostic_id',
        'diagnostic_precedent_id',
        'score_global',
        'diagnosticstatut_id',
        'entrepriseprofil_id',
        'commentaire',
    ];

    public function entreprise()
    {
        return $this->belongsTo(Entreprise::class);
    }

    public function diagnostic()
    {
        return $this->belongsTo(Diagnostic::class);
    }

    public function diagnosticPrecedent()
    {
        return $this->belongsTo(Diagnostic::class, 'diagnostic_precedent_id');
    }

    public function diagnosticstatut()
    {
        return $this->belongsTo(Diagnosticstatut::class);
    }

    public function entrepriseprofil()
    {
        return $this->belongsTo(Entrepriseprofil::class);
    }

    public function getNomCompletAttribute()
    {
        return $this->entreprise ? $this->entreprise->nom_complet : 'Entreprise inconnue';
    }
}
