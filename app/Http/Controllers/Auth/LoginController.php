<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use Orchid\Platform\Http\Controllers\LoginController as OrchidLoginController;
use Illuminate\Support\Facades\Auth;

class LoginController extends OrchidLoginController
{
    /**
     * Handle a login request to the application.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse|\Illuminate\Http\Response
     */
    public function login(Request $request)
    {
        $response = parent::login($request);
        
        // Si la connexion est réussie
        if (Auth::check()) {
            // Forcer la sauvegarde de la session
            session()->save();
            
            // Redirection explicite avec un petit délai pour éviter les problèmes de timing
            return redirect()->intended(route('platform.main'))
                ->with('success', 'Connexion réussie')
                ->header('Cache-Control', 'no-cache, no-store, must-revalidate')
                ->header('Pragma', 'no-cache')
                ->header('Expires', '0');
        }
        
        return $response;
    }
    
    /**
     * The user has been authenticated.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  mixed  $user
     * @return mixed
     */
    protected function authenticated(Request $request, $user)
    {
        // Forcer la sauvegarde immédiate de la session
        session()->save();
        
        // Éviter les problèmes de cache
        return redirect()->intended(route('platform.main'));
    }
}
