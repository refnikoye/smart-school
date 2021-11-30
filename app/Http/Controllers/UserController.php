<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Mail\SendNotifToUser;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Str;

class UserController extends Controller
{
    public function index()
    {
        $users = User::latest()->get();

        return response()->json([
            'success' => true,
            'message' => 'List Data Semua User',
            'data'    => $users  
        ], 200);
    }

    public function show($id)
    {
        $users = User::select('*')->where('user_id',$id)->get();

        return response()->json([
            'success' => true,
            'message' => 'List User Where user_id = '.$id,
            'data'    => $users 
        ], 200);
    }

    public function showbyschool($id)
    {
        $users = User::select('*')->where('school_id',$id)->get();

        return response()->json([
            'success' => true,
            'message' => 'List User Where School ID = '.$id,
            'data'    => $users 
        ], 200);
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'email'     => 'required|unique:users',
            'role'      => 'required'
        ]);
        
        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        $username = Str::random(8);

        $details = [
        'title' => 'Mail from smart-school.com',
        'id' => $request->school_id,
        'username' => $username,
        'password' => $username
        ];
        
        \Mail::to($request->email)->send(new \App\Mail\SendNotifToUser($details));
        
        $user = User::create([
            'school_id' => $request->school_id,
            'email'     => $request->email,
            'username'  => $username,
            'password'  => Hash::make($username),
            'role'      => $request->role
        ]);

        if($user) {
            return response()->json([
                'success' => true,
                'message' => 'User Created',
                'data'    => $user  
            ], 201);
        } 

        return response()->json([
            'success' => false,
            'message' => 'Failed to Save',
        ], 409);
    }

    public function destroy($id)
    {
        $user = User::where('user_id',$id) -> first();

        if($user) {

            User::where('user_id', $id)->delete();

            return response()->json([
                'success' => true,
                'message' => 'User Deleted',
            ], 200);

        }

        return response()->json([
            'success' => false,
            'message' => 'User Not Found',
        ], 404);
    }
}
