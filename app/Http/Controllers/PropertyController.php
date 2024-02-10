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
        // dd($request->all());
        $user = Auth::user();
        $room = new Room();

        request()->validate([
            'name' => 'required',
            'description' => 'required',
        ]);
    
        $property_id = property::create([
            'company_id' => $user->company->id,
            'name' => $request->name,
            'description' => $request->description,
            'rooms' => $request->rooms,
            'user_id' =>$user->id,
            ])->id;

            $allRooms = [];
        foreach ($request->addmore as $key => $datas){
            array_push($allRooms,[
                $room->company_id = $user->company->id,
                $room->property_id = $property_id,
                $room->name = $request->addmore[$key]['name'],
                $room->description = $request->addmore[$key]['description'],
            ]);
           
        }
        $item = $room::create($allRooms);
        // foreach ($request->addmore as $key => $value) {
        //     $room::create([
        //         'company_id' => $user->company->id,
        //         'property_id' => $property_id,
        //         'name' => $request->name[$key],
        //         'description' => $request->description[$key],
        //     ]);
        // }
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
