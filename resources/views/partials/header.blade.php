<header id="header" class="sticky-top d-flex align-items-center">
    <div class="container d-flex align-items-center justify-content-between">

    <div class="logo">
        <h1><a href="{{ route('home') }}">ZealtechBD</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="img/logo.png" alt="" class="img-fluid"></a>-->
    </div>

    <nav id="navbar" class="navbar">
        <ul>
        <li><a class="nav-link scrollto active" href="{{ route('home') }}">Home</a></li>
        <li><a class="nav-link scrollto" href="{{ route('home') }}#about">About</a></li>
        <li><a class="nav-link scrollto" href="{{ route('service') }}">Services</a></li>
        <li><a class="nav-link scrollto " href="{{ route('portfolios') }}">Portfolio</a></li>
        <li><a class="nav-link scrollto" href="{{ route('team') }}">Team</a></li>
        {{-- <li><a class="nav-link scrollto" href="#pricing">Pricing</a></li> --}}
        <li><a class="nav-link scrollto" href="{{ route('gallery') }}">Gallery</a></li>
        <li class="dropdown"><a href="#"><span>Other Page</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
                @forelse ($pages as $page)
                    <li><a href="{{ route('other-page', $page->slug) }}">{{ $page->name }}</a></li>
                @empty
                    <li><a href="#">Drop Down 1</a></li>
                    <li><a href="#">Drop Down 2</a></li>
                @endforelse
            </ul>
        </li>
        <li><a class="nav-link scrollto" href="{{ route('contact') }}">Contact</a></li>
        {{-- <li><a class="getstarted scrollto" href="#about">Get Started</a></li> --}}
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
    </nav><!-- .navbar -->

    </div>
</header>