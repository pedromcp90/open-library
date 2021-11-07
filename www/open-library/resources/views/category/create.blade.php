@extends('layouts.app')
@section('content')
    <div class="container">
        @include('layouts.partials.message')
        <form action="{{ url('/category') }}" method="post" enctype="multipart/form-data">
            @csrf
            @include('category.form', ['mode' => 'create'])
        </form>
    </div>
@endsection
