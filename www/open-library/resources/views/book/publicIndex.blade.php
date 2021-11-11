@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="jumbotron">
                    <h1 class="display-4">Welcome to Open Library</h1>
                    <p class="lead">This website is a Library CRUD example that allows you to manage a library catalog.</p>
                    <hr class="my-4">
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                    </p>
                </div>
            </div>
        </div>
        <div class="row">
            @foreach ($books as $book)
                <div class="col-sm-4">
                    <div class="card">
                        @if(!$book->cover_image)
                            <img class="card-img-top" src="{{ asset('img') . '/no-book-cover-available.jpg' }}"
                                alt="Book cover">
                        @else
                            <img class="card-img-top" src="{{ Helper::parseImageUri($book->cover_image) }}" alt="Book cover">
                        @endif
                        <div class="card-body">
                            <h5 class="card-title">{{ $book->title }}</h5>
                            <p class="card-text">{{ \Illuminate\Support\Str::limit($book->description,150, '...') }}</p>
                            <p>Year: {{ $book->publication_year }}</p>
                            <a href="/book/{{$book->id}}" class="btn btn-primary btn-block">View more</a>
                        </div>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</div>
@endsection
