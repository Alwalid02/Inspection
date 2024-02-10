@extends('layouts.app')


@section('content')

@if($message = Session::get('success'))
<div class="alert alert-success">
	{{ $message }}
</div>
@endif

<div class="container-lg">
   
</div>




<div class="card">
	<div class="card-header">
		<div class="row">
			<div class="col col-md-6"><b>Student Data</b></div>
			<div class="col col-md-6">
				<a href="{{ route('properties.create') }}" class="btn btn-success btn-sm float-end">Add</a>
			</div>
		</div>
	</div>


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

                  <div class="card-body">
                    <table class="table table-bordered">
                        <tr>
                            <th>Image</th>
                            <th>Name</th>
                            <th>Details</th>
                            <th>Floors</th>
                            <th>Action</th>
                        </tr>
                        @if(count($properties) > 0)
            
                            @foreach($properties as $row)
            
                                <tr>
                                    <td><img src="{{ asset('images/' . $row->student_image) }}" width="75" /></td>
                                    <td>{{ $row->name }}</td>
                                    <td>{{ $row->detail }}</td>
                                    <td>{{ $row->floor }}</td>
                                    <td>
                                        <form method="post" action="{{ route('properties.destroy', $row->id) }}">
                                            @csrf
                                            @method('DELETE')
                                            <a href="{{ route('properties.show', $row->id) }}" class="btn btn-primary btn-sm">View</a>
                                            <a href="{{ route('properties.edit', $row->id) }}" class="btn btn-warning btn-sm">Edit</a>
                                            <input type="submit" class="btn btn-danger btn-sm" value="Delete" />
                                        </form>
                                        
                                    </td>
                                </tr>
            
                            @endforeach
            
                        @else
                            <tr>
                                <td colspan="5" class="text-center">No Data Found</td>
                            </tr>
                        @endif
                    </table>
                    {!! $properties->links() !!}
                </div>
            </div>

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
</div>
@endsection