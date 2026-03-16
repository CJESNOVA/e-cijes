<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;
use Orchid\Attachment\Attachable;

class Proposition extends Model
{
    use AsSource, Attachable;

    protected $table = 'propositions';

    /**
     * @var array
     */
    protected $fillable = [
        'membre_id',
        'expert_id',
        'prestation_id',
        'plan_id',
        'accompagnement_id',
        'message',
        'prix_propose',
        'duree_prevue',
        'propositionstatut_id',
        'date_proposition',
        'date_expiration',
        'spotlight',
        'etat',
    ];

    /**
     * Relations avec le membre
     */
    public function membre()
    {
        return $this->belongsTo(Membre::class);
    }

    /**
     * Relation avec l'expert
     */
    public function expert()
    {
        return $this->belongsTo(Expert::class);
    }

    /**
     * Relation avec la prestation
     */
    public function prestation()
    {
        return $this->belongsTo(Prestation::class);
    }

    /**
     * Relation avec le plan d'accompagnement
     */
    public function plan()
    {
        return $this->belongsTo(Plan::class);
    }

    /**
     * Relation avec l'accompagnement
     */
    public function accompagnement()
    {
        return $this->belongsTo(Accompagnement::class);
    }

    /**
     * Relation avec le statut de la proposition
     */
    public function propositionstatut()
    {
        return $this->belongsTo(Propositionstatut::class);
    }
}
