<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Orchid\Screen\AsSource;
use Orchid\Attachment\Attachable;
use App\Models\Entreprisetype;
use App\Models\Entrepriseprofil;

class Entreprise extends Model
{
    use AsSource, Attachable;

    protected $table = 'entreprises';

    /**
     * @var array
     */
    protected $fillable = [
        'nom',
        'email',
        'telephone',
        'adresse',
        'description',
        'entreprisetype_id',
        'entrepriseprofil_id',
        'est_membre_cijes',
        'annee_creation',
        'secteur_id',
        'vignette',
        'pays_id',
        'supabase_startup_id',
        'spotlight',
        'etat',
    ];
    
    public function secteur()
    {
        return $this->belongsTo(Secteur::class);
    }

    public function entreprisetype()
    {
        return $this->belongsTo(Entreprisetype::class);
    }

    public function entrepriseprofil()
    {
        return $this->belongsTo(Entrepriseprofil::class);
    }

    public function pays()
    {
        return $this->belongsTo(Pays::class);
    }

    public function membres()
    {
        return $this->belongsToMany(Membre::class, 'entreprisemembres', 'entreprise_id', 'membre_id')
            ->withPivot('fonction', 'bio', 'etat')
            ->withTimestamps();
    }

    public function getEstMembreCijesAttribute($value)
    {
        return $value ? 'Oui' : 'Non';
    }

    public function setEstMembreCijesAttribute($value)
    {
        $this->attributes['est_membre_cijes'] = is_bool($value) ? $value : in_array(strtolower($value), ['oui', 'yes', '1', true]);
    }

}
