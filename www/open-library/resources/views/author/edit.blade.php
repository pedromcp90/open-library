@extends('layouts.app')

@section('content')
    <div class="container">
        @include('layouts.partials.message')
        <form action="{{ url('/author/' . $book->id) }}" method="post" enctype="multipart/form-data">
            @csrf
            {{ method_field('PATCH') }}
            @include('author.form', ['mode' => 'edit'])
        </form>
    </div>
@endsection
