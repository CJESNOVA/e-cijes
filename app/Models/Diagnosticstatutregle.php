<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;
use Orchid\Attachment\Attachable;
use App\Models\Entrepriseprofil;

class Diagnosticstatutregle extends Model
{
    use HasFactory, AsSource, Attachable;

    protected $fillable = [
        'entrepriseprofil_id',
        'score_total_min',
        'score_total_max',
        'min_blocs_score',
        'min_score_bloc',
        'bloc_juridique_min',
        'bloc_finance_min',
        'aucun_bloc_inf',
        'duree_min_mois',
    ];

    public function entrepriseprofil()
    {
        return $this->belongsTo(Entrepriseprofil::class);
    }
}
