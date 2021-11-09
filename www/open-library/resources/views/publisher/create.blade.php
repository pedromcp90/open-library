@extends('layouts.app')
@section('content')
    <div class="container">
        @include('layouts.partials.message')
        <form action="{{ url('/publisher') }}" method="post" enctype="multipart/form-data">
            @csrf
            @include('publisher.form', ['mode' => 'create'])
        </form>
    </div>
@endsection
