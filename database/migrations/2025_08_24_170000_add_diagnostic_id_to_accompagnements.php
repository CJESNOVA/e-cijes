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
        Schema::table('accompagnements', function (Blueprint $table) {
            // Vérifier si la colonne n'existe pas déjà avant de l'ajouter
            if (!Schema::hasColumn('accompagnements', 'diagnostic_id')) {
                // Ajouter le champ diagnostic_id après entreprise_id
                $table->unsignedBigInteger('diagnostic_id')->nullable()->default(0)->after('entreprise_id');
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('accompagnements', function (Blueprint $table) {
            // Supprimer la colonne diagnostic_id seulement si elle existe
            if (Schema::hasColumn('accompagnements', 'diagnostic_id')) {
                $table->dropColumn('diagnostic_id');
            }
        });
    }
};
