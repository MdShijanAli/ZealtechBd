@extends('layouts.admin-master')
@section('title', 'Portfolio Create')   
@section('admin-content')
<main>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="form-area">
                    <div class="d-flex justify-content-between heading">
                        <h4 class=""><i class="fa fa-briefcase"></i> Add new Porfolio</h4>
                        <div>
                            <a href="{{ route('portfolio.index') }}" class="btn btn-primary btn-sm overflow-hidden">Portfolio list</a>
                        </div>
                    </div>
                    <form action="{{ route('portfolio.store') }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col-md-6 mb-2">
                                <label for="name">Portfolio Name <span class="text-danger"> * </span></label>
                                <input class="form-control @error('name') is-invalid @enderror" id="name" type="text" name="name" value="{{ old('name') }}" placeholder="Enter Portfolio name">
                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="category_id">Portfolio Category <span class="text-danger"> * </span></label>
                                <select name="category_id" id="category_id" class="form-control">
                                    <option value="">--- Select One ---</option>
                                    @foreach ($categories as $category)
                                        <option value="{{ $category->id }}">{{ $category->name }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-6 mb-2">
                                <label for="url" class="mt-2">Portfolio URL</label>
                                <input class="form-control @error('url') is-invalid @enderror" id="url" type="text" name="url" value="{{ old('url') }}" placeholder="Enter Portfolio URL">
                                @error('url')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror

                                <label for="image" class="mt-2">Portfolio Image</label>
                                <input class="form-control" id="image" type="file" name="image" onchange="readURL(this);">
                            </div>
                            <div class="col-md-4 offset-md-1 mt-4">
                                <img class="form-controlo img-thumbnail" src="#" id="previewImage" style="width: 150px;height: 120px; background: #3f4a49;">
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
    document.getElementById("previewImage").src="/noimage.png";
</script>
@endpush