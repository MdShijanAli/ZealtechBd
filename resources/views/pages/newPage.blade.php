@extends('layouts.user-master')
@section('title', '{{ $page->name }}')
@section('user-content')
<section id="more-services" class="more-services UserPage">
    <div class="container">
        <div class="section-title">
            <h2>{{ $page->title }}</h2>
            <p class="mb-3">{{ $page->sub_title }}</p>
            <div class="text-start">
                {!! $page->content !!}
            </div>
        </div>
    </div>
</section>
@endsection