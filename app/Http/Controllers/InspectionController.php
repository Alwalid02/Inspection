<?php

namespace App\Http\Controllers;

use App\Models\Inspection;
use App\Models\Property;
use App\Models\Clause;
use App\Models\RoomType;
use App\Models\Room;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;


class InspectionController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('inspections.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {

        dd($request->all());
        $user = Auth::user();

        // get the input arrays
        $property_ids = $request->input('property_id');
        $room_type_ids = $request->input('room_type_id');
        $room_ids = $request->input('room_id');
        $clause_ids  = $request->input('clause_id');
        $statuses = $request->input('statuse');
        $notes = $request->input('note');
       
        // loop through the arrays and create data models
        foreach ($clause_ids as $index => $clause_id) {
            $property_id = $property_ids[$index];
            $room_type_id = $room_type_ids[$index];
            $room_id = $room_ids[$index];
            $clause_id = $clause_ids[$index];
            $statuse = $statuses[$index];
            $note = $notes[$index];
            Inspection::create([
                'company_id' => $user->company->id,
                'property_id' => $property_id,
                'room_type_id' => $room_type_id,
                'room_id' => $room_id,
                'clause_id' => $clause_id,
                'statuse' =>$statuse,
                'note' => '$note',
                'created_by' => $user->id,
            ]);
        }
        return redirect()->route('properties.index')
                        ->with('success','property created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(Inspection $inspection)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Property $property)
    {
        
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Inspection $inspection)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Inspection $inspection)
    {
        //
    }

    /**
     * 
     */
    public function forms($property){

        $roomType = RoomType::with('clauses')->get();
        $rooms = Room::with('roomType')->where('property_id', $property)->get();
        $clauses = Clause::with('roomType')->get();

        // dd($roomType[4]->clauses);
       
        $properties = Property::find($property);
        // $rooms = $properties->rooms;
        $property_id = $properties->id;
        // $properties->find($property)->get();
        // dd($properties[0]['name']);
        return view('inspections.form', compact('property_id' ,'rooms', 'roomType'));

    }
}
