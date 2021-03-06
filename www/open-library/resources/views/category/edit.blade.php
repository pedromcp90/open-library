@extends('layouts.app')
@section('content')
    <div class="container">
        @include('layouts.partials.message')
        <form action="{{ url('/admin/category/' . $category->id) }}" method="post" enctype="multipart/form-data">
            @csrf
            {{ method_field('PATCH') }}
            @include('category.form', ['mode' => 'edit'])
        </form>
    </div>
@endsection
