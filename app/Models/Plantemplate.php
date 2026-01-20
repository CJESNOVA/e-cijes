<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;
use Orchid\Attachment\Attachable;

class Plantemplate extends Model
{
    use AsSource, Attachable;

    protected $table = 'plantemplates';

    /**
     * @var array
     */
    protected $fillable = [
        'diagnosticmodule_id',
        'niveau',
        'objectif',
        'actionprioritaire',
        'priorite',
        'spotlight',
        'etat',
    ];
    

    public function diagnosticmodule()
    {
        return $this->belongsTo(Diagnosticmodule::class);
    }

}
