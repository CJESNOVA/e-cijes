<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('diagnosticmodulescores', function (Blueprint $table) {
            // Vérifier si la colonne existe avant de l'ajouter
            if (!Schema::hasColumn('diagnosticmodulescores', 'diagnosticblocstatut_id')) {
                $table->unsignedBigInteger('diagnosticblocstatut_id')->nullable();
                
                $table->foreign('diagnosticblocstatut_id')
                      ->references('id')
                      ->on('diagnosticblocstatuts')
                      ->onDelete('set null');
            }
        });
    }

    public function down(): void
    {
        Schema::table('diagnosticmodulescores', function (Blueprint $table) {
            // Vérifier si la colonne existe avant de la supprimer
            if (Schema::hasColumn('diagnosticmodulescores', 'diagnosticblocstatut_id')) {
                $table->dropForeign(['diagnosticblocstatut_id']);
                $table->dropColumn('diagnosticblocstatut_id');
            }
        });
    }
};
