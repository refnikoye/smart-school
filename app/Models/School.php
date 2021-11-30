<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Passport\HasApiTokens;

class School extends Model
{
    use HasApiTokens,HasFactory, Notifiable;

    protected $fillable = [
        'name', 'email', 'password',
    ];

    public function AauthAcessToken(){
        return $this->hasMany('\App\OauthAccessToken');
    }
}
