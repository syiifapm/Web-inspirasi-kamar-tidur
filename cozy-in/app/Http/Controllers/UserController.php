<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function register()
    {
        return view('Frontend.register');
    }

    public function store(Request $request)
    {
        $password = Hash::make($request->password);
        User::create([
            'name' => $request->name,
            'username' => $request->username,
            'password' => $password
        ]);

        return redirect('/login');
    }

    public function login()
    {
        return view('frontend.login');
    }

    public function masuk(Request $request)
    {
        // ddd($request);
        $credentials = $request->validate([
            'username' => 'required',
            'password' => 'required'
        ]);

        if(Auth::attempt($credentials)){
            $request->session()->regenerate(); 
            
            return redirect()->intended('/dashboard/concept');
        }

        return back()->with('loginError', 'Login Gagal!');
    }
}
