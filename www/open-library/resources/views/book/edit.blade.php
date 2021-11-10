@extends('layouts.app')
@php
$breadcrumbs = [
    url('/book') => 'Book',
    url('/book/' . $book->id) => 'Edit'
];
@endphp
@section('content')
    <div class="container">
        @include('layouts.partials.message')
        <form action="{{ url('/book/' . $book->id) }}" method="post" enctype="multipart/form-data">
            @csrf
            {{ method_field('PATCH') }}
            @include('book.form', ['mode' => 'edit'])
        </form>
    </div>
    @include('book.modal')
@endsection

