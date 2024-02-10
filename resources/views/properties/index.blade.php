@extends('layouts.app')


@section('content')


<div class="container">
    <div class="py-4 pull-right"> 
        @can('property-create')
            <a class="btn btn-primary" href="{{route('properties.create')}}"> إضافة وحدة جديدة</a>
        @endcan
    </div>
    
    <div class="row row-cols-1 row-cols-md-3 g-4">
        <div class="col">
          <div class="card">
            <img src="https://mdbcdn.b-cdn.net/img/new/standard/city/041.webp" class="card-img-top"
              alt="Hollywood Sign on The Hill" />
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">
                This is a longer card with supporting text below as a natural lead-in to
                additional content. This content is a little bit longer.
              </p>
              <a href="#" class="btn btn-primary stretched-link">Go somewhere</a>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card">
            <img src="https://mdbcdn.b-cdn.net/img/new/standard/city/042.webp" class="card-img-top"
              alt="Palm Springs Road" />
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">
                This is a longer card with supporting text below as a natural lead-in to
                additional content. This content is a little bit longer.
              </p>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card">
            <img src="https://mdbcdn.b-cdn.net/img/new/standard/city/043.webp" class="card-img-top"
              alt="Los Angeles Skyscrapers" />
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">This is a longer card with supporting text below as a natural lead-in to
                additional content.</p>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card">
            <img src="https://mdbcdn.b-cdn.net/img/new/standard/city/044.webp" class="card-img-top"
              alt="Skyscrapers" />
            <div class="card-body">
              <h5 class="card-title">Card title</h5>
              <p class="card-text">
                This is a longer card with supporting text below as a natural lead-in to
                additional content. This content is a little bit longer.
              </p>
            </div>
          </div>
        </div>
      </div>
  <div class="row justify-content-center">
      <div class="col-md-8">
          <div class="card">
              <div class="card-header">{{ __('Dashboard') }}</div>

              <div class="card-body">
                  @if (session('status'))
                      <div class="alert alert-success" role="alert">
                          {{ session('status') }}
                      </div>
                  @endif

                  {{ __('You are logged in!') }}
              </div>
          </div>
      </div>
  </div>
</div>
    <div class="row">
        <div class="col-lg-12 margin-tb">
            <div class="pull-left">
                <h2>Products</h2>
            </div>
            <div class="pull-right">
                @can('product-create')
                <a class="btn btn-success" href="{{ route('products.create') }}"> Create New Product</a>
                @endcan
            </div>
        </div>
    </div>


    @if ($message = Session::get('success'))
        <div class="alert alert-success">
            <p>{{ $message }}</p>
        </div>
    @endif


    <table class="table table-bordered">
        <tr>
            <th>No</th>
            <th>Name</th>
            <th>Details</th>
            <th width="280px">Action</th>
        </tr>
	    @foreach ($properties as $proprty)
	    <tr>
	        <td>{{ ++$i }}</td>
	        <td>{{ $proprty->name }}</td>
	        <td>{{ $proprty->detail }}</td>
	        <td>
                <form action="{{ route('properties.destroy',$property->id) }}" method="POST">
                    <a class="btn btn-info" href="{{ route('properties.show',$property->id) }}">Show</a>
                    @can('property-edit')
                    <a class="btn btn-primary" href="{{ route('properties.edit',$property->id) }}">Edit</a>
                    @endcan


                    @csrf
                    @method('DELETE')
                    @can('property-delete')
                    <button type="submit" class="btn btn-danger">Delete</button>
                    @endcan
                </form>
	        </td>
	    </tr>
	    @endforeach
    </table>

    {!! $properties->links() !!}

@endsection