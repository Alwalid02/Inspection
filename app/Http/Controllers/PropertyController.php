<?php

namespace App\Http\Controllers;

use App\Models\property;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

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
        request()->validate([
            'name' => 'required',
            'detail' => 'required',
        ]);
    
        property::create($request->all());
    
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
