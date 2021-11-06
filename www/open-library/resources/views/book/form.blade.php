<h1>{{ ucfirst($mode)}} Book</h1>
<label for="isbn">ISBN</label>
<input type="text" name="isbn" id="isbn" value="{{ isset($book->isbn) ? $book->isbn : '' }}">
<br>
<label for="title">Title</label>
<input type="text" name="title" id="title" value="{{ isset($book->title) ? $book->title : '' }}">
<br>
<label for="publication_year">Publication Year</label>
<input type="number" name="publication_year" id="publication_year"
    value="{{ isset($book->publication_year) ? $book->publication_year : '' }}">
<br>
<label for="cover_image">Cover Image</label>
<br>
@if (isset($book) && !empty($book->cover_image))
    <img class="img-thumbnail" width="100px" src="{{ asset('storage') . '/' . $book->cover_image }}" alt="Book cover">
    <br>
@endif
<input type="file" name="cover_image" id="cover_image"
    value="{{ isset($book->cover_image) ? $book->cover_image : '' }}">
<input type="submit" value="{{ ucfirst($mode) }} Book">
