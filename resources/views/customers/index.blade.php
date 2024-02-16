@extends('layouts.app')


@section('content')


<div class="container">

    <div class="py-4 pull-right"> 
        @can('customer-create')
            <a class="btn btn-primary" href="{{route('customers.create')}}"> إضافة وحدة جديدة</a>
        @endcan
    </div>
    
    <div class="row row-cols-1 row-cols-md-3 g-4">
      
      @foreach ($customers as $customer)
        <div class="col">
          
          <div class="card mb-2">
            <a href="{{route('customers.customer', $customer->id)}}">
              <img src="https://mdbcdn.b-cdn.net/img/new/standard/city/041.webp" class="card-img-top"
                alt="Hollywood Sign on The Hill" />
              <div class="card-body">
                <h5 class="card-title">{{$customer->name}}</h5>
                <p class="card-text">
                  {{$customer->description}}
                </p>
              </div>
            </a>
          </div>
           
              <a class="btn btn-info stretched-link" href="{{ route('customers.show',$customer->id) }}">عرض</a>
                @can('customer-edit')
                <a class="btn btn-primary stretched-link" href="{{ route('customers.edit',$customer->id) }}">تحرير</a>
              @endcan

          <form action="{{ route('customers.destroy',$customer->id) }}" method="POST">
              @csrf
              @method('DELETE')
              @can('customer-delete')
              <button type="submit" class="btn btn-danger stretched-link">حذف</button>
              @endcan
          </form>
        </div>
      @endforeach
    </div>
</div>

@endsection