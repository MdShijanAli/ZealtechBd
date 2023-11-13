<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class RegistrationController extends Controller
{
    public function index()
    {
        $users = User::all();
        return view('auth.register', compact('users'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|string|min:3',
            'email' => 'required|email',
            'username' => 'required|unique:users',
            'password' => 'required|min:1',
            'image' => 'mimes:jpg,png.jpeg,bmp'
        ]);

        $user = new User();
        $user->name = $request->name;
        $user->email = $request->email;
        $user->username = $request->username;
        $user->password = Hash::make($request->password);
        $user->image = $this->imageUpload($request, 'image', 'uploads/user') ?? '';
        $user->save();
        if($user) {
            return back();
        }
        return redirect()->back()->withInput();
    }
}
