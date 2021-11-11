@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="container-fluid h-100">
            <div class="row h-100">
                <div class="flex-column h-100 border border-2 p-2 col-12 col-md-auto text-center">
                    <div class="row">
                        <div class="col">
                            @if (empty($book->cover_image))
                                <img class="rounded" width="200px"
                                    src="{{ asset('img') . '/no-book-cover-available.jpg' }}" alt="Book cover">
                            @else
                                <img class="rounded" width="200px"
                                    src="{{ Helper::parseImageUri($book->cover_image) }}" alt="Book cover">

                            @endif
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col">
                            <a class="btn btn-primary btn-lg btn-block btn-icon" href="#">
                                <span class="btn-inner--icon"><i class="fa fa-book"></i></span>
                                <span class="btn-inner--text">Request Book</span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-8">
                    <h1>{{ $book->title }}</h1>
                    <div class="row">
                        <div class="col-12">
                            <span class="font-weight-bold written-by align-middle">Written by:</span>
                        </div>
                        <div class="col-12">
                            @foreach ($book->authors as $author)
                                <a href="/author/{{ $author->id }}"
                                    class="author-link align-middle">{{ $author->first_name }}
                                    {{ $author->last_name }}</a>
                                {{ !$loop->last ? ',' : '' }}
                            @endforeach
                        </div>
                        <div class="col-12">
                            <span class="font-weight-bold written-by align-middle">Publisher:</span>
                            <a href="/publisher/{{ $book->publisher->id }}"
                                class="author-link align-middle">{{ $book->publisher->name }}</a>
                        </div>

                        <div class="col-12 mt-2">
                            <div class="avatar-group">
                                @foreach ($book->authors as $author)
                                    <a href="/author/{{ $author->id }}" class="avatar avatar-md rounded-circle"
                                        data-toggle="tooltip"
                                        data-original-title="{{ $author->first_name }} {{ $author->last_name }}">
                                        @if (empty($author->author_image))
                                            <img class="rounded"
                                                src="{{ asset('img') . '/blank-profile-image.png' }}" alt="Book cover">
                                        @else
                                            <img class="rounded"
                                                src="{{ Helper::parseImageUri($author->author_image) }}"
                                                alt="Book cover">

                                        @endif
                                    </a>
                                @endforeach
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <div class="categories">
                                <span class="font-weight-bold categories align-middle">Categories:</span>
                                @foreach ($book->categories as $category)
                                    <a href="/category/{{ $category->id }}"
                                        class="category-link">{{ $category->name }}</a>{{ !$loop->last ? ',' : '' }}
                                @endforeach
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col">
                            <hr>
                            <span class="description font-weight-bold">Description:</span>
                            <div>
                                {{ $book->description }}
                            </div>
                        </div>
                    </div>
                    <!--
                    <div class="row">
                        <div class="col-12">
                            <h2 class="my-2">Related books</h2>
                        </div>
                        <div class="col-12">
                            //TODO: Get the related books by category or author
                        </div>
                    </div>
                    -->
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
