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
        Schema::table('diagnosticevolutions', function (Blueprint $table) {
            // Ajouter le champ membre_id s'il n'existe pas
            if (!Schema::hasColumn('diagnosticevolutions', 'membre_id')) {
                $table->unsignedBigInteger('membre_id')->nullable()->after('id');
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('diagnosticevolutions', function (Blueprint $table) {
            // Supprimer le champ membre_id
            if (Schema::hasColumn('diagnosticevolutions', 'membre_id')) {
                $table->dropColumn('membre_id');
            }
        });
    }
};
