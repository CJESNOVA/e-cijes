<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('diagnosticorientations', function (Blueprint $table) {
            // Ajouter les colonnes manquantes si elles n'existent pas
            if (!Schema::hasColumn('diagnosticorientations', 'diagnosticmodule_id')) {
                $table->unsignedBigInteger('diagnosticmodule_id')->after('id');
                $table->foreign('diagnosticmodule_id')->references('id')->on('diagnosticmodules')->onDelete('cascade');
            }
            if (!Schema::hasColumn('diagnosticorientations', 'diagnosticstatut_id')) {
                $table->unsignedBigInteger('diagnosticstatut_id')->after('diagnosticmodule_id');
                $table->foreign('diagnosticstatut_id')->references('id')->on('diagnosticstatuts')->onDelete('cascade');
            }
            if (!Schema::hasColumn('diagnosticorientations', 'seuil_max')) {
                $table->integer('seuil_max')->after('diagnosticstatut_id');
            }
            if (!Schema::hasColumn('diagnosticorientations', 'dispositif')) {
                $table->string('dispositif')->after('seuil_max');
            }
        });
    }

    public function down(): void
    {
        Schema::table('diagnosticorientations', function (Blueprint $table) {
            // Supprimer les colonnes ajoutées
            $columns = ['diagnosticmodule_id', 'diagnosticstatut_id', 'seuil_max', 'dispositif'];
            
            foreach ($columns as $column) {
                if (Schema::hasColumn('diagnosticorientations', $column)) {
                    $table->dropColumn($column);
                }
            }
        });
    }
};
