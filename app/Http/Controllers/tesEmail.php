<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Mail\SendNotifToUser;
use Illuminate\Support\Facades\Mail;

class tesEmail extends Controller
{
    public function index(){

        $details = [
        'title' => 'Mail from smart-school.com',
        'body' => 'This is for testing email using smtp'
        ];
       
        \Mail::to('refniideswita@gmail.com')->send(new \App\Mail\SendNotifToUser($details));
       
        dd("Email sudah terkirim.");
    
    }
}
