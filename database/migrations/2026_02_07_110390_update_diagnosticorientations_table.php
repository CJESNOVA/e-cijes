<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('diagnosticorientations', function (Blueprint $table) {
            // Vérifier si la colonne diagnosticstatut_id existe avant de la renommer
            if (Schema::hasColumn('diagnosticorientations', 'diagnosticstatut_id')) {
                // Renommer l'ancienne colonne pour garder la compatibilité
                $table->renameColumn('diagnosticstatut_id', 'ancien_diagnosticstatut_id');
            }
            
            // Ajouter la nouvelle colonne correcte si elle n'existe pas
            if (!Schema::hasColumn('diagnosticorientations', 'diagnosticblocstatut_id')) {
                $table->unsignedBigInteger('diagnosticblocstatut_id')->nullable()->after('diagnosticmodule_id');
                
                // Ajouter la clé étrangère correcte
                $table->foreign('diagnosticblocstatut_id', 'diag_orient_bloc_fk')->references('id')->on('diagnosticblocstatuts')->onDelete('cascade');
            }
        });
    }

    public function down(): void
    {
        Schema::table('diagnosticorientations', function (Blueprint $table) {
            // Supprimer la clé étrangère si elle existe
            if (Schema::hasColumn('diagnosticorientations', 'diagnosticblocstatut_id')) {
                $table->dropForeign('diag_orient_bloc_fk');
                
                // Supprimer la nouvelle colonne
                $table->dropColumn('diagnosticblocstatut_id');
            }
            
            // Restaurer l'ancienne colonne si elle n'existe pas
            if (!Schema::hasColumn('diagnosticorientations', 'diagnosticstatut_id')) {
                $table->unsignedBigInteger('diagnosticstatut_id')->nullable()->after('diagnosticmodule_id');
                
                // Ajouter la clé étrangère
                $table->foreign('diagnosticstatut_id')->references('id')->on('diagnosticstatuts')->onDelete('cascade');
            }
        });
    }
};
