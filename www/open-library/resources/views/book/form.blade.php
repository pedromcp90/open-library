
<h1>{{ ucfirst($mode) }} Book</h1>
<div class="form-group">
    <label for="isbn">ISBN</label>
    <div class="input-group mb-3">
        <div class="input-group-prepend">
            <span class="input-group-text" id="basic-addon1">ISBN</span>
        </div>
        <input name="isbn" id="isbn" type="text" class="form-control" placeholder="ISBN" aria-label="ISBN"
            value="{{ isset($book->isbn) ? $book->isbn : old('isbn') }}">
    </div>
</div>

<div class="form-group">
    <label for="title">Title</label>
    <input type="text" class="form-control" name="title" id="title"
        value="{{ isset($book->title) ? $book->title : old('title') }}">
</div>
<div class="form-group">
    <label for="publication_year">Publication Year</label>
    <input type="number" class="form-control" name="publication_year" id="publication_year"
        value="{{ isset($book->publication_year) ? $book->publication_year : old('publication_year') }}">
</div>


<div class="form-group">
    <label for="authors">Author(s)</label>
    <select id="authors" class="form-control chosen-select authors-select" name="authors[]" multiple>
        @foreach ($authors as $author)
            {{ $selected = '' }}
            @if (!empty($selected_authors) && in_array($author->id, $selected_authors))
                {{ $selected = 'selected' }}
            @endif
            <option value="{{ $author->id }}" {{ $selected }}>
                {{ $author->first_name . ' ' . $author->last_name }}</option>
        @endforeach

        @php
            unset($author);
        @endphp
    </select>
</div>

<div class="form-group">
    <label for="categories">Subject(s)</label>
    <select id="categories" class="form-control chosen-select categories-select" name="categories[]" multiple>
        @foreach ($categories as $category)
            {{ $selected = '' }}
            @if (!empty($selected_categories) && in_array($category->id, $selected_categories))
                {{ $selected = 'selected' }}
            @endif
            <option value="{{ $category->id }}" {{ $selected }}>{{ $category->name }}</option>
        @endforeach
    </select>
</div>


<div class="form-group">
    <label for="cover_image">Cover Image</label>
    @if (isset($book) && !empty($book->cover_image))
        <img class="img-thumbnail" width="100px" src="{{ asset('storage') . '/' . $book->cover_image }}"
            alt="Book cover">
        <br>
    @endif
    <input type="file" class="form-control" name="cover_image" id="cover_image"
        value="{{ isset($book->cover_image) ? $book->cover_image : '' }}">
</div>
<div class="form-group">
    <input class="btn btn-success" type="submit" value="{{ ucfirst($mode) }} Book">
    <a class="btn btn-primary" href="{{ url('/book/') }}">Return</a>
</div>
