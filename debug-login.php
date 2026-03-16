<?php

// À ajouter temporairement dans AppServiceProvider boot()
use Illuminate\Support\Facades\Log;

// Log de débogage pour les connexions
\Event::listen('Illuminate\Auth\Events\Login', function ($event) {
    Log::info('User logged in: ' . $event->user->id);
    Log::info('Session ID: ' . session()->getId());
    Log::info('Session driver: ' . config('session.driver'));
});

\Event::listen('Illuminate\Auth\Events\Authenticated', function ($event) {
    Log::info('User authenticated: ' . $event->user->id);
});
