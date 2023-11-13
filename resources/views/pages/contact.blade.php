@extends('layouts.user-master')
@section('title', 'Contact Us')
@section('user-content')
<main id="main"> 
    {{-- <section class="breadcrumbs">
        <div class="container">
            <div class="d-flex justify-content-between align-items-center">
                <h2>Contact Us</h2>
                <ol>
                    <li><a href="{{ route('home') }}">Home</a></li>
                    <li>Contact Us</li>
                </ol>
            </div>
        </div>
    </section> --}}
    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact UserPage">
        <div class="container">
            <div class="section-title">
                <h2>Contact Us</h2>
                <p class="mb-3">Anything On your Mind. We’ll Be Glad To Assist You!</p>
            </div>

            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="contact-about">
                        <h3>{{ $company->name }}</h3>
                        <p>{{ $company->about }}</p>
                        <div class="social-links">
                            <a href="{{ $company->twitter }}" class="twitter" target="_blank"><i class="bi bi-twitter"></i></a>
                            <a href="{{ $company->facebook }}" class="facebook" target="_blank"><i class="bi bi-facebook"></i></a>
                            <a href="{{ $company->instagram }}" class="instagram" target="_blank"><i class="bi bi-instagram"></i></a>
                            <a href="{{ $company->linkedin }}" class="linkedin" target="_blank"><i class="bi bi-linkedin"></i></a>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 mt-4 mt-md-0">
                    <div class="info">
                        <div>
                            <i class="ri-map-pin-line"></i>
                            <p>
                               {{ $company->address }}
                            </p>
                        </div>

                        <div>
                            <i class="ri-mail-send-line"></i>
                            <p>{{ $company->email }}</p>
                        </div>

                        <div>
                            <i class="ri-phone-line"></i>
                            <p>{{ $company->phone }}</p>
                        </div>
                    </div>
                </div>

                <div class="col-lg-5 col-md-12">
                    <form action="{{ route('contact.store') }}" method="post" class="contact-form">
                        @csrf
                        <div class="form-group">
                            <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" required />
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required />
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject"  />
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="phone" id="phone" placeholder="Phone Number" required />
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" name="message" rows="3" placeholder="Message" ></textarea>
                        </div>
                        <button type="submit" class="btn btn-info mt-1">send message</button>
                    </form>
                </div>
            </div>
            <div class="row mt-4">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3648.701703280049!2d90.41838641530919!3d23.86472399031555!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c5f5f7d97fad%3A0xd3727da1315796d4!2sZealtechStudio!5e0!3m2!1sen!2sbd!4v1615314578399!5m2!1sen!2sbd" width="100%" height="350" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
            </div>
        </div>
        
    </section>
    <!-- End Contact Section -->
</main>
@endsection