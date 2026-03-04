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
        // Vérifier si la table n'existe pas déjà avant de la créer
        if (!Schema::hasTable('diagnosticmodulecategories')) {
            Schema::create('diagnosticmodulecategories', function (Blueprint $table) {
                $table->id();
                $table->string('titre');
                $table->boolean('etat')->default(1);
                $table->timestamps();
            });
        }
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        // Supprimer la table seulement si elle existe
        if (Schema::hasTable('diagnosticmodulecategories')) {
            Schema::dropIfExists('diagnosticmodulecategories');
        }
    }
};
