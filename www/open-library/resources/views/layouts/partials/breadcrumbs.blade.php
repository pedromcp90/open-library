@if(isset($breadcrumbs))
<nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
    <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
        <li class="breadcrumb-item"><a href="/"><i class="fas fa-home"></i></a></li>
        @foreach ($breadcrumbs as $uri =>  $name)
            <li class="breadcrumb-item active" aria-current="page">
                <a href="{{ $uri }}">{{$name}}</a>
            </li>
        @endforeach
    </ol>
</nav>
@endif
