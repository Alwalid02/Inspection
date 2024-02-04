@extends('layouts.app')


@section('content')
<div class="container">
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
                <form action="{{ route('proprties.destroy',$proprty->id) }}" method="POST">
                    <a class="btn btn-info" href="{{ route('proprties.show',$proprty->id) }}">Show</a>
                    @can('proprty-edit')
                    <a class="btn btn-primary" href="{{ route('proprties.edit',$proprty->id) }}">Edit</a>
                    @endcan


                    @csrf
                    @method('DELETE')
                    @can('proprty-delete')
                    <button type="submit" class="btn btn-danger">Delete</button>
                    @endcan
                </form>
	        </td>
	    </tr>
	    @endforeach
    </table>

    {!! $properties->links() !!}

@endsection