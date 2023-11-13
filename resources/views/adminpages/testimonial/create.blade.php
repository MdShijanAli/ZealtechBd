@extends('layouts.admin-master')
@section('title', 'Testimonial Create')
@push('admin-css')
@endpush    
@section('admin-content')
<main>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="form-area">
                    <div class="d-flex justify-content-between heading">
                        <h4 class=""><i class="fa fa-quote-left"></i> Add New Testimonial</h4>
                        <div>
                            <a href="{{ route('testimonial.index') }}" class="btn btn-primary btn-sm overflow-hidden">Testimonial list</a>
                        </div>
                    </div>
                    <form action="{{ route('testimonial.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-md-6 mb-2">
                                <label for="name">Name <span class="text-danger">*</span> </label>
                                <input type="text" name="name" value="{{ old('name') }}" class="form-control shadow-none @error('name') is-invalid @enderror" id="name" placeholder="Enter name">
                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="designation"> Designation </label>
                                <input type="text" name="designation" value="{{ old('designation') }}" class="form-control shadow-none @error('designation') is-invalid @enderror" id="designation" placeholder="Enter Designation">
                                @error('designation')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="priority"> Priority <span class="text-danger">*</span> </label>
                                <input type="number" name="priority" value="{{ old('priority') }}" class="form-control shadow-none @error('priority') is-invalid @enderror" id="priority" placeholder="0">
                                @error('priority')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror

                                <label for="image">Image <span class="text-danger">*</span></label>
                                <input class="form-control" id="image" type="file" name="image" onchange="readURL(this);">
                                <div class="form-group mt-2">
                                    <img class="form-controlo img-thumbnail" src="#" id="previewImage" style="width: 120px;height: 100px; background: #3f4a49;">
                                </div>
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="quote"> Testimonial Quote <span class="text-danger">*</span></label>
                                <textarea name="quote" id="" cols="4" rows="4" class="form-control shadow-none @error('quote') is-invalid @enderror" id="quote" placeholder="Enter Testimonial Quote"></textarea>
                                @error('quote')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror

                            </div>
                        </div>
                        <div class="clearfix mt-1">
                            <div class="float-md-left">
                                <button type="submit" class="btn btn-info">Create</button>
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
<script>
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) {
                $('#previewImage')
                    .attr('src', e.target.result)
                    .width(120)
                    .height(100);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
    document.getElementById("previewImage").src="/noimage.png";
</script>
@endpush