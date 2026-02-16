<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;
use Orchid\Attachment\Attachable;

class Formation extends Model
{
    use AsSource, Attachable;

    protected $table = 'formations';

    /**
     * @var array
     */
    protected $fillable = [
        'titre',
        'datedebut',
        'datefin',
        'prix',
        'description',
        'expert_id',
        'formationniveau_id',
        'formationtype_id',
        'pays_id',
        'course_supabase_id',
        'spotlight',
        'etat',
    ];

    public function expert()
    {
        return $this->belongsTo(Expert::class);
    }

    public function formationniveau()
    {
        return $this->belongsTo(Formationniveau::class);
    }

    public function formationtype()
    {
        return $this->belongsTo(Formationtype::class);
    }

    public function pays()
    {
        return $this->belongsTo(Pays::class);
    }

    public function course_supabase()
    {
        // La relation sera active quand le modèle CoursesSupabase sera créé
        // return $this->belongsTo(CoursesSupabase::class);
        return null;
    }

}
