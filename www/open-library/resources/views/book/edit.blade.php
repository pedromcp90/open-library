@extends('layouts.app')
@section('content')
    <div class="container">
        @include('layouts.partials.message')
        <form action="{{ url('/admin/book/' . $book->id) }}" method="post" enctype="multipart/form-data">
            @csrf
            {{ method_field('PATCH') }}
            @include('book.form', ['mode' => 'edit'])
        </form>
    </div>
    @include('book.modal')
@endsection

