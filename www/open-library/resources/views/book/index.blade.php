@extends('layouts.app')
@section('content')
    <div class="container">
        @include('layouts.partials.message')
        <div class="table-responsive">
            <table class="table align-items-center">
                <thead class="thead-light">
                    <tr>
                        <th scope="col">Cover</th>
                        <th scope="col" class="sort" data-sort="id">ID</th>
                        <th>ISBN</th>
                        <th>Title</th>
                        <th>Publication Year</th>
                        <th class="text-center">Actions</th>
                    </tr>
                </thead>
                <tbody class="list">
                    @foreach ($books as $book)
                        <tr>
                            <td>
                                @if (empty($book->cover_image))
                                    <img class="img-thumbnail img-fluid" width="60px"
                                        src="{{ asset('img') . '/no-book-cover-available.jpg' }}" alt="Book cover">
                                @else
                                    <img class="img-thumbnail img-fluid" width="60px"
                                        src="{{ Helper::parseImageUri($book->cover_image) }}" alt="Book cover">

                                @endif
                            </td>
                            <td class="id">{{ $book->id }}</td>
                            <td class="isbn">{{ Helper::formatISBN($book->isbn) }}</td>
                            <td class="title">{{ $book->title }}</td>
                            <td class="publication_year">{{ $book->publication_year }}</td>
                            <td class="text-center">
                                <a class="btn btn-sm btn-info" href="{{ url('/admin/book/' . $book->id . '/edit') }}"
                                    data-toggle="tooltip" data-placement="bottom" title="Edit"><i
                                        class="fa fa-pen"></i></a>
                                <form action="{{ url('/admin/book/' . $book->id) }}" method="post" class="d-inline">
                                    @csrf
                                    {{ method_field('DELETE') }}
                                    <a href="#" class="btn-form-submit btn btn-danger btn-sm" data-toggle="tooltip"
                                        data-placement="bottom" title="Delete"><i class="fa fa-trash"></i></a>
                                </form>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
@endsection
