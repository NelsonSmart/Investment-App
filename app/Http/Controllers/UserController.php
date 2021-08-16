<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class UserController extends Controller
{

    public function index(){
        $users = User::all()->where('role', '=', 0);
        return view('users', compact('users'));
    }

    public function create(){
        //
    }

    public function store(Request $request){
        $user = User::findOrfail(auth()->user()->id);
        $user->name = $request->name;
        $user->email = $request->email;
        $user->state = $request->state;
        $user->city = $request->city;
        $user->zip = $request->zip;
        $user->address = $request->address;
        $user->save();

      return back()->with('status', __('Profile Updated Successfully'));
    }

    public function userProfile(){
        return view('profile');
    }

    public function delete($id){
        $user = User::findOrfail($id);
        $user->delete();
        return back()->with('status', __('User Blocked'));
    }
}
