<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Schema;

class BaseSeeder extends Seeder
{
    /**
     * Crée ou met à jour un enregistrement en fonction d'un champ unique
     */
    protected function createOrUpdate($table, $uniqueField, $data)
    {
        $value = $data[$uniqueField];
        
        // Vérifier si l'enregistrement existe
        $existing = DB::table($table)->where($uniqueField, $value)->first();
        
        if ($existing) {
            // Mettre à jour l'enregistrement existant
            DB::table($table)->where($uniqueField, $value)->update($data);
            return 'updated';
        } else {
            // Créer un nouvel enregistrement
            DB::table($table)->insert($data);
            return 'created';
        }
    }
    
    /**
     * Vide et recrée une table (pour les tables de référence)
     */
    protected function truncateAndSeed($table, $data)
    {
        // Désactiver les contraintes de clés étrangères
        Schema::disableForeignKeyConstraints();
        
        // Vider la table
        DB::table($table)->truncate();
        
        // Insérer les nouvelles données
        DB::table($table)->insert($data);
        
        // Réactiver les contraintes de clés étrangères
        Schema::enableForeignKeyConstraints();
    }
    
    /**
     * Crée plusieurs enregistrements avec gestion des doublons
     */
    protected function createMany($table, $uniqueField, $dataArray)
    {
        $results = ['created' => 0, 'updated' => 0];
        
        foreach ($dataArray as $data) {
            $result = $this->createOrUpdate($table, $uniqueField, $data);
            $results[$result]++;
        }
        
        return $results;
    }
}
