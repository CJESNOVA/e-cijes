<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('diagnosticmodules', function (Blueprint $table) {
            // Vérifier si la colonne existe avant de l'ajouter
            if (!Schema::hasColumn('diagnosticmodules', 'est_bloquant')) {
                $table->boolean('est_bloquant')->default(0);
            }
        });
    }

    public function down(): void
    {
        Schema::table('diagnosticmodules', function (Blueprint $table) {
            // Vérifier si la colonne existe avant de la supprimer
            if (Schema::hasColumn('diagnosticmodules', 'est_bloquant')) {
                $table->dropColumn('est_bloquant');
            }
        });
    }
};
