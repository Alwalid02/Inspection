<?php

namespace App\Http\Controllers;

use App\Models\Inspection;
use App\Models\Property;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

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
        //
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
        
        $properties = Property::find($property);
        $rooms = $properties->rooms;
        // dd($rooms);
        // $properties->find($property)->get();
        // dd($properties[0]['name']);
        return view('inspections.form', compact('properties' ,'rooms'));

    }
}
