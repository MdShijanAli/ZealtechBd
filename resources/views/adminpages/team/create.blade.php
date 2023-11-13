@extends('layouts.admin-master')
@section('title', 'our Team')
@push('admin-css')
@endpush    
@section('admin-content')
<main>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="form-area">
                    <div class="d-flex justify-content-between heading">
                        <h4 class=""><i class="fa fa-user-plus"></i> Add New Team Member</h4>
                        <div>
                            <a href="{{ route('teams.index') }}" class="btn btn-primary btn-sm overflow-hidden">Team list</a>
                        </div>
                    </div>
                    <form action="{{ route('teams.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-md-6 mb-2">
                                <label for="name">Name <span class="text-danger">*</span> </label>
                                <input type="text" name="name" value="{{ old('name') }}" class="form-control shadow-none @error('name') is-invalid @enderror" id="name" placeholder="Enter Name">
                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="designation"> Designation <span class="text-danger">*</span> </label>
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
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="facebook"> Facebook</label>
                                <input type="text" name="facebook" value="{{ old('facebook') }}" class="form-control shadow-none @error('facebook') is-invalid @enderror" id="facebook" placeholder="Facebook profile url">
                                @error('facebook')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="twitter"> Twitter</label>
                                <input type="text" name="twitter" value="{{ old('twitter') }}" class="form-control shadow-none @error('twitter') is-invalid @enderror" id="twitter" placeholder="Twitter profile url">
                                @error('twitter')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror

                                <label for="linkedin" class="mt-2"> Linkedin</label>
                                <input type="text" name="linkedin" value="{{ old('linkedin') }}" class="form-control shadow-none @error('linkedin') is-invalid @enderror" id="linkedin" placeholder="Linkedin profile url">
                                @error('linkedin')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror

                                <label for="instagram" class="mt-2"> Instagram</label>
                                <input type="text" name="instagram" value="{{ old('instagram') }}" class="form-control shadow-none @error('instagram') is-invalid @enderror" id="instagram" placeholder="Instagram profile url">
                                @error('instagram')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="image">Image <span class="text-danger">*</span></label>
                                <input class="form-control" id="image" type="file" name="image" onchange="readURL(this);">
                                <div class="form-group mt-2">
                                    <img class="form-controlo img-thumbnail" src="#" id="previewImage" style="width: 120px;height: 100px; background: #3f4a49;">
                                </div>
                            </div>
                            <div class="col-md-6 mb-2">
                                
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