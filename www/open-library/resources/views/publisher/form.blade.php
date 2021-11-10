<h1 class="form-title">{{ ucfirst($mode) }} Publisher</h1>

<div class="form-group">
    <label for="name">Name</label>
    <input type="text" class="form-control" name="name" id="name"
        value="{{ isset($publisher->name) ? $publisher->name : old('name') }}">
</div>

<div class="form-group">
    <label for="address">Address</label>
    <input type="text" class="form-control" name="address" id="address"
        value="{{ isset($publisher->address) ? $publisher->address : old('address') }}">
</div>

<div class="form-group">
    <input class="btn btn-success" type="submit" value="{{ ucfirst($mode) }} publisher">
    <a class="btn btn-primary return-button" href="{{ url('/admin/publisher/') }}">Return</a>
</div>

