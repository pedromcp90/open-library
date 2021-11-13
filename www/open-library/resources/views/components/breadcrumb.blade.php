<nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
    <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
        <li class="breadcrumb-item"><a href="{{ route('home') }}"><i class="fas fa-home"></i></a></li>
        @php
            $completePath = '';
            $prevRoute ='';
        @endphp

        @empty($paths)
        @else
            @foreach ($paths as $index => $path)
                @php
                    $routeName = str_replace('-', ' ', ucfirst($path)) ;
                    /**
                    * If the route element is numeric that means that this is the element id
                    * So we call our helper to obtain the model title with this id
                    */
                    if(is_numeric($path)){
                        $routeName = Helper::getElementTitleById((int) $path, $prevRoute);
                    }

                    $routeName = \Illuminate\Support\Str::limit($routeName, 20, '...');

                    $completePath .= '/' . $path;
                @endphp
                <li class="breadcrumb-item {{ $loop->last ? 'active' : '' }}">
                    <a href="{{ url($completePath) }}" @if($loop->last) {{'aria-current="page"'}} @endif >{{ $routeName }}</a>
                </li>
                @php
                $prevRoute = $path;
                @endphp
            @endforeach
        @endempty
    </ol>
</nav>
