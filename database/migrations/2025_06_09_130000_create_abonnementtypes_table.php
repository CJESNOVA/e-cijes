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
        Schema::create('abonnementtypes', function (Blueprint $table) {
            $table->id();
            $table->string('titre');
            $table->decimal('montant', 10, 2)->default(0);
            $table->integer('nombre_jours')->nullable()->default(0);
            $table->boolean('etat')->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('abonnementtypes');
    }
};
