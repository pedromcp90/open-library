@extends('layouts.app')

@section('content')
    <div class="container">
        @include('layouts.partials.message')
        <div class="table-responsive">

                <table class="table align-items-center">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col"></th>
                            <th scope="col" class="sort" data-sort="id">ID</th>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th class="text-center">Actions</th>
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
                                <td class="text-center">
                                    <a class="btn btn-sm btn-info" href="{{ url('/admin/author/' . $author->id . '/edit') }}" data-toggle="tooltip" data-placement="bottom" title="Edit"><i class="fa fa-pen"></i></a>
                                    <form action="{{ url('/admin/author/' . $author->id) }}" method="post" class="d-inline">
                                        @csrf
                                        {{ method_field('DELETE') }}
                                        <a href="#" class="btn-form-submit btn btn-danger btn-sm"  data-toggle="tooltip" data-placement="bottom" title="Delete"><i class="fa fa-trash"></i></a>
                                    </form>
                                </td>
                            </tr>
                        @endforeach
                    </tbody>
                </table>
        </div>
    </div>
@endsection
