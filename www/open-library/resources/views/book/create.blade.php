@extends('layouts.app')
@php
$breadcrumbs = [
    url('/book') => 'Book',
    url('/book/create') => 'Create'
];
@endphp

@section('content')
    <div class="container">
        @include('layouts.partials.message')
        <form action="{{ url('/book') }}" method="post" enctype="multipart/form-data">
            @csrf
            @include('book.form', ['mode' => 'create'])
        </form>
    </div>
    @include('book.modal')
@endsection
