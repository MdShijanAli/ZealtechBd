@extends('layouts.user-master')
@section('title', 'Service')
@section('user-content')
<section id="breadcrumbs" class="breadcrumbs">
    <div class="container">
        <div class="d-flex justify-content-between align-items-center">
            <h2>Our Services</h2>
            <ol>
                <li><a href="{{ route('home') }}">Home</a></li>
                <li>Service</li>
            </ol>
        </div>
    </div>
</section>
<section id="more-services" class="more-services">
    <div class="container">
        <div class="row">
            @forelse ($services as $service)
            <div class="col-md-6 d-flex align-items-stretch mt-3">
                <div class="card" style="background-image: url('{{ asset($service->image) }}');">
                    <div class="card-body">
                        <h5 class="card-title"><a href="">{{ $service->name }}</a></h5>
                        <div>
                            {!! Str::limit($service->details, 250) !!}
                        </div>
                        <div class="read-more">
                            <a href="{{ route('single-service', $service->slug) }}"><i class="bi bi-arrow-right"></i> Read More</a>
                        </div>
                    </div>
                </div>
            </div>
            @empty  
            <div class="col-md-6 d-flex align-items-stretch">
                <div class="card" style="background-image: url('img/more-services-1.jpg');" data-aos="fade-up">
                    <div class="card-body">
                        <h5 class="card-title"><a href="">Lobira Duno</a></h5>
                        <p class="card-text">Lorem ipsum dolor sit amet, consectetur elit, sed do eiusmod tempor ut labore et dolore magna aliqua.</p>
                        <div class="read-more">
                            <a href="#"><i class="bi bi-arrow-right"></i> Read More</a>
                        </div>
                    </div>
                </div>
            </div>
            @endforelse
        </div>
    </div>
</section>
@endsection