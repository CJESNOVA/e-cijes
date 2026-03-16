<?php

namespace App\Models;

use App\Services\SupabaseService;

class Pays
{
    protected $supabase;
    protected $table = 'countries'; // Table distante Supabase

    public function __construct()
    {
        $this->supabase = app(SupabaseService::class);
    }

    /**
     * Méthodes requises par Laravel pour les relations
     */
    public function getConnectionName()
    {
        return 'supabase'; // Nom de connexion factice
    }
    
    public function getConnection()
    {
        return null; // Pas de connexion SQL
    }
    
    public function getKeyName()
    {
        return 'id';
    }
    
    public function getKey()
    {
        return $this->id ?? null;
    }
    
    public function getTable()
    {
        return $this->table;
    }
    
    /**
     * Créer un query builder factice pour les relations
     */
    public function newQuery()
    {
        return new SupabaseQueryBuilder();
    }

    /**
     * Récupérer tous les pays
     */
    public function all()
    {
        return json_decode(json_encode($this->supabase->get($this->table)));
    }

    /**
     * Récupérer un pays par ID
     */
    public function find($id)
    {
        $data = $this->supabase->get($this->table, ['id' => "eq.$id"]);
        return count($data) ? (object) $data[0] : null;
    }

    /**
     * Créer un pays
     */
    public function create(array $attributes)
    {
        return $this->supabase->insert($this->table, [$attributes]);
    }

    /**
     * Mettre à jour un pays
     */
    public function update($id, array $attributes)
    {
        return $this->supabase->update($this->table, $id, $attributes);
    }

    /**
     * Supprimer un pays
     */
    public function delete($id)
    {
        return $this->supabase->delete($this->table, $id);
    }
}
