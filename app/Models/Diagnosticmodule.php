<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;
use Orchid\Attachment\Attachable;
use App\Models\Diagnosticmoduletype;
use App\Models\Entrepriseprofil;
use App\Models\Langue;
use App\Models\Pays;
use App\Models\Diagnosticquestion;
use App\Models\Diagnosticorientation;

class Diagnosticmodule extends Model
{
    use AsSource, Attachable;

    protected $table = 'diagnosticmodules';

    /**
     * @var array
     */
    protected $fillable = [
        'titre',
        'position',
        'description',
        'vignette',
        'diagnosticmoduletype_id',
        'entrepriseprofil_id',
        'parent',
        'langue_id',
        'pays_id',
        'spotlight',
        'etat',
        'est_bloquant',
    ];
    

    public function diagnosticmoduletype()
    {
        return $this->belongsTo(Diagnosticmoduletype::class);
    }

    public function entrepriseprofil()
    {
        return $this->belongsTo(Entrepriseprofil::class);
    }

    public function langue()
    {
        return $this->belongsTo(Langue::class);
    }

    public function moduleparent()
    {
        return $this->belongsTo(Diagnosticmodule::class, 'parent');
    }

    public function pays()
    {
        return $this->belongsTo(Pays::class);
    }

    public function questions()
    {
        return $this->hasMany(Diagnosticquestion::class, 'diagnosticmodule_id');
    }

    public function diagnosticorientations()
    {
        return $this->hasMany(Diagnosticorientation::class);
    }

}
