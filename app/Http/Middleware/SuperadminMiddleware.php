<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class SuperadminMiddleware
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
        if (Auth::check() && (Auth::user()->role === 'Super Admin' || Auth::user()->role === 'Support Admin' || Auth::user()->role === 'hdadmin')) {
            return $next($request); 
            } else {
              return redirect('/admin/login');
            }
    }
}
