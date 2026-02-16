<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('diagnostics', function (Blueprint $table) {
            // Vérifier si la colonne existe avant de l'ajouter
            if (!Schema::hasColumn('diagnostics', 'entrepriseprofil_id')) {
                $table->unsignedBigInteger('entrepriseprofil_id')->default(0)->after('diagnosticstatut_id');
            }
        });
    }

    public function down(): void
    {
        Schema::table('diagnostics', function (Blueprint $table) {
            // Vérifier si la colonne existe avant de la supprimer
            if (Schema::hasColumn('diagnostics', 'entrepriseprofil_id')) {
                $table->dropColumn('entrepriseprofil_id');
            }
        });
    }
};
