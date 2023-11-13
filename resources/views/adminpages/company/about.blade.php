@extends('layouts.admin-master')
@section('title', 'Company About')
@push('admin-css')
<link href="{{ asset('summernote/summernote-bs4.min.css') }}" rel="stylesheet">
@endpush    
@section('admin-content')
<main>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="form-area">
                    <h4 class="heading"><i class="fa fa-address-book"></i> Update Company About</h4>
                    <form action="{{ route('about.update', $about) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="row">
                            <div class="col-md-6 mb-2">
                                <label for="image">About Image</label>
                                <input class="form-control" id="image" type="file" name="image" onchange="readURL(this);">
                            </div>
                            <div class="col-md-4 offset-md-1 mb-2">
                                <img class="form-controlo img-thumbnail" src="#" id="previewImage" style="width: 150px;height: 120px; background: #3f4a49;">
                            </div>
                            <div class="col-md-12 mb-2">
                                <label for="summernote">About Description <span class="text-danger"> * </span></label>
                                <textarea name="description" id="summernote">{{ $about->description }}</textarea>
                            </div>
                        </div>
                        
                        <div class="clearfix mt-1">
                            <div class="float-md-left">
                                <button type="submit" class="btn btn-info">Update</button>
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
    document.getElementById("previewImage").src="{{ $about->image }}";
</script>
@endpush