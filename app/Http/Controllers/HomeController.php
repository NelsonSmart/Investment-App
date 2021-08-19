<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Referal;
use App\Models\Deposit;

class HomeController extends Controller
{
    
    
    public function index(Deposit $deposit){
        $path = 'https://skycapitalglobal.com/register/';
        $user = Referal::all()->where('user_id', '=', auth()->user()->id)->first();

        //get auth user referal code
        $ref_code = $path.$user->ref_code;

        //get auth user payments
        if(auth()->user()->role >=1){
            $total_deposits = $deposit->sum('amount') * env('CONVERSION');
        }else{
            $total_deposits = auth()->user()->deposits->sum('amount');
        }
        return view('dashboard', compact('ref_code','total_deposits'));

    }
    
}
