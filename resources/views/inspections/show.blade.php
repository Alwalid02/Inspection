@extends('layouts.app')


@section('content')
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2> Show property</h2>
            </div>
            <div class="pull-right">
                <a class="btn btn-primary" href="{{ route('properties.index') }}"> Back</a>
            </div>
        </div>
    </div>


    <div class="row">
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Name:</strong>
                {{ $property->name }}
            </div>
        </div>
        <div class="col-xs-12 col-sm-12 col-md-12">
            <div class="form-group">
                <strong>Details:</strong>
                {{ $property->detail }}
            </div>
        </div>
    </div>
@endsection
<p class="text-center text-primary"><small>Tutorial by ItSolutionStuff.com</small></p>