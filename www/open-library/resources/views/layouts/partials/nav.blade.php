<div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
        <li class="nav-item active">
            <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
        </li>
        @foreach ($navbars as $item)
            @if (!empty($item['children']))
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button"
                        data-toggle="dropdown" aria-expanded="false">
                        {{ $item['text'] }}
                        @if(!empty($item['icon']))
                        <i class="fa {{ $item['icon'] }}"></i>
                        @endif
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        @foreach ($item['children'] as $childItem)
                            <a class="dropdown-item" href="{{ $childItem['url'] }}">
                                {{ $childItem['text'] }}
                                @if(!empty($childItem['icon']))
                                <i class="fa {{ $childItem['icon'] }}"></i>
                                @endif
                            </a>
                        @endforeach
                    </div>
                </li>
            @else
            <li class="nav-item">
                <a class="nav-link" href="{{ $item['url'] }}">
                    {{ $item['text'] }}
                    @if(!empty($item['icon'])) <i class="fa {{ $item['icon'] }}"></i>@endif
                </a>
            @endif
        @endforeach
    </ul>
</div>
