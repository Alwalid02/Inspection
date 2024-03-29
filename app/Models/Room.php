<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Room extends Model
{
    use HasFactory;
    
    /**
     * The attributes that are mass assignable.
     *	
     * @var array
     */
    protected $fillable = [
        'company_id', 'property_id', 'room_type_id','name', 'description'
    ];
    public function property(){
        return $this->belongsTo(Property::class);
    }

    public function roomType(){
        return $this->belongsTo(RoomType::class);
    }

    public function company(){
        return $this->belongsTo(Company::class);
    }

    public function inspections(){
        return $this->hasMany(Inspection::class, 'room_id');
    }
}
