<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        // Vérifier si la table existe avant de la créer
        if (!Schema::hasTable('diagnosticblocstatuts')) {
            Schema::create('diagnosticblocstatuts', function (Blueprint $table) {
                $table->id();
                $table->string('code');
                $table->string('titre');
                $table->text('description')->nullable();
                $table->timestamps();
            });
        }
    }

    public function down(): void
    {
        Schema::dropIfExists('diagnosticblocstatuts');
    }
};
