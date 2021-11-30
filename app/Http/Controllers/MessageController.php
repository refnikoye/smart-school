<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Events\MessageEvent;
use App\Http\Resources\MessageResource;
use App\Http\Resources\UserResource;
use App\Models\Message;
use App\Models\User;
use Illuminate\Support\Facades\DB;

class MessageController extends Controller
{
    
    protected function send(Request $request)
    {
        $message = Message::create($request->all());
        event(new MessageEvent($message));
        if($message) {
            return response()->json([
                'success' => true,
                'message' => 'Message Send',
                'data'    => $message  
            ], 201);
        } 

        //failed save to database
        return response()->json([
            'success' => false,
            'message' => 'Failed to Save',
        ], 409);
    }

    public function fetchMessage($id)
    {
        $message = Message::select('*')->where('to_id',$id)->get();

        //make response JSON
        return response()->json([
            'success' => true,
            'message' => 'Detail Data School',
            'data'    => $message 
        ], 200);
    }

    protected function read($id)
    {
        return response()->json($id);
        $to = [
            ['from_id', $id]
        ];
        DB::table('messages')->where($to)->update(['read_at' => now()]);
    }

}
