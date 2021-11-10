<div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
      </li>
      @foreach ($navbars as $item)
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-expanded="false">
          {{$item['text']}}
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            @foreach ($item['children'] as $childItem)
                <a class="dropdown-item" href="{{$childItem['url']}}">{{ $childItem['text'] }}</a>
            @endforeach
        </div>
      </li>
      @endforeach
    </ul>
  </div>
