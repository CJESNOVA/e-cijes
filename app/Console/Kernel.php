<?php

namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;

class Kernel extends ConsoleKernel
{
    /**
     * Register the commands for the application.
     */
    protected $commands = [
        \App\Console\Commands\SupabaseBackup::class,
    ];

    protected function schedule(Schedule $schedule): void
    {
        // Ici tu peux programmer des backups automatiques
        // Exemple : $schedule->command('supabase:backup')->daily();
    }

    protected function commands(): void
    {
        $this->load(__DIR__.'/Commands');
        require base_path('routes/console.php');
    }
}