<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;

class UserLoginController extends Controller
{
    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'username' => 'required',
            'password' => 'required',
            'school_id'    => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        $user = User::where([['username','=',$request->username],['school_id','=', $request->school_id]])->first();

        if (!$user || !Hash::check($request->password, $user->password)) {
            return response()->json([
                'success' => false,
                'message' => 'Login Failed!',
                'id' => $request->school_id
            ]);
        }


        return response()->json([
            'success'   => true,
            'message'   => 'Login Success!',
            'data'      => $user,
            'token'     => $user->createToken('authToken')->accessToken
        ]);
    }

    public function logout(Request $request)
    {
        //$removeToken = $request->user()->tokens()->delete();
        if (Auth::check()) {
            Auth::user()->AauthAcessToken()->delete();
        }
        
        //if($removeToken) {
            return response()->json([
                'success' => true,
                'message' => 'Logout Success!',  
            ]);
        //}
    }
}
