<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;

class Cotisationtype extends Model
{
    use HasFactory, AsSource;

    protected $table = 'cotisationtypes'; 

    protected $fillable = [
        'titre',
        'montant',
        'entrepriseprofil_id',
        'nombre_jours',
        'etat',
    ];

    protected $casts = [
        'montant' => 'decimal:2',
        'nombre_jours' => 'integer',
    ];

    public function entrepriseprofil()
    {
        return $this->belongsTo(Entrepriseprofil::class);
    }
}
