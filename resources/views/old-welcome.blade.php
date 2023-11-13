@extends('layouts.user-master')
@section('title', 'Home')
@push('user-css')
<link rel="stylesheet" href="{{ asset('css/owl.carousel.min.css') }}">
@endpush
@section('user-content')
<section id="hero" class="d-flex align-items-center">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 pt-5 pt-lg-0 order-2 order-lg-1 d-flex flex-column justify-content-center">
                <h1 data-aos="fade-up">Grow your business with ZealtechStudio</h1>
                <h2 data-aos="fade-up" data-aos-delay="400">We are team of talented designers making websites, UX UI Design, Graphic Design.</h2>
                <div data-aos="fade-up" data-aos-delay="800">
                    <a href="{{ route('contact') }}" class="btn-get-started scrollto">Get Started</a>
                </div>
            </div>
            <div class="col-lg-6 order-1 order-lg-2 hero-img" data-aos="fade-left" data-aos-delay="200">
                <img src="img/hero-img.png" class="img-fluid animated" alt="" />
            </div>
        </div>
    </div>
</section>
<!-- End Hero -->

<main id="main">
    <!-- ======= About Us Section ======= -->
    <section id="about" class="about">
        <div class="container">
            <div class="section-title" data-aos="fade-up">
                <h2>About Us</h2>
            </div>

            <div class="row content">
                <div class="col-lg-12" data-aos="fade-up" data-aos-delay="150">
                    {!! $about->description !!}
                    {{-- <a href="#" class="btn-learn-more">Learn More</a> --}}
                </div>
            </div>
        </div>
    </section>
    <!-- End About Us Section -->

    <!-- ======= Counts Section ======= -->
    <section id="counts" class="counts">
        <div class="container">
            <div class="row">
                <div class="image col-xl-5 d-flex align-items-stretch justify-content-center justify-content-xl-start" data-aos="fade-right" data-aos-delay="150">
                    <img style="object-fit: cover;" src="{{ $about->image }}" alt="" class="img-fluid" />
                </div>

                <div class="col-xl-7 d-flex align-items-stretch pt-4 pt-xl-0" data-aos="fade-left" data-aos-delay="300">
                    <div class="content d-flex flex-column justify-content-center">
                        <div class="row">
                            <div class="col-md-6 d-md-flex align-items-md-stretch">
                                <div class="count-box">
                                    <i class="bi bi-emoji-smile"></i>
                                    <span data-purecounter-start="0" data-purecounter-end="25" data-purecounter-duration="1" class="purecounter"></span>
                                    <p><strong>Happy Clients</strong> consequuntur voluptas nostrum aliquid ipsam architecto ut.</p>
                                </div>
                            </div>

                            <div class="col-md-6 d-md-flex align-items-md-stretch">
                                <div class="count-box">
                                    <i class="bi bi-journal-richtext"></i>
                                    <span data-purecounter-start="0" data-purecounter-end="25" data-purecounter-duration="1" class="purecounter"></span>
                                    <p><strong>Projects</strong> adipisci atque cum quia aspernatur totam laudantium et quia dere tan</p>
                                </div>
                            </div>

                            <div class="col-md-6 d-md-flex align-items-md-stretch">
                                <div class="count-box">
                                    <i class="bi bi-clock"></i>
                                    <span data-purecounter-start="0" data-purecounter-end="2" data-purecounter-duration="1" class="purecounter"></span>
                                    <p><strong>Years of experience</strong> aut commodi quaerat modi aliquam nam ducimus aut voluptate non vel</p>
                                </div>
                            </div>

                            <div class="col-md-6 d-md-flex align-items-md-stretch">
                                <div class="count-box">
                                    <i class="bi bi-award"></i>
                                    <span data-purecounter-start="0" data-purecounter-end="5" data-purecounter-duration="1" class="purecounter"></span>
                                    <p><strong>Awards</strong> rerum asperiores dolor alias quo reprehenderit eum et nemo pad der</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End .content-->
                </div>
            </div>
        </div>
    </section>
    <!-- End Counts Section -->

    <!-- ======= Services Section ======= -->
    <section id="services" class="services">
        <div class="container">
            <div class="section-title" data-aos="fade-up">
                <h2>Services</h2>
                <p>In One Roof Providing Solutions and services to make your Business Easier.</p>
            </div>
            <div class="row">
                @foreach ($services as $service)
                <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0">
                    <div class="icon-box" data-aos="fade-up" data-aos-delay="200">
                        <div class="icon"><img style="height: 40px;" src="{{ asset($service->icon) }}" alt=""></div>
                        <h4 class="title"><a href="">{{ $service->name }}</a></h4>
                        <p class="description">{!! Str::limit($service->details, 220) !!}</p>
                    </div>
                </div>
                @endforeach

            </div>
        </div>
    </section>
    <!-- End Services Section -->

    <!-- ======= Features Section ======= -->
    <section id="features" class="features">
        <div class="container">
            <div class="section-title" data-aos="fade-up">
                <h2>Features</h2>
                <p>Getting Started Easyly to Get Your Unlimited Solutions</p>
            </div>

            <div class="row" data-aos="fade-up" data-aos-delay="300">
                <div class="col-lg-3 col-md-4">
                    <div class="icon-box">
                        <i class="ri-store-line" style="color: #ffbb2c;"></i>
                        <h3><a href="">Logo Design</a></h3>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 mt-4 mt-md-0">
                    <div class="icon-box">
                        <i class="ri-bar-chart-box-line" style="color: #5578ff;"></i>
                        <h3><a href="">Banner / add Design</a></h3>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 mt-4 mt-md-0">
                    <div class="icon-box">
                        <i class="ri-calendar-todo-line" style="color: #e80368;"></i>
                        <h3><a href="">Business Card Design</a></h3>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 mt-4 mt-lg-0">
                    <div class="icon-box">
                        <i class="ri-paint-brush-line" style="color: #e361ff;"></i>
                        <h3><a href="">Poster Design </a></h3>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 mt-4">
                    <div class="icon-box">
                        <i class="ri-disc-line" style="color: #b20969;"></i>
                        <h3><a href="">Motion Graphics</a></h3>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 mt-4">
                    <div class="icon-box">
                        <i class="ri-base-station-line" style="color: #ff5828;"></i>
                        <h3><a href="">video Editing</a></h3>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 mt-4">
                    <div class="icon-box">
                        <i class="ri-database-2-line" style="color: #47aeff;"></i>
                        <h3><a href="">TVC Ad Making </a></h3>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 mt-4">
                    <div class="icon-box">
                        <i class="ri-price-tag-2-line" style="color: #4233ff;"></i>
                        <h3><a href="">Social Media Marketing</a></h3>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 mt-4">
                    <div class="icon-box">
                        <i class="ri-fingerprint-line" style="color: #29cc61;"></i>
                        <h3><a href="">Products design and Multimedia</a></h3>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 mt-4">
                    <div class="icon-box">
                        <i class="ri-gradienter-line" style="color: #ffa76e;"></i>
                        <h3><a href="">App Development</a></h3>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 mt-4">
                    <div class="icon-box">
                        <i class="ri-file-list-3-line" style="color: #11dbcf;"></i>
                        <h3><a href="">Web Application</a></h3>
                    </div>
                </div>
                <div class="col-lg-3 col-md-4 mt-4">
                    <div class="icon-box">
                        <i class="ri-anchor-line" style="color: #b2904f;"></i>
                        <h3><a href="">Custom website</a></h3>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Features Section -->

    <!-- ======= Testimonials Section ======= -->
    <section id="testimonials" class="testimonials section-bg">
        <div class="container">
            <div class="section-title" data-aos="fade-up">
                <h2>Testimonials</h2>
                <p>Greate Quites Give us Encouragement and inspirations</p>
            </div>

            <div class="testimonials-slider swiper-container" data-aos="fade-up" data-aos-delay="100">
                <div class="swiper-wrapper">

                    <!-- start testimonial item -->
                    @forelse ($testimonials as $item)
                    <div class="swiper-slide">
                        <div class="testimonial-wrap">
                            <div class="testimonial-item">
                                <img src="{{ asset($item->image) }}" class="testimonial-img" alt="" />
                                <h3>{{ $item->name }}</h3>
                                <h4>{{ $item->designation }}</h4>
                                <p>
                                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                    {{ $item->quote }}
                                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                </p>
                            </div>
                        </div>
                    </div>
                    @empty   
                    <div class="swiper-slide">
                        <div class="testimonial-wrap">
                            <div class="testimonial-item">
                                <img src="img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="" />
                                <h3>Sara Wilsson</h3>
                                <h4>Designer</h4>
                                <p>
                                    <i class="bx bxs-quote-alt-left quote-icon-left"></i>
                                    Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.
                                    <i class="bx bxs-quote-alt-right quote-icon-right"></i>
                                </p>
                            </div>
                        </div>
                    </div>
                    @endforelse
                    <!-- End testimonial item -->
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
    </section>
    <!-- End Testimonials Section -->

    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio">
        <div class="container">
            <div class="section-title" data-aos="fade-up">
                <h2>Portfolio</h2>
                <p>A Portfolio can show, What we do and How we solve your Problem.</p>
            </div>

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
    <!-- End Portfolio Section -->

    <!-- ======= Team Section ======= -->
    <section id="team" class="team section-bg">
        <div class="container">
            <div class="section-title" data-aos="fade-up">
                <h2>Team</h2>
                <p>Our Expart & Professional Team Member</p>
            </div>

            <div class="row">
                @forelse ($teams as $member)
                    <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
                        <div class="member" data-aos="fade-up" data-aos-delay="100">
                            <div class="member-img">
                                <img src="{{ $member->image }}" class="img-fluid" alt="" />
                                <div class="social">
                                    <a href="{{ $member->twitter }}" target="_blank"><i class="bi bi-twitter"></i></a>
                                    <a href="{{ $member->facebook }}" target="_blank"><i class="bi bi-facebook"></i></a>
                                    <a href="{{ $member->instagram }}" target="_blank"><i class="bi bi-instagram"></i></a>
                                    <a href="{{ $member->linkedin }}" target="_blank"><i class="bi bi-linkedin"></i></a>
                                </div>
                            </div>
                            <div class="member-info">
                                <h4>{{ $member->name }}</h4>
                                <span>{{ $member->designation }}</span>
                            </div>
                        </div>
                    </div>
                @empty
                    <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
                        <div class="member" data-aos="fade-up" data-aos-delay="100">
                            <div class="member-img">
                                <img src="img/team/team-1.jpg" class="img-fluid" alt="" />
                                <div class="social">
                                    <a href=""><i class="bi bi-twitter"></i></a>
                                    <a href=""><i class="bi bi-facebook"></i></a>
                                    <a href=""><i class="bi bi-instagram"></i></a>
                                    <a href=""><i class="bi bi-linkedin"></i></a>
                                </div>
                            </div>
                            <div class="member-info">
                                <h4>Walter White</h4>
                                <span>Chief Executive Officer</span>
                            </div>
                        </div>
                    </div>
                @endforelse
            </div>
        </div>
    </section>
    <!-- End Team Section -->

    <!-- ======= Pricing Section ======= -->
    {{-- <section id="pricing" class="pricing">
        <div class="container">
            <div class="section-title">
                <h2>Pricing</h2>
                <p>Sit sint consectetur velit nemo qui impedit suscipit alias ea</p>
            </div>

            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="box" data-aos="zoom-in-right" data-aos-delay="200">
                        <h3>Free</h3>
                        <h4><sup>$</sup>0<span> / month</span></h4>
                        <ul>
                            <li>Aida dere</li>
                            <li>Nec feugiat nisl</li>
                            <li>Nulla at volutpat dola</li>
                            <li class="na">Pharetra massa</li>
                            <li class="na">Massa ultricies mi</li>
                        </ul>
                        <div class="btn-wrap">
                            <a href="#" class="btn-buy">Buy Now</a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mt-4 mt-md-0">
                    <div class="box recommended" data-aos="zoom-in" data-aos-delay="100">
                        <h3>Business</h3>
                        <h4><sup>$</sup>19<span> / month</span></h4>
                        <ul>
                            <li>Aida dere</li>
                            <li>Nec feugiat nisl</li>
                            <li>Nulla at volutpat dola</li>
                            <li>Pharetra massa</li>
                            <li class="na">Massa ultricies mi</li>
                        </ul>
                        <div class="btn-wrap">
                            <a href="#" class="btn-buy">Buy Now</a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-4 col-md-6 mt-4 mt-lg-0">
                    <div class="box" data-aos="zoom-in-left" data-aos-delay="200">
                        <h3>Developer</h3>
                        <h4><sup>$</sup>29<span> / month</span></h4>
                        <ul>
                            <li>Aida dere</li>
                            <li>Nec feugiat nisl</li>
                            <li>Nulla at volutpat dola</li>
                            <li>Pharetra massa</li>
                            <li>Massa ultricies mi</li>
                        </ul>
                        <div class="btn-wrap">
                            <a href="#" class="btn-buy">Buy Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section> --}}
    <!-- End Pricing Section -->

    <!-- ======= Clients Section ======= -->
    <section id="clients" class="clients clients">
        <div class="container">
            <div class="row owl-carousel owl-theme">
                @forelse ($clients as $item)
                <div class="item">
                    <img src="{{ asset($item->image) }}" class="img-fluid" alt="" data-aos="zoom-in" data-aos-delay="100" />
                </div>
                @empty   
                <div class="col-lg-2 col-md-4 col-6">
                    <img src="img/clients/client-2.png" class="img-fluid" alt="" data-aos="zoom-in" data-aos-delay="100" />
                </div>
                @endforelse
            </div>
        </div>
    </section>
    <!-- End Clients Section -->
</main>
@endsection
@push('user-js')
<script src="{{ asset('js/owl.carousel.min.js') }}"></script>
<script>
    $('.owl-carousel').owlCarousel({
        center: true,
        loop: true,
        nav: false,
        autoplay: true,
        autoplayTimeout: 2000,
        // autoplayHoverPause: true,
        margin: 15,
        responsive:{
            0: {
                items: 1,
                loop: true
            },
            400: {
                items: 2,
                loop: true
            },
            600: {
                items: 3,
                loop: true
            },
            1000: {
                items: 6,
                loop: true
            }
        }
    })
</script>
@endpush