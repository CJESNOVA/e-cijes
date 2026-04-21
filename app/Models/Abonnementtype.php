<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;

class Abonnementtype extends Model
{
    use HasFactory, AsSource;

    protected $table = 'abonnementtypes'; 

    protected $fillable = [
        'titre',
        'montant',
        'nombre_jours',
        'etat',
    ];

    protected $casts = [
        'montant' => 'decimal:2',
        'nombre_jours' => 'integer',
    ];
}
