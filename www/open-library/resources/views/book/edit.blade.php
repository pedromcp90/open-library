@extends('layouts.app')

@section('content')
    <div class="container">
        @include('layouts.message')
        <form action="{{ url('/book/' . $book->id) }}" method="post" enctype="multipart/form-data">
            @csrf
            {{ method_field('PATCH') }}
            @include('book.form', ['mode' => 'edit'])
        </form>
    </div>
@endsection
