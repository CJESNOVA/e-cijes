<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;
use App\Models\Membretype;

class Membrecategorie extends Model
{
    use HasFactory, AsSource;

    protected $table = 'membrecategories'; 

    protected $fillable = [
        'titre',
        'etat',
    ];

    public function membretypes()
    {
        return $this->hasMany(Membretype::class, 'membrecategorie_id');
    }
}
