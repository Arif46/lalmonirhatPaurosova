<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class BosotbariBusinessMiddleware
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
        if (Auth::check() && (Auth::user()->role === 'Bosot Bari Member' || Auth::user()->role === 'Business Hold Reg') ) {
            return $next($request); 
            } else {
              return redirect('/member/login');
            }
    }
}
