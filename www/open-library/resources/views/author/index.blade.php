@extends('layouts.app')

@section('content')
    <div class="container">
        @include('layouts.partials.message')
        <div class="table-responsive">
            <div>
                <table class="table align-items-center">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col"></th>
                            <th scope="col" class="sort" data-sort="id">ID</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody class="list">
                        @foreach ($authors as $author)
                            <tr>
                                <td>
                                    @if (empty($author->author_image))
                                        <img class="img-thumbnail rounded-circle " width="100px"
                                            src="{{ asset('img') . '/blank-profile-image.png' }}" alt="Book author">
                                    @else
                                        <img class="img-thumbnail rounded-circle" width="100px"
                                            src="{{ Helper::parseImageUri($author->author_image) }}" alt="Book author">

                                    @endif
                                </td>
                                <td class="id">{{ $author->id }}</td>
                                <td class="first_name">{{ $author->first_name }}</td>
                                <td class="last_name">{{ $author->last_name }}</td>
                                <td>
                                    <a class="btn btn-info" href="{{ url('/author/' . $author->id . '/edit') }}">Edit</a>
                                    <form action="{{ url('author/' . $author->id) }}" method="post" class="d-inline">
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
        {!! $authors->links() !!}
    </div>
@endsection
