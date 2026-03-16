<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('diagnosticstatutregles', function (Blueprint $table) {
            // Vérifier si la colonne existe avant de la supprimer
            if (Schema::hasColumn('diagnosticstatutregles', 'diagnosticstatut_id')) {
                // Supprimer la clé étrangère si elle existe
                $table->dropForeign('diagnosticstatutregles_diagnosticstatut_id_foreign');
                
                // Supprimer la colonne diagnosticstatut_id
                $table->dropColumn('diagnosticstatut_id');
            }
        });
    }

    public function down(): void
    {
        Schema::table('diagnosticstatutregles', function (Blueprint $table) {
            // Restaurer la colonne diagnosticstatut_id si elle n'existe pas
            if (!Schema::hasColumn('diagnosticstatutregles', 'diagnosticstatut_id')) {
                $table->unsignedBigInteger('diagnosticstatut_id')->after('id');
                
                // Ajouter la clé étrangère
                $table->foreign('diagnosticstatut_id')->references('id')->on('diagnosticstatuts')->onDelete('cascade');
            }
        });
    }
};
