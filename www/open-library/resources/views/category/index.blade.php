@extends('layouts.app')

@section('content')
    <div class="container">
        @include('layouts.partials.message')
        <div class="table-responsive">
            <div>
                <table class="table align-items-center">
                    <thead class="thead-light">
                        <tr>
                            <th scope="col" class="sort" data-sort="id">ID</th>
                            <th>Category Name</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody class="list">
                        @foreach ($categories as $category)
                            <tr>
                                <td class="id">{{ $category->id }}</td>
                                <td class="first_name">{{ $category->name }}</td>
                                <td>
                                    <a class="btn btn-info" href="{{ url('/category/' . $category->id . '/edit') }}">Edit</a>
                                    <form action="{{ url('category/' . $category->id) }}" method="post" class="d-inline">
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
        {!! $categories->links() !!}
    </div>
@endsection
