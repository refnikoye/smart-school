<?php

namespace App\Http\Controllers;

use App\Models\School;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;


class SchoolController extends Controller
{
    public function index()
    {
        //get data from table school
        $schools = School::latest()->get();

        //make response JSON
        return response()->json([
            'success' => true,
            'message' => 'List Data School',
            'data'    => $schools  
        ], 200);
    }

    public function show($id)
    {
        //find school by ID
        $school = Scholl::findOrfail($id);

        //make response JSON
        return response()->json([
            'success' => true,
            'message' => 'Detail Data School',
            'data'    => $school 
        ], 200);
    }

    public function store(Request $request)
    {
        //set validation
        $validator = Validator::make($request->all(), [
            'email'     => 'required|unique:schools',
            'password'  => 'required',
            'name'      => 'required',
        ]);
        
        //response error validation
        if ($validator->fails()) {
            return response()->json($validator->errors(), 400);
        }

        //save to database
        $school = School::create([
            'email'     => $request->email,
            'password'  => Hash::make($request->password),
            'name'      => $request->name
        ]);

        //success save to database
        if($school) {
            return response()->json([
                'success' => true,
                'message' => 'School Created',
                'data'    => $school  
            ], 201);
        } 

        //failed save to database
        return response()->json([
            'success' => false,
            'message' => 'Failed to Save',
        ], 409);
    }

}
