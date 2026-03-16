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
        Schema::create('reductiontypes', function (Blueprint $table) {
            $table->id();
            $table->string('titre')->nullable();
            $table->unsignedBigInteger('entrepriseprofil_id')->nullable()->default(0);
            $table->unsignedBigInteger('offretype_id')->nullable()->default(0);
            $table->decimal('pourcentage', 5, 2)->nullable();
            $table->decimal('montant', 10, 2)->nullable();
            $table->boolean('etat')->default(1);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('reductiontypes');
    }
};
