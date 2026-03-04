<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('diagnosticorientations', function (Blueprint $table) {
            // Vérifier si la table et les colonnes existent avant de faire des modifications
            if (Schema::hasTable('diagnosticorientations')) {
                // Renommer l'ancienne colonne seulement si elle existe
                if (Schema::hasColumn('diagnosticorientations', 'diagnosticstatut_id')) {
                    $table->renameColumn('diagnosticstatut_id', 'ancien_diagnosticstatut_id');
                }
                
                // Ajouter la nouvelle colonne seulement si elle n'existe pas déjà
                if (!Schema::hasColumn('diagnosticorientations', 'diagnosticblocstatut_id')) {
                    $table->unsignedBigInteger('diagnosticblocstatut_id')->nullable()->after('diagnosticmodule_id');
                    
                    // Ajouter la clé étrangère correcte seulement si la colonne a été ajoutée
                    $table->foreign('diagnosticblocstatut_id', 'diag_orient_bloc_fk')->references('id')->on('diagnosticblocstatuts')->onDelete('cascade');
                }
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('diagnosticorientations', function (Blueprint $table) {
            // Vérifier si la table existe avant de faire des modifications
            if (Schema::hasTable('diagnosticorientations')) {
                // Supprimer la clé étrangère seulement si elle existe
                try {
                    $table->dropForeign('diag_orient_bloc_fk');
                } catch (\Exception $e) {
                    // La clé étrangère n'existe peut-être pas, ignorer l'erreur
                }
                
                // Supprimer la nouvelle colonne seulement si elle existe
                if (Schema::hasColumn('diagnosticorientations', 'diagnosticblocstatut_id')) {
                    $table->dropColumn('diagnosticblocstatut_id');
                }
                
                // Restaurer l'ancienne colonne seulement si elle existe
                if (Schema::hasColumn('diagnosticorientations', 'ancien_diagnosticstatut_id')) {
                    $table->renameColumn('ancien_diagnosticstatut_id', 'diagnosticstatut_id');
                }
            }
        });
    }
};
