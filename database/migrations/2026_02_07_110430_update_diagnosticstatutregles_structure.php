<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('diagnosticstatutregles', function (Blueprint $table) {
            // Ajouter les colonnes manquantes si elles n'existent pas
            if (!Schema::hasColumn('diagnosticstatutregles', 'entrepriseprofil_id')) {
                $table->unsignedBigInteger('entrepriseprofil_id')->default(0)->after('id');
            }
            if (!Schema::hasColumn('diagnosticstatutregles', 'score_total_min')) {
                $table->integer('score_total_min')->nullable();
            }
            if (!Schema::hasColumn('diagnosticstatutregles', 'score_total_max')) {
                $table->integer('score_total_max')->nullable();
            }
            if (!Schema::hasColumn('diagnosticstatutregles', 'min_blocs_score')) {
                $table->integer('min_blocs_score')->nullable();
            }
            if (!Schema::hasColumn('diagnosticstatutregles', 'min_score_bloc')) {
                $table->integer('min_score_bloc')->nullable();
            }
            if (!Schema::hasColumn('diagnosticstatutregles', 'bloc_juridique_min')) {
                $table->integer('bloc_juridique_min')->nullable();
            }
            if (!Schema::hasColumn('diagnosticstatutregles', 'bloc_finance_min')) {
                $table->integer('bloc_finance_min')->nullable();
            }
            if (!Schema::hasColumn('diagnosticstatutregles', 'aucun_bloc_inf')) {
                $table->integer('aucun_bloc_inf')->nullable();
            }
            if (!Schema::hasColumn('diagnosticstatutregles', 'duree_min_mois')) {
                $table->integer('duree_min_mois')->default(0);
            }
        });
    }

    public function down(): void
    {
        Schema::table('diagnosticstatutregles', function (Blueprint $table) {
            // Supprimer les colonnes ajoutées
            $columns = ['entrepriseprofil_id', 'score_total_min', 'score_total_max', 'min_blocs_score', 'min_score_bloc', 'bloc_juridique_min', 'bloc_finance_min', 'aucun_bloc_inf', 'duree_min_mois'];
            
            foreach ($columns as $column) {
                if (Schema::hasColumn('diagnosticstatutregles', $column)) {
                    $table->dropColumn($column);
                }
            }
        });
    }
};
