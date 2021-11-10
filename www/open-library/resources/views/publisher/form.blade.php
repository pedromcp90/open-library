@push('head_scripts')
    <script src="{{ asset('vendor/chosen/chosen.jquery.min.js') }}"></script>
@endpush

<h1 class="form-title">{{ ucfirst($mode) }} Publisher</h1>

<div class="form-group">
    <label for="name">Name</label>
    <input type="text" class="form-control" name="name" id="name"
        value="{{ isset($publisher->name) ? $publisher->name : old('name') }}">
</div>

<div class="form-group">
    <label for="city">City</label>
    <input type="text" class="form-control" name="city" id="city"
        value="{{ isset($publisher->city) ? $publisher->city : old('city') }}">
</div>

<div class="form-group">
    <input class="btn btn-success" type="submit" value="{{ ucfirst($mode) }} publisher">
    <a class="btn btn-primary return-button" href="{{ url('/publisher/') }}">Return</a>
</div>

