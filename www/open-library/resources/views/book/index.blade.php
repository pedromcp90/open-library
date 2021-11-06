<a href="{{ url('/book/create')}}">Create new Book</a>

@if(Session::has('message'))
    {{ Session::get('message')}}
@endif

<table class="table table-light">
    <thead class="thead-light">
        <tr>
            <th>#</th>
            <th>Cover</th>
            <th>ISBN</th>
            <th>Title</th>
            <th>Publication Year</th>
            <th>Actions</th>
        </tr>
    </thead>
    <tbody>
        @foreach ($books as $book)
            <tr>
                <td>{{ $book->id }}</td>
                <td><img class="img-thumbnail"  width="100px" src="{{ asset('storage') . '/' . $book->cover_image }}" alt="Book cover"></td>
                <td>{{ $book->isbn }}</td>
                <td>{{ $book->title }}</td>
                <td>{{ $book->publication }}</td>
                <td>
                    <a href="{{ url('/book/' . $book->id . '/edit') }}">Edit</a>

                    |

                    <form action="{{ url('book/' . $book->id) }}" method="post">
                        @csrf
                        {{ method_field('DELETE') }}
                        <input type="submit" value="Delete"/>
                    </form>
                </td>
            </tr>
        @endforeach
    </tbody>
</table>
