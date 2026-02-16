<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;
use Orchid\Attachment\Attachable;

class Diagnosticorientation extends Model
{
    use HasFactory, AsSource, Attachable;

    protected $fillable = [
        'diagnosticmodule_id',
        'diagnosticblocstatut_id',
        'seuil_max',
        'dispositif',
    ];

    public function diagnosticmodule()
    {
        return $this->belongsTo(Diagnosticmodule::class);
    }

    public function diagnosticblocstatut()
    {
        return $this->belongsTo(Diagnosticblocstatut::class);
    }
}
