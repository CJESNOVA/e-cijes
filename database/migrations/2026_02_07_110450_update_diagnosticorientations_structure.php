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
                $table->unsignedBigInteger('diagnosticstatut_id')->nullable()->after('diagnosticmodule_id');
                
                // Nettoyer les données invalides avant d'ajouter la clé étrangère
                \DB::table('diagnosticorientations')
                    ->whereNotIn('diagnosticstatut_id', function($query) {
                        $query->select('id')->from('diagnosticstatuts');
                    })
                    ->update(['diagnosticstatut_id' => null]);
                
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
                    // Supprimer les clés étrangères avant de supprimer les colonnes
                    if ($column === 'diagnosticmodule_id') {
                        try {
                            $table->dropForeign(['diagnosticmodule_id']);
                        } catch (\Exception $e) {
                            // La clé étrangère n'existe peut-être pas
                        }
                    }
                    if ($column === 'diagnosticstatut_id') {
                        try {
                            $table->dropForeign(['diagnosticstatut_id']);
                        } catch (\Exception $e) {
                            // La clé étrangère n'existe peut-être pas
                        }
                    }
                    
                    $table->dropColumn($column);
                }
            }
        });
    }
};
