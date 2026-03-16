<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;
use Orchid\Attachment\Attachable;

class Accompagnementaxe extends Model
{
    use AsSource, Attachable;

    protected $table = 'accompagnementaxes';

    /**
     * @var array
     */
    protected $fillable = [
        'diagnosticmodule_id',
        'titre',
        'description',
        'spotlight',
        'etat',
    ];
    

    public function diagnosticmodule()
    {
        return $this->belongsTo(Diagnosticmodule::class);
    }

}
