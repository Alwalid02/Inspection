<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Property extends Model
{
    use HasFactory;
    /**
     * The attributes that are mass assignable.
     *	
     * @var array
     */
    protected $fillable = [
        'company_id', 'name', 'description','rooms','user_id'
    ];

    public function company(){
        return $this->belongsTo(Company::class);
    }

    public function rooms(){
        return $this->hasMany(Room::class, 'property_id');
    }
    public function inspections(){
        return $this->hasMany(Inspection::class, 'property_id');
    }
}
