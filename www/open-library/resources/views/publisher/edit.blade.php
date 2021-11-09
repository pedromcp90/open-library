@extends('layouts.app')

@section('content')
    <div class="container">
        @include('layouts.partials.message')
        <form action="{{ url('/publisher/' . $book->id) }}" method="post" enctype="multipart/form-data">
            @csrf
            {{ method_field('PATCH') }}
            @include('publisher.form', ['mode' => 'edit'])
        </form>
    </div>
@endsection
