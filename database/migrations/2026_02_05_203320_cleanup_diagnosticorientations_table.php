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
            // Vérifier si la colonne existe avant de la supprimer
            if (Schema::hasColumn('diagnosticorientations', 'ancien_diagnosticstatut_id')) {
                // Supprimer la clé étrangère si elle existe
                $table->dropForeign('diagnosticorientations_diagnosticstatut_id_foreign');
                
                // Supprimer la colonne ancien_diagnosticstatut_id
                $table->dropColumn('ancien_diagnosticstatut_id');
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('diagnosticorientations', function (Blueprint $table) {
            // Restaurer la colonne ancien_diagnosticstatut_id si elle n'existe pas
            if (!Schema::hasColumn('diagnosticorientations', 'ancien_diagnosticstatut_id')) {
                $table->unsignedBigInteger('ancien_diagnosticstatut_id')->nullable()->after('diagnosticblocstatut_id');
                
                // Ajouter la clé étrangère
                $table->foreign('ancien_diagnosticstatut_id')->references('id')->on('diagnosticstatuts')->onDelete('cascade');
            }
        });
    }
};
