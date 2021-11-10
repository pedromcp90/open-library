@extends('layouts.app')
@php
$breadcrumbs = [
    url('/book') => 'Book'
];
@endphp
@section('content')
    <div class="container">
        @include('layouts.partials.message')
        <div class="table-responsive">
            <div>
                <table class="table align-items-center">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col">Cover</th>
                            <th scope="col" class="sort" data-sort="id">ID</th>
                            <th>ISBN</th>
                            <th>Title</th>
                            <th>Publication Year</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody class="list">
                        @foreach ($books as $book)
                            <tr>
                                <td>
                                    @if (empty($book->cover_image))
                                        <img class="img-thumbnail img-fluid" width="100px"
                                            src="{{ asset('img') . '/no-book-cover-available.jpg' }}" alt="Book cover">
                                    @else
                                        <img class="img-thumbnail img-fluid" width="100px"
                                            src="{{ Helper::parseImageUri($book->cover_image) }}" alt="Book cover">

                                    @endif
                                </td>
                                <td class="id">{{ $book->id }}</td>
                                <td class="isbn">{{ Helper::formatISBN($book->isbn) }}</td>
                                <td class="title">{{ $book->title }}</td>
                                <td class="publication_year">{{ $book->publication_year }}</td>
                                <td>
                                    <a class="btn btn-info" href="{{ url('/book/' . $book->id . '/edit') }}">Edit</a>
                                    <form action="{{ url('book/' . $book->id) }}" method="post" class="d-inline">
                                        @csrf
                                        {{ method_field('DELETE') }}
                                        <input class="btn btn-danger" type="submit" value="Delete" />
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
        {!! $books->links() !!}
    </div>
@endsection
