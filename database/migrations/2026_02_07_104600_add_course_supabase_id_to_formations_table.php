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
        Schema::table('formations', function (Blueprint $table) {
            $table->unsignedBigInteger('course_supabase_id')->nullable()->after('id');
            
            // Ajouter la clé étrangère si la table courses_supabases existe
            if (Schema::hasTable('courses_supabases')) {
                $table->foreign('course_supabase_id')
                    ->references('id')
                    ->on('courses_supabases')
                    ->onDelete('set null');
            }
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('formations', function (Blueprint $table) {
            // Supprimer la clé étrangère si elle existe
            $table->dropForeign(['course_supabase_id']);
            
            // Supprimer la colonne
            $table->dropColumn('course_supabase_id');
        });
    }
};
