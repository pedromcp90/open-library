@extends('layouts.app')

@section('content')
    <div class="container">
        @include('layouts.partials.message')
        <div class="table-responsive">
            <table class="table align-items-center">
                <thead class="thead-light">
                    <tr>
                        <th scope="col" class="sort" data-sort="id">ID</th>
                        <th>Publisher</th>
                        <th>Address</th>
                        <th class="text-center">Actions</th>
                    </tr>
                </thead>
                <tbody class="list">
                    @foreach ($publishers as $publisher)
                        <tr>
                            <td class="id">{{ $publisher->id }}</td>
                            <td class="name">{{ $publisher->name }}</td>
                            <td class="address">{{ $publisher->address }}</td>
                            <td class="text-center">
                                <a class="btn btn-sm btn-info" href="{{ url('/admin/publisher/' . $publisher->id . '/edit') }}"
                                    data-toggle="tooltip" data-placement="bottom" title="Edit"><i
                                        class="fa fa-pen"></i></a>
                                <form action="{{ url('/admin/publisher/' . $publisher->id) }}" method="post"
                                    class="d-inline">
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
