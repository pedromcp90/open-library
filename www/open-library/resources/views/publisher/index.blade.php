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
                            <th>Publisher</th>
                            <th>Address</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody class="list">
                        @foreach ($publishers as $publisher)
                            <tr>
                                <td class="id">{{ $publisher->id }}</td>
                                <td class="name">{{ $publisher->name }}</td>
                                <td class="address">{{ $publisher->address }}</td>
                                <td>
                                    <a class="btn btn-info" href="{{ url('/publisher/' . $publisher->id . '/edit') }}">Edit</a>
                                    <form action="{{ url('publisher/' . $publisher->id) }}" method="post" class="d-inline">
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
        {!! $publishers->links() !!}
    </div>
@endsection
