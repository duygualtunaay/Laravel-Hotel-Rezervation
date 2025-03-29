<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Hotel extends Model
{
    use HasFactory;



    public function category()
    {
        return $this->belongsTo(Category::class);
    }
    public function rooms()
    {
        return $this->belongsTo(Room::class);
    }
    public function reviews()
    {
        return $this->hasMany(Review::class);
    }
    public function rezerves()
    {
        return $this->hasMany(Rezerve::class);
    }
}
