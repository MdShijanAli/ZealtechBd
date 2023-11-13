@extends('layouts.user-master')
@section('title', 'Portfolio')
@section('user-content')
<section id="breadcrumbs" class="breadcrumbs">
    <div class="container">
        <div class="d-flex justify-content-between align-items-center">
            <h2>Our Portfolios</h2>
            <ol>
                <li><a href="{{ route('home') }}">Home</a></li>
                <li>Portfolio</li>
            </ol>
        </div>
    </div>
</section>
<section id="portfolio" class="portfolio mt-2">
    <div class="container">
        <div class="row" data-aos="fade-up" data-aos-delay="200">
            <div class="col-lg-12 d-flex justify-content-center">
                <ul id="portfolio-flters">
                    <li data-filter="*" class="filter-active">All</li>
                    @foreach ($categories as $item)
                        <li data-filter=".{{ $item->name }}">{{ $item->name }}</li>
                    @endforeach
                </ul>
            </div>
        </div>

        <div class="row portfolio-container" data-aos="fade-up" data-aos-delay="400">
            @foreach ($portfolios as $item)
            <div class="col-lg-4 col-md-6 portfolio-item {{ $item->category->name }}">
                <div class="portfolio-wrap">
                    <img class="w-100" src="{{ asset($item->image) }}" class="img-fluid" alt="" />
                    <div class="portfolio-info">
                        <h4>{{ $item->name }}</h4>
                        <div class="portfolio-links">
                            <a href="{{ asset($item->image) }}" data-gallery="portfolioGallery" class="portfolio-lightbox" title="App 1"><i class="fa fa-eye"></i></a>
                            <a href="portfolio-details.html" title="More Details"><i class="bx bx-link"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
@endsection