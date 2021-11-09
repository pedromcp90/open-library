@push('head_scripts')
    <script src="{{ asset('vendor/chosen/chosen.jquery.min.js') }}"></script>
@endpush

<h1 class="form-title">{{ ucfirst($mode) }} Publisher</h1>

<div class="form-group">
    <label for="name">First Name</label>
    <input type="text" class="form-control" name="name" id="name"
        value="{{ isset($publisher->name) ? $publisher->name : old('name') }}">
</div>

<div class="form-group">
    <label for="address">Last Name</label>
    <input type="text" class="form-control" name="address" id="address"
        value="{{ isset($publisher->address) ? $publisher->address : old('address') }}">
</div>

<div class="form-group">
    <label for="publisher_image">Publisher Image</label>
    @if (isset($publisher) && !empty($publisher->publisher_image))
        <img class="img-thumbnail" width="100px" src="{{ asset('storage') . '/' . $publisher->publisher_image }}"
            alt="Publisher image">
        <br>
    @endif
    <input type="file" class="form-control" name="publisher_image" id="publisher_image"
        value="{{ isset($publisher->publisher_image) ? $publisher->publisher_image : '' }}">
</div>
<div class="form-group">
    <input class="btn btn-success" type="submit" value="{{ ucfirst($mode) }} publisher">
    <a class="btn btn-primary return-button" href="{{ url('/publisher/') }}">Return</a>
</div>

