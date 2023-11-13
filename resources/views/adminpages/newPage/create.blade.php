@extends('layouts.admin-master')
@section('title', 'NewPage Create')
@push('admin-css')
<link href="{{ asset('summernote/summernote-bs4.min.css') }}" rel="stylesheet">
@endpush    
@section('admin-content')
<main>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="form-area">
                    <div class="d-flex justify-content-between heading">
                        <h4 class=""><i class="fa fa-cog"></i> Create New Page</h4> 
                        <div>
                            <a href="{{ route('pages.index') }}" class="btn btn-primary btn-sm overflow-hidden">Page list</a>
                        </div>
                    </div>
                    <form action="{{ route('pages.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-md-6 mb-2">
                                <label for="name">Menu Name <span class="text-danger"> * </span></label>
                                <input class="form-control @error('name') is-invalid @enderror" id="name" type="text" name="name" value="{{ old('name') }}" placeholder="Enter name">
                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="title">Page Title <span class="text-danger"> * </span></label>
                                <input class="form-control" id="title" type="text" name="title" value="{{ old('title') }}" placeholder="Enter Page title">
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="sub_title">Page Sub Title <span class="text-danger"> * </span></label>
                                <input class="form-control" id="sub_title" type="text" name="sub_title" value="{{ old('sub_title') }}" placeholder="Enter Sub title">
                            </div>
                            <div class="col-md-12 mb-2">
                                <label for="summernote">Page Content </label>
                                <textarea name="content" id="summernote"></textarea>
                            </div>
                        </div>
                        
                        <div class="clearfix mt-1">
                            <div class="float-md-left">
                                <button type="submit" class="btn btn-info">Save</button>
                                <button type="reset" class="btn btn-dark">Reset</button>
                            </div>
                        </div>

                    </form>

                </div>
            </div>
        </div>
    </div>
</main>
@endsection
@push('admin-js')
<script src="{{ asset('summernote/summernote-bs4.min.js') }}"></script>
<script>
    $('#summernote').summernote({
        tabsize: 2,
        height: 200
    });
</script>
@endpush