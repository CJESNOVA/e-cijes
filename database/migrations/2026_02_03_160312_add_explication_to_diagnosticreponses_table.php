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
        Schema::table('diagnosticreponses', function (Blueprint $table) {
            // Vérifier si la colonne n'existe pas déjà avant de l'ajouter
            if (!Schema::hasColumn('diagnosticreponses', 'explication')) {
                $table->text('explication')->nullable()->after('titre');
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('diagnosticreponses', function (Blueprint $table) {
            // Supprimer la colonne seulement si elle existe
            if (Schema::hasColumn('diagnosticreponses', 'explication')) {
                $table->dropColumn('explication');
            }
        });
    }
};
