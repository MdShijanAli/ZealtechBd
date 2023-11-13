@extends('layouts.admin-master')
@section('title', 'Service')
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
                        <h4 class=""><i class="fa fa-cog"></i> Add new Service</h4>
                        <div>
                            <a href="{{ route('services.index') }}" class="btn btn-primary btn-sm overflow-hidden">service list</a>
                        </div>
                    </div>
                    <form action="{{ route('services.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-md-6 mb-2">
                                <label for="name">Service Name <span class="text-danger"> * </span></label>
                                <input class="form-control @error('name') is-invalid @enderror" id="name" type="text" name="name" value="{{ old('name') }}" placeholder="Enter service name">
                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror

                                <label for="image" class="mt-2">Service Image</label>
                                <input class="form-control" id="image" type="file" name="image" onchange="readURL(this);">
                            </div>
                            <div class="col-md-4 offset-md-1 mt-3">
                                <img class="form-controlo img-thumbnail" src="#" id="previewImage" style="width: 150px;height: 120px; background: #3f4a49;">
                            </div>
                            <div class="col-md-6">
                                <label for="Icon">Service Icon</label>
                                <input class="form-control" id="Icon" type="file" name="icon">
                            </div>
                            <div class="col-md-12 my-2">
                                <label for="summernote">Service Details </label>
                                <textarea name="details" id="summernote"></textarea>
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

<script>
    function readURL(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            
            reader.onload = function (e) {
                $('#previewImage')
                    .attr('src', e.target.result)
                    .width(150)
                    .height(120);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
    document.getElementById("previewImage").src="noimage.png";
</script>
@endpush