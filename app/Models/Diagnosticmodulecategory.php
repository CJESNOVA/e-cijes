<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;

class Diagnosticmodulecategory extends Model
{
    use HasFactory, AsSource;

    protected $table = 'diagnosticmodulecategories'; 

    protected $fillable = [
        'titre',
        'etat',
    ];

    public function diagnosticmodules()
    {
        return $this->hasMany(Diagnosticmodule::class);
    }
}
