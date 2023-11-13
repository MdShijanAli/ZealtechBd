@extends('layouts.user-master')
@section('title', 'Our Gallery')
@section('user-content')
<section id="gallery" class="portfolio UserPage">
    <div class="container">
        <div class="section-title">
            <h2>Our Gallery</h2>
            <p class="mb-3">Lorem ipsum dolor sit amet consectetur adipisicing.</p>
        </div>
        <div class="row portfolio-container">
            @foreach ($galleries as $gallery)
            <div class="col-lg-3 col-md-6 portfolio-item">
                <div class="portfolio-wrap">
                    <img src="{{ asset($gallery->image) }}" class="img-fluid" alt="" />
                    <div class="portfolio-info">
                        <h4>{{ Str::limit($gallery->title, 25) }}</h4>
                        <div class="portfolio-links">
                            <a href="{{ asset($gallery->image) }}" data-gallery="portfolioGallery" class="portfolio-lightbox" title="{{ $gallery->title }}"><i class="fa fa-eye"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
@endsection
