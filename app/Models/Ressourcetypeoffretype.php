<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;
use Orchid\Attachment\Attachable;

class Ressourcetypeoffretype extends Model
{
    use AsSource, Attachable;

    protected $table = 'ressourcetypeoffretypes';

    /**
     * @var array
     */
    protected $fillable = [
        'ressourcetype_id',
        'offretype_id',
        'table_id',
        'spotlight',
        'etat',
    ];

    protected $appends = ['type_offre_nom_complet'];

    public function ressourcetype()
    {
        return $this->belongsTo(Ressourcetype::class);
    }

    public function offretype()
    {
        return $this->belongsTo(Offretype::class);
    }

    public function getTypeOffreNomCompletAttribute(): string
    {
        if (!$this->offretype_id || !$this->table_id) {
            return 'Non défini';
        }

        $typeOffre = match($this->offretype_id) {
            1 => Prestationtype::find($this->table_id),
            2 => Formationtype::find($this->table_id),
            3 => Evenementtype::find($this->table_id),
            4 => Espacetype::find($this->table_id),
            default => null
        };

        return $typeOffre ? $typeOffre->titre : 'Type inconnu';
    }

    public function getOffreTypeNomAttribute(): string
    {
        return match($this->offretype_id) {
            1 => 'Prestation',
            2 => 'Formation',
            3 => 'Événement',
            4 => 'Espace',
            default => 'Inconnu'
        };
    }

}
