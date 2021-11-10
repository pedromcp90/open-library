<h1 class="form-title">{{ ucfirst($mode) }} Author</h1>

<div class="form-group">
    <label for="first_name">First Name</label>
    <input type="text" class="form-control" name="first_name" id="first_name"
        value="{{ isset($author->first_name) ? $author->first_name : old('first_name') }}">
</div>

<div class="form-group">
    <label for="last_name">Last Name</label>
    <input type="text" class="form-control" name="last_name" id="last_name"
        value="{{ isset($author->last_name) ? $author->last_name : old('last_name') }}">
</div>

<div class="form-group">
    <label for="author_image">Author Image</label>
    @if (isset($author) && !empty($author->author_image))
        <img class="img-thumbnail" width="100px" src="{{ Helper::parseImageUri($author->author_image) }}"
            alt="Author image">
        <br>
    @endif
    <input type="file" class="form-control" name="author_image" id="author_image"
        value="{{ isset($author->author_image) ? $author->author_image : '' }}">
</div>
<div class="form-group">
    <input class="btn btn-success" type="submit" value="{{ ucfirst($mode) }} author">
    <a class="btn btn-primary return-button" href="{{ url('/admin/author/') }}">Return</a>
</div>
