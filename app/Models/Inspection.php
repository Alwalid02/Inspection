<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Inspection extends Model
{
    use HasFactory;
    /**
     * The attributes that are mass assignable.
     *	
     * @var array
     */
    protected $fillable = [
        'company_id', 'from_id', 'property_id', 'room_type_id', 'room_id', 'clause_id', 'title','statuse', 'note',
    ];

    public function company(){
        return $this->belongsTo(Company::class);
    }

    public function form(){
        return $this->belongsTo(Form::class);
    }

    public function property(){
        return $this->belongsTo(Property::class);
    }

    public function roomType(){
        return $this->belongsTo(RoomType::class);
    }

    public function room(){
        return $this->belongsTo(Room::class);
    }

    public function clause(){
        return $this->belongsTo(Clause::class);
    }
}
