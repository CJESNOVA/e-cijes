<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;
use Orchid\Attachment\Attachable;

class Diagnosticblocstatut extends Model
{
    use HasFactory, AsSource, Attachable;

    protected $fillable = [
        'code',
        'titre',
        'description',
    ];

    public function diagnosticmodulescores()
    {
        return $this->hasMany(Diagnosticmodulescore::class);
    }
}
