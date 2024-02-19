<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Clause extends Model
{
    use HasFactory;

     /**
     * The attributes that are mass assignable.
     *	
     * @var array
     */
    protected $fillable = [
        'room_type_id', 'name', 'description'
    ];
    
    public function roomType(){
        return $this->belongsTo(RoomType::class);
    }

    public function inspections(){
        return $this->hasMany(Inspection::class, 'clause_id');
    }
}
