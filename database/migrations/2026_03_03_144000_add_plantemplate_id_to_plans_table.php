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
        Schema::table('plans', function (Blueprint $table) {
            // Vérifier si la colonne n'existe pas déjà avant de l'ajouter
            if (!Schema::hasColumn('plans', 'plantemplate_id')) {
                $table->foreignId('plantemplate_id')->nullable()->constrained('plantemplates')->onDelete('cascade');
                $table->index('plantemplate_id');
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('plans', function (Blueprint $table) {
            // Supprimer seulement si la colonne existe
            if (Schema::hasColumn('plans', 'plantemplate_id')) {
                $table->dropForeign(['plantemplate_id']);
                $table->dropIndex(['plantemplate_id']);
                $table->dropColumn('plantemplate_id');
            }
        });
    }
};
