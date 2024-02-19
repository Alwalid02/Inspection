<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RoomType extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *	
     * @var array
     */
    protected $fillable = [
        'name', 'description'
    ];

    public function rooms(){
        return $this->hasMany(Room::class, 'room_type_id');
    }
    public function clauses(){
        return $this->hasMany(Clause::class, 'room_type_id');
    }

    public function inspections(){
        return $this->hasMany(Inspection::class, 'room_type_id');
    }
}
