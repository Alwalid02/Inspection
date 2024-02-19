<?php

namespace App\Http\Controllers;

use App\Models\property;
use App\Models\Room;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PropertyController extends Controller
{
     /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    function __construct()
    {
         $this->middleware('permission:property-list|property-create|property-edit|property-delete', ['only' => ['index','show']]);
         $this->middleware('permission:property-create', ['only' => ['create','store']]);
         $this->middleware('permission:property-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:property-delete', ['only' => ['destroy']]);
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $properties = property::latest()->paginate(5);
        return view('properties.index',compact('properties'))
            ->with('i', (request()->input('page', 1) - 1) * 5);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('properties.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        
        $user = Auth::user();
        $rooms = new Room();

        request()->validate([
            'name' => 'required',
            'description' => 'required',
        ]);
    
        $property_id = property::create([
            'company_id' => $user->company->id,
            'name' => $request->name,
            'description' => $request->description,
            'user_id' =>$user->id,
            ])->id;

            foreach($request->all() as $key => $value){

                if($key == "_token")continue;
                if($key == "name")continue;
                if($key == "description")continue;

                if($value == 0)continue;
                for($i=1; $i<=$value; $i++){

                    if($key == 'غرفة_النوم'){
                        $roomType = 1;
                    }elseif ($key == 'الصالة') {
                        $roomType = 2;
                    }elseif ($key == 'المجلس') {
                        $roomType = 3;
                    }elseif ($key == 'المطبخ') {
                        $roomType = 4;
                    }elseif ($key == 'الحمام') {
                        $roomType = 5;
                    }elseif ($key == 'المدخل') {
                        $roomType = 6;
                    }elseif ($key == 'فناء_المنزل') {
                        $roomType = 7;
                    }elseif ($key == 'المساحة_الخارجية') {
                        $roomType = 8;
                    }elseif ($key == 'السطح') {
                        $roomType = 9;
                    }
                    else {
                       $roomType =3;
                    };
                    $rooms::create([
                        'company_id' => $user->company->id,
                        'property_id' => $property_id,
                        'room_type_id' => $roomType,
                        'name' => $key.$i,
                        'description' => '',
                    ]);
                }
            }
        
        return redirect()->route('properties.index')
                        ->with('success','property created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(property $property)
    {
        return view('properties.show',compact('property'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(property $property)
    {
        return view('properties.edit',compact('property'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, property $property)
    {
         request()->validate([
            'name' => 'required',
            'detail' => 'required',
        ]);
    
        $property->update($request->all());
    
        return redirect()->route('properties.index')
                        ->with('success','property updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(property $property)
    {
        $property->delete();
    
        return redirect()->route('properties.index')
                        ->with('success','property deleted successfully');
    }
    
}
