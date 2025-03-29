<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Room extends Model
{
    use HasFactory;


    public function hotels()
    {
        return $this->belongsTo(Hotel::class);
    }
    public function rezerves()
    {
        return $this->hasMany(Rezerve::class);
    }
}
