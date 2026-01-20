<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;
use Orchid\Attachment\Attachable;

class Diagnosticmodulescore extends Model
{
    use AsSource, Attachable;

    protected $table = 'diagnosticmodulescores';

    /**
     * @var array
     */
    protected $fillable = [
        'diagnostic_id',
        'diagnosticmodule_id',
        'score_total',
        'score_max',
        'score_pourcentage',
        'niveau',
    ];
    

    public function diagnostic()
    {
        return $this->belongsTo(Diagnostic::class);
    }

    public function diagnosticmodule()
    {
        return $this->belongsTo(Diagnosticmodule::class);
    }

}
