<h1 class="form-title">{{ ucfirst($mode) }} Category</h1>

<div class="form-group">
    <label for="name">Category</label>
    <input type="text" class="form-control" name="name" id="name"
        value="{{ isset($category->name) ? $category->name : old('name') }}">
</div>
<div class="form-group">
    <input class="btn btn-success" type="submit" value="{{ ucfirst($mode) }} category">
    <a class="btn btn-primary return-button" href="{{ url('/admin/category/') }}">Return</a>
</div>

