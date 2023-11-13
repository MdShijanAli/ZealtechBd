<?php

namespace App\Http\Controllers\Admin;

use App\Models\User;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AuthenticationController extends Controller
{
    // login 
    public function login()
    {
        return view('auth.login');
    }

    // Authentication check
    public function AuthCheck(Request $request)
    {
        $request->validate([
            'username' => 'required|string',
            'password' => 'required|min:1',
        ]);

        $credentials = $request->only('username', 'password');
        if(Auth::attempt($credentials))
        {
            return redirect()->intended('home');
        }
        return redirect()->route('login')->withInput();
    }

    // logout 
    public function logout()
    {
        Auth::logout();
        return redirect()->route('login');
    }

    public function profile() {
        
        return view('auth.profile');
    }

    public function profileUpdate(Request $request)
    {
        $request->validate([
            'name' => 'required|string',
            'email' => 'required|email',
            'username' => 'required',
            'image' => 'mimes:jpg,png.jpeg,bmp'
        ]);

        $user = User::findOrFail(Auth::id());
        
        $profileImage = '';
        if($request->hasFile('image')) {
            if(!empty($user->image) && file_exists($user->image)) {
                unlink($user->image);
            }
            $profileImage = $this->imageUpload($request, 'image', 'uploads/user');
        } else {
            $profileImage = $user->image;
        }


        $user->name = $request->name;
        $user->email = $request->email;
        $user->username = $request->username;
        $user->image = $profileImage;
        $user->save();
        if($user)
        {
            return redirect()->back();
        }
        return redirect()->back()->withInput();
    }


    // password change
    public function passwordUpdate(Request $request)
    {
        $this->validate($request,[
            'old_password' => 'required',
            'password' => 'required',
        ]);
        $has_password = Auth::user()->password;
        if(Hash::check($request->old_password, $has_password))
        {
            if(!Hash::check($request->password, $has_password))
            {
                $user = User::findOrFail(Auth::id());
                $user->password = Hash::make($request->password);
                $user->save();
                Auth::logout();
                return redirect()->route('login');
            }
            else
            {
                return redirect()->back()->withInput();
            }
        }
        else
        {
            return 'password dose not match';
        }
    }

}
