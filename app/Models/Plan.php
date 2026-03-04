<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;
use Orchid\Attachment\Attachable;

class Plan extends Model
{
    use AsSource, Attachable;

    protected $table = 'plans';

    /**
     * @var array
     */
    protected $fillable = [
        'objectif',
        'actionprioritaire',
        'dateplan',
        'accompagnement_id',
        'diagnostic_id',
        'plantemplate_id',
        'spotlight',
        'etat',
    ];

    public function accompagnement()
    {
        return $this->belongsTo(Accompagnement::class);
    }

    public function diagnostic()
    {
        return $this->belongsTo(Diagnostic::class);
    }

    public function plantemplate()
    {
        return $this->belongsTo(Plantemplate::class);
    }

}
