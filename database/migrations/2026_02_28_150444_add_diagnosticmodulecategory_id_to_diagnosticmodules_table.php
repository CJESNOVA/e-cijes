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
        Schema::table('diagnosticmodules', function (Blueprint $table) {
            // Vérifier si la colonne n'existe pas déjà avant de l'ajouter
            if (!Schema::hasColumn('diagnosticmodules', 'diagnosticmodulecategory_id')) {
                $table->unsignedBigInteger('diagnosticmodulecategory_id')->nullable()->after('diagnosticmoduletype_id');
                
                // Ajout de la clé étrangère
                $table->foreign('diagnosticmodulecategory_id')
                      ->references('id')
                      ->on('diagnosticmodulecategories')
                      ->onDelete('set null');
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('diagnosticmodules', function (Blueprint $table) {
            // Supprimer seulement si la colonne existe
            if (Schema::hasColumn('diagnosticmodules', 'diagnosticmodulecategory_id')) {
                // Supprimer la clé étrangère d'abord
                try {
                    $table->dropForeign(['diagnosticmodulecategory_id']);
                } catch (\Exception $e) {
                    // La clé étrangère n'existe peut-être pas
                }
                // Supprimer la colonne
                $table->dropColumn('diagnosticmodulecategory_id');
            }
        });
    }
};
