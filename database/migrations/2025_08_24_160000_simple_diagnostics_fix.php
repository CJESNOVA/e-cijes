<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::table('diagnostics', function (Blueprint $table) {
            // Supprimer accompagnement_id s'il existe
            if (Schema::hasColumn('diagnostics', 'accompagnement_id')) {
                $table->dropColumn('accompagnement_id');
            }
            
            // Ajouter entrepriseprofil_id s'il n'existe pas
            if (!Schema::hasColumn('diagnostics', 'entrepriseprofil_id')) {
                $table->unsignedBigInteger('entrepriseprofil_id')->nullable()->default(0)->after('diagnosticstatut_id');
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('diagnostics', function (Blueprint $table) {
            // Remettre accompagnement_id
            $table->unsignedBigInteger('accompagnement_id')->nullable()->default(0);
            
            // Supprimer entrepriseprofil_id
            $table->dropColumn('entrepriseprofil_id');
        });
    }
};
