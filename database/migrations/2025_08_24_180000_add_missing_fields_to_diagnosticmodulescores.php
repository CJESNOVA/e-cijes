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
        Schema::table('diagnosticmodulescores', function (Blueprint $table) {
            // Ajouter le champ diagnosticquestion_id s'il n'existe pas
            if (!Schema::hasColumn('diagnosticmodulescores', 'diagnosticquestion_id')) {
                $table->unsignedBigInteger('diagnosticquestion_id')->nullable()->after('diagnosticmodule_id');
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('diagnosticmodulescores', function (Blueprint $table) {
            // Supprimer le champ diagnosticquestion_id
            if (Schema::hasColumn('diagnosticmodulescores', 'diagnosticquestion_id')) {
                $table->dropColumn('diagnosticquestion_id');
            }
        });
    }
};
