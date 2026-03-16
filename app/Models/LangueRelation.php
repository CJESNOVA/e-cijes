<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Relations\BelongsTo;
use Illuminate\Database\Eloquent\Relations\Relation;

class LangueRelation extends BelongsTo
{
    protected $supabase;
    
    public function __construct($query, $parent, $foreignKey, $ownerKey, $relationName)
    {
        parent::__construct($query, $parent, $foreignKey, $ownerKey, $relationName);
        $this->supabase = app(\App\Services\SupabaseService::class);
    }
    
    /**
     * Override pour utiliser Supabase au lieu de MySQL
     */
    public function getResults()
    {
        if ($this->parent->{$this->foreignKey}) {
            $data = $this->supabase->get('languages', ['id' => "eq.{$this->parent->{$this->foreignKey}}"]);
            return count($data) ? (object) $data[0] : null;
        }
        return null;
    }
    
    /**
     * Désactiver les contraintes de requête SQL
     */
    public function addConstraints()
    {
        // Ne rien faire - pas de contraintes SQL pour Supabase
    }
    
    /**
     * Désactiver les contraintes de requête SQL
     */
    public function addEagerConstraints(array $models)
    {
        // Ne rien faire - pas de contraintes SQL pour Supabase
    }
}
