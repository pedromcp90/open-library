<div class="container">
    <div class="row align-items-center justify-content-lg-between">
        <div class="col-lg-6">
            <div class="copyright text-center  text-lg-left  text-muted">
                © {{ date('Y') }} <a href="{{ url('/') }}"
                    class="font-weight-bold ml-1">{{ config('app.name', 'Laravel') }}</a>
            </div>
        </div>
        <div class="col-lg-6">
            <ul class="nav nav-footer justify-content-center justify-content-lg-end">
                <li class="nav-item">
                    <a href="{{ url('/') }}" class="nav-link">{{ config('app.name', 'Laravel') }}</a>
                </li>
                <li class="nav-item">
                    <a href="/about" class="nav-link" target="_blank">About Us</a>
                </li>
                <li class="nav-item">
                    <a href="/license" class="nav-link" target="_blank">MIT License</a>
                </li>
            </ul>
        </div>
    </div>
</div>
