<?php

namespace App\Http\Controllers;

use App\Models\School;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;


class AdminLoginController extends Controller
{
    public function login(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        $school = School::where('email', $request->email)->first();

        if (!$school || !Hash::check($request->password, $school->password)) {
            return response()->json([
                'success' => false,
                'message' => 'Login Failed!',
            ]);
        }


        return response()->json([
            'success'   => true,
            'message'   => 'Login Success!',
            'data'      => $school,
            'token'     => $school->createToken('authToken')->accessToken
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
