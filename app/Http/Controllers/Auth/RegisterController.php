<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\Referal;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;


class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = '/login';

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'name' => ['required', 'string', 'max:50'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'ref_by' => ['required', 'string', 'max:60'],
            'password' => ['required', 'string', 'min:8', 'confirmed', 'same:password_confirmation']
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\User
     */
    protected function create(array $data)
    {
        $ref_code = $data['name'].'-'.random_int(10,50000);
        $ref_by = $data['ref_by'];

        //Check if referal code is valid
        $code = Referal::all()->where('ref_code', '=', $ref_by);

        if(count($code) >= 1){
            $user = User::create([
                'name' => $data['name'],
                'email' => $data['email'],
                'role' => 0,
                'password' => Hash::make($data['password']),
            ]);
            
            // Register referals
            $referal = new Referal();
            $referal->ref_code = $ref_code;
            $referal->ref_by = $ref_by;
            
            $user->referals()->save($referal);
            $user->save();


            return $user;
        }
    }
}
