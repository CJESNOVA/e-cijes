<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('diagnosticevolutions', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('entreprise_id');
            $table->unsignedBigInteger('diagnostic_id');
            $table->unsignedBigInteger('diagnostic_precedent_id')->nullable();
            $table->integer('score_global');
            $table->unsignedBigInteger('diagnosticstatut_id');
            $table->unsignedBigInteger('entrepriseprofil_id');
            $table->string('commentaire')->nullable();
            $table->timestamps();
            
            $table->foreign('entreprise_id')->references('id')->on('entreprises')->onDelete('cascade');
            $table->foreign('diagnostic_id')->references('id')->on('diagnostics')->onDelete('cascade');
            $table->foreign('diagnostic_precedent_id')->references('id')->on('diagnostics')->onDelete('set null');
            $table->foreign('diagnosticstatut_id')->references('id')->on('diagnosticstatuts')->onDelete('cascade');
            $table->foreign('entrepriseprofil_id')->references('id')->on('entrepriseprofils')->onDelete('cascade');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('diagnosticevolutions');
    }
};
