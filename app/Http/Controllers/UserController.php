<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use App\Models\User ;
use Illuminate\Support\Facades\Auth;
class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    
    public function index()
    {
        //
        $user=DB::table('users')->get();
      
        return view('user.index',['users'=>$user]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $produit=new User();
        return view('user.create',['message'=>'','code'=>''] );
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // //
        // $produit->create($request->all());
        //dd($produit);
        $request->validate([
            'email'=>'email:rfc',
            'password'=>'min:6',
            'password_confirmation' =>'required_with:password|same:password|min:6',
            'name'=>'required',
            // 'username'=>
            'role'=>'required|declined_if:role,default'
        ]);
        $request->merge(['password' => Hash::make($request->get('password'))]);
        User::create($request->all());
        return view('user.create',['message'=>'l\'utilisateur '.$request->name.' a été crée avec success ','code'=>'success']);
    }

    
    public function showLoginForm()
{
    return view('auth.login');
}


public function login(Request $request)
{
    $credentials = $request->only('email', 'password');

    if (Auth::attempt($credentials)) {
        return redirect()->route('index'); // Assurez-vous que 'index' est le nom de la route pour la page index
    }

    return back()->withErrors([
        'email' => 'Les informations de connexion sont incorrectes.',
    ]);
}

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
