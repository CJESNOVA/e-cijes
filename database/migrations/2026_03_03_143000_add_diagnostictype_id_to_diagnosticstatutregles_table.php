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
        Schema::table('diagnosticstatutregles', function (Blueprint $table) {
            // Vérifier si la colonne n'existe pas déjà avant de l'ajouter
            if (!Schema::hasColumn('diagnosticstatutregles', 'diagnostictype_id')) {
                $table->foreignId('diagnostictype_id')->nullable()->constrained('diagnostictypes')->onDelete('cascade');
                $table->index('diagnostictype_id');
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('diagnosticstatutregles', function (Blueprint $table) {
            // Supprimer seulement si la colonne existe
            if (Schema::hasColumn('diagnosticstatutregles', 'diagnostictype_id')) {
                $table->dropForeign(['diagnostictype_id']);
                $table->dropIndex(['diagnostictype_id']);
                $table->dropColumn('diagnostictype_id');
            }
        });
    }
};
