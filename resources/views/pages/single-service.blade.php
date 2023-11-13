@extends('layouts.user-master')
@section('title', 'Single Service')
@section('user-content')
<main id="main">
    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
        <div class="container">
            <div class="d-flex justify-content-between align-items-center">
                <h2>Service Details</h2>
                <ol>
                    <li><a href="{{ route('home') }}">Home</a></li>
                    <li>Service Details</li>
                </ol>
            </div>
        </div>
    </section><!-- End Breadcrumbs -->

    <!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details">
        <div class="container">
            <div class="row gy-4">
                <div class="col-lg-6">
                    <div class="swiper-container">
                        <div class="swiper-wrapper align-items-center">
                            <div class="swiper-slide">
                                <img class="w-100" src="{{ asset($service->image) }}" alt="">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-lg-6">
                    <div class="portfolio-info">
                        <h3>{{ $service->name }}</h3>
                        {!! $service->details !!}
                    </div>
                </div>

            </div>

        </div>
    </section><!-- End Portfolio Details Section -->

  </main><!-- End #main -->
@endsection