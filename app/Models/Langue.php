<?php

namespace App\Models;

use App\Services\SupabaseService;

class Langue
{
    protected $supabase;
    protected $table = 'languages'; // Table distante Supabase

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
     * Récupérer tous les langue
     */
    public function all()
    {
        return json_decode(json_encode($this->supabase->get($this->table)));
    }

    /**
     * Récupérer un langue par ID
     */
    public function find($id)
    {
        $data = $this->supabase->get($this->table, ['id' => "eq.$id"]);
        return count($data) ? (object) $data[0] : null;
    }

    /**
     * Créer un langue
     */
    public function create(array $attributes)
    {
        return $this->supabase->insert($this->table, [$attributes]);
    }

    /**
     * Mettre à jour un langue
     */
    public function update($id, array $attributes)
    {
        return $this->supabase->update($this->table, $id, $attributes);
    }

    /**
     * Supprimer un langue
     */
    public function delete($id)
    {
        return $this->supabase->delete($this->table, $id);
    }
}
