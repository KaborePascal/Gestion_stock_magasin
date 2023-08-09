<?php

namespace App\Http\Controllers;
use App\Models\User ;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
class LoginController extends Controller
{
    public function showRegistrationForm()
    {
        return view('auth.register');
    }

    public function register(Request $request)
    {
        $request->validate([
            'email'=>'email:rfc',
            'password'=>'min:6',
            'password_confirmation' =>'required_with:password|same:password|min:6',
            'name'=>'required',
        ]);

         User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password),
        ]);

      

        return redirect('/index');
    }

    public function showLoginForm()
    {
        return view('login');
    }

    public function login(Request $request)
    {
        $credentials = $request->validate([
            'email' => 'required|string|email',
            'password' => 'required|string',
        ]);

        if (Auth::guard('users')->attempt($credentials)) {
            return redirect('index');
        }

        return back()->withErrors([
            'email' => 'Invalid credentials.',
        ]);
    }

  
}
