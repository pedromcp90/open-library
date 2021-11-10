@extends('layouts.app')
@section('content')
    <div class="container">
        @include('layouts.partials.message')
        <form action="{{ url('/admin/author') }}" method="post" enctype="multipart/form-data">
            @csrf
            @include('author.form', ['mode' => 'create'])
        </form>
    </div>
@endsection
