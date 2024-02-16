@extends('layouts.app')

@if ($errors->any())
    <div class="alert alert-danger">
        <strong>Whoops!</strong> There were some problems with your input.<br><br>
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

@section('content')
<div class="container">
    <form action="{{route('inspections.store')}}" method="post" enctype="multipart/form-data">
        @include('inspections._form', ['submitText' => __('حفظ')])
    </form>
</div>

    

@endsection