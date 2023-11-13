@extends('layouts.admin-master')
@section('title', 'Company Information')
@push('admin-css')
@endpush    
@section('admin-content')
<main>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="form-area">
                    <h4 class="heading"><i class="fa fa-address-card"></i> Update Company Information</h4>
                    <form action="{{ route('company.update', $company) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="row">
                            <div class="col-md-6 mb-2">
                                <label for="name">Company Name <span class="text-danger">*</span> </label>
                                <input type="text" name="name" value="{{ $company->name }}" class="form-control shadow-none @error('name') is-invalid @enderror" id="name">
                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="phone">Company Phone <span class="text-danger">*</span> </label>
                                <input type="text" name="phone" value="{{ $company->phone }}" class="form-control shadow-none @error('phone') is-invalid @enderror" id="phone">
                                @error('phone')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="email">E-Mail Address <span class="text-danger">*</span></label>
                                <input type="email" name="email" value="{{ $company->email }}" class="form-control shadow-none @error('email') is-invalid @enderror" id="email">
                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="address">Company Address <span class="text-danger">*</span></label>
                                <input type="text" name="address" value="{{ $company->address }}" class="form-control shadow-none @error('address') is-invalid @enderror" id="address">
                                @error('address')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="slogan">Company Slogan </label>
                                <input type="text" name="slogan" value="{{ $company->slogan }}" class="form-control shadow-none @error('slogan') is-invalid @enderror" id="slogan">
                                @error('slogan')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="facebook">Company Facebook</label>
                                <input type="text" name="facebook" value="{{ $company->facebook }}" class="form-control shadow-none @error('facebook') is-invalid @enderror" id="facebook">
                                @error('facebook')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="twitter">Company Twitter</label>
                                <input type="text" name="twitter" value="{{ $company->twitter }}" class="form-control shadow-none @error('twitter') is-invalid @enderror" id="twitter">
                                @error('twitter')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="linkedin">Company Linkedin</label>
                                <input type="text" name="linkedin" value="{{ $company->linkedin }}" class="form-control shadow-none @error('linkedin') is-invalid @enderror" id="linkedin">
                                @error('linkedin')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="instagram">Company Instagram</label>
                                <input type="text" name="instagram" value="{{ $company->instagram }}" class="form-control shadow-none @error('instagram') is-invalid @enderror" id="instagram">
                                @error('instagram')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror

                                <label for="about" class="mt-2">Company About</label>
                                <textarea class="form-control" name="about" id="about" cols="4" rows="4">{{ $company->about }}</textarea>
                                @error('about')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="logo">Company Logo</label>
                                <input class="form-control" id="logo" type="file" name="logo" onchange="readURL(this);">
                                <div class="form-group mt-2">
                                    <img class="form-controlo img-thumbnail" src="#" id="previewImage" style="width: 150px;height: 120px; background: #3f4a49;">
                                </div>
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
    document.getElementById("previewImage").src="{{ $company->logo }}";
</script>
@endpush