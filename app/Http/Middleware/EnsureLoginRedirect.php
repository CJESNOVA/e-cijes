<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class EnsureLoginRedirect
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle(Request $request, Closure $next)
    {
        // Si c'est une requête POST de login
        if ($request->isMethod('POST') && $request->route()->getName() === 'platform.login.auth') {
            // Attendre que la session soit sauvegardée
            session()->save();
            
            // Forcer la redirection après un court délai
            if (Auth::check()) {
                return redirect()->intended(route('platform.main'))->with('success', 'Connexion réussie');
            }
        }
        
        return $next($request);
    }
}
