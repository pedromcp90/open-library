@extends('layouts.app')
@section('content')
    <div class="container">
        @include('layouts.partials.message')
        <form action="{{ url('/admin/book') }}" method="post" enctype="multipart/form-data">
            @csrf
            @include('book.form', ['mode' => 'create'])
        </form>
    </div>
    @include('book.modal')
@endsection
