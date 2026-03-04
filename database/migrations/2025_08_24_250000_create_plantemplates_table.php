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
        if (!Schema::hasTable('plantemplates')) {
            Schema::create('plantemplates', function (Blueprint $table) {
                $table->id();
                $table->unsignedBigInteger('diagnosticmodule_id');
                $table->unsignedBigInteger('diagnosticquestion_id')->nullable()->default(0);
                $table->string('niveau');
                $table->text('objectif')->nullable();
                $table->longText('actionprioritaire')->nullable();
                $table->integer('priorite')->default(1);
                $table->boolean('spotlight')->default(0);
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
        if (Schema::hasTable('plantemplates')) {
            Schema::dropIfExists('plantemplates');
        }
    }
};
