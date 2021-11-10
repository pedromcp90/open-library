@extends('layouts.app')

@section('content')
    <div class="container">
        @include('layouts.partials.message')
        <form action="{{ url('/admin/publisher/' . $publisher->id) }}" method="post" enctype="multipart/form-data">
            @csrf
            {{ method_field('PATCH') }}
            @include('publisher.form', ['mode' => 'edit'])
        </form>
    </div>
@endsection
