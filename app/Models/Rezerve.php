<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Rezerve extends Model
{
    use HasFactory;
    protected $fillable=[
        'user_id',
        'room_id',
        'IP',
        'rezerve',
        'checkin',
        'checkout',
        'total',
        'days',
    ];
    public function hotel(){
        return $this->belongsTo(Hotel::class);
    }
    public function room(){
        return $this->belongsTo(Room::class);
    }
    public function user(){
        return $this->belongsTo(User::class);
    }
}
