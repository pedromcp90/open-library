@extends('layouts.app')
@section('content')
    <div class="container">
        @include('layouts.message')
        <form action="{{ url('/book') }}" method="post" enctype="multipart/form-data">
            @csrf
            @include('book.form', ['mode' => 'create'])
        </form>
    </div>
@endsection
