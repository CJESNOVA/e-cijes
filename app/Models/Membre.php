<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;
use Orchid\Attachment\Attachable;

class Membre extends Model
{
    use AsSource, Attachable;

    protected $table = 'membres';

    protected $appends = ['nom_complet'];

    /**
     * @var array
     */
    protected $fillable = [
        'numero_identifiant',
        'nom',
        'prenom',
        'email',
        'membrestatut_id',
        'vignette',
        'membretype_id',
        'user_id',
        'pays_id',
        'telephone',
        'etat',
    ];
    
    public function membrestatut()
    {
        return $this->belongsTo(Membrestatut::class);
    }

    public function membretype()
    {
        return $this->belongsTo(Membretype::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function pays()
    {
        return $this->belongsTo(Pays::class);
    }

    public function getNomCompletAttribute()
    {
        return trim("{$this->prenom} {$this->nom}");
    }

    /**
     * Génère un numéro d'identifiant unique
     */
    public static function generateNumeroIdentifiant()
    {
        do {
            $numero = 'MBR' . date('Y') . str_pad(mt_rand(1, 99999), 5, '0', STR_PAD_LEFT);
        } while (self::where('numero_identifiant', $numero)->exists());
        
        return $numero;
    }

    /**
     * Boot the model
     */
    protected static function boot()
    {
        parent::boot();

        static::creating(function ($membre) {
            if (empty($membre->numero_identifiant)) {
                $membre->numero_identifiant = self::generateNumeroIdentifiant();
            }
        });
    }



}
