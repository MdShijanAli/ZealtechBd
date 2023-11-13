@extends('layouts.user-master')
@section('title', 'Team Member')
@section('user-content')
<section id="breadcrumbs" class="breadcrumbs">
    <div class="container">
        <div class="d-flex justify-content-between align-items-center">
            <h2>Our Team</h2>
            <ol>
                <li><a href="{{ route('home') }}">Home</a></li>
                <li>Team</li>
            </ol>
        </div>
    </div>
</section>
<section id="team" class="team section-bg">
    <div class="container">
        <div class="section-title">
            <h2>Team</h2>
            <p>Our Expart & Professional Team Member</p>
        </div>
        <div class="row">
            @forelse ($teams as $member)
                <div class="col-lg-3 col-md-6 d-flex align-items-stretch">
                    <div class="member">
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
@endsection