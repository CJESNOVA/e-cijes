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
        Schema::create('diagnosticmodulescores', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('diagnostic_id');
            $table->unsignedBigInteger('diagnosticmodule_id');
            $table->integer('score_total')->nullable();
            $table->integer('score_max')->nullable();
            $table->decimal('score_pourcentage', 5, 2)->nullable();
            $table->string('niveau')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('diagnosticmodulescores');
    }

};
