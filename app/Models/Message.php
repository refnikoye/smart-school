<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Events\MessageEvent;

class Message extends Model
{
    use HasFactory;

    protected $fillable = [
        'from_id', 'to_id', 'content', 'read_at'
    ];
    protected $casts = [
        'read_at' => 'datetime',
    ];
    

    public function user()
    {
        return $this->belongsTo(User::class);
    }
}
