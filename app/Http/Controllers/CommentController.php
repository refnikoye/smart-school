<?php

namespace App\Http\Controllers;

use App\Message;
use App\Events\CommentEvent;
use Illuminate\Http\Request;

class CommentController extends Controller
{

    public function fetchComments()
    {
        $comments = Message::all();

        return response()->json($comments);
    }

    public function store(Request $request)
    {
        $comment = Message::create($request->all());

        event(new CommentEvent($comment));
        return response()->json('ok');

    }
}
