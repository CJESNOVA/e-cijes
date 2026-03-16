<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Schema;
use App\Services\SupabaseService;

abstract class SupabaseModel extends Model
{
    protected $supabase;
    
    public function __construct(array $attributes = [])
    {
        parent::__construct($attributes);
        $this->supabase = app(SupabaseService::class);
    }
    
    /**
     * Vérifier si la table existe dans MySQL avant d'utiliser Supabase
     */
    protected function useSupabase()
    {
        return !Schema::hasTable($this->table);
    }
    
    /**
     * Récupérer tous les enregistrements
     */
    public function getAll()
    {
        if ($this->useSupabase()) {
            return json_decode(json_encode($this->supabase->get($this->table)));
        } else {
            // Fallback vers MySQL si la table existe localement
            return parent::all();
        }
    }

    /**
     * Récupérer un enregistrement par ID
     */
    public function findRecord($id)
    {
        if ($this->useSupabase()) {
            $data = $this->supabase->get($this->table, ['id' => "eq.$id"]);
            return count($data) ? (object) $data[0] : null;
        } else {
            return parent::find($id);
        }
    }

    /**
     * Créer un enregistrement
     */
    public function createRecord(array $attributes)
    {
        if ($this->useSupabase()) {
            return $this->supabase->insert($this->table, [$attributes]);
        } else {
            return parent::create($attributes);
        }
    }

    /**
     * Mettre à jour un enregistrement
     */
    public function updateRecord($id, array $attributes)
    {
        if ($this->useSupabase()) {
            return $this->supabase->update($this->table, $id, $attributes);
        } else {
            return parent::where('id', $id)->update($attributes);
        }
    }

    /**
     * Supprimer un enregistrement
     */
    public function deleteRecord($id)
    {
        if ($this->useSupabase()) {
            return $this->supabase->delete($this->table, $id);
        } else {
            return parent::where('id', $id)->delete();
        }
    }
    
    /**
     * Override pour les relations - retourne une collection vide si table Supabase
     */
    public function newCollection(array $models = [])
    {
        if ($this->useSupabase()) {
            return new \Illuminate\Database\Eloquent\Collection();
        }
        return parent::newCollection($models);
    }
    
    /**
     * Override pour éviter les requêtes SQL sur les tables Supabase
     */
    public function getTable()
    {
        if ($this->useSupabase()) {
            // Retourne un nom de table factice qui n'existe pas
            return 'supabase_' . $this->table;
        }
        return $this->table;
    }
}
