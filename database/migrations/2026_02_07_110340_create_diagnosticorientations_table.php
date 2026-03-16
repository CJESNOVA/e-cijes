<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        // Vérifier si la table existe avant de la créer
        if (!Schema::hasTable('diagnosticorientations')) {
            Schema::create('diagnosticorientations', function (Blueprint $table) {
                $table->id();
                $table->unsignedBigInteger('diagnosticmodule_id');
                $table->unsignedBigInteger('diagnosticstatut_id');
                $table->integer('seuil_max');
                $table->string('dispositif');
                $table->timestamps();
                
                $table->foreign('diagnosticmodule_id')->references('id')->on('diagnosticmodules')->onDelete('cascade');
                $table->foreign('diagnosticstatut_id')->references('id')->on('diagnosticstatuts')->onDelete('cascade');
            });
        }
    }

    public function down(): void
    {
        Schema::dropIfExists('diagnosticorientations');
    }
};
