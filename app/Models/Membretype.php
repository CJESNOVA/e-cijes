<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;
use App\Models\Membrecategorie;

class Membretype extends Model
{
    use HasFactory, AsSource;

    protected $table = 'membretypes'; 

    protected $fillable = [
        'titre',
        'membrecategorie_id',
        'etat',
    ];

    public function membrecategorie()
    {
        return $this->belongsTo(Membrecategorie::class, 'membrecategorie_id');
    }
}
