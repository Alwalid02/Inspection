@extends('layouts.app')


@section('content')


<div class="container">

    <div class="py-4 pull-right"> 
        @can('property-create')
            <a class="btn btn-primary" href="{{route('properties.create')}}"> إضافة وحدة جديدة</a>
        @endcan
    </div>
    
    <div class="row row-cols-1 row-cols-md-3 g-4">
      
      @foreach ($properties as $property)
        <div class="col">
          
          <div class="card mb-2">
            <a href="{{route('forms', $property->id)}}">
              <img src="https://mdbcdn.b-cdn.net/img/new/standard/city/041.webp" class="card-img-top"
                alt="Hollywood Sign on The Hill" />
              <div class="card-body">
                <h5 class="card-title">{{$property->name}}</h5>
                <p class="card-text">
                  {{$property->description}}
                </p>
              </div>
            </a>
          </div>
        </div>
        {{-- <a class="btn btn-info stretched-link" href="{{ route('properties.show',$property->id) }}">عرض</a>
                @can('property-edit')
                <a class="btn btn-primary stretched-link" href="{{ route('properties.edit',$property->id) }}">تحرير</a>
              @endcan --}}

          {{-- <form action="{{ route('properties.destroy',$property->id) }}" method="POST">
              @csrf
              @method('DELETE')
              @can('property-delete')
              <button type="submit" class="btn btn-danger stretched-link">حذف</button>
              @endcan
          </form> --}}
      @endforeach
    </div>
</div>

@endsection