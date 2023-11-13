@extends('layouts.admin-master')
@section('title', 'Edit Gallery') 
@section('admin-content')
<main>
    <div class="container-fluid">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="form-area">
                    <div class="d-flex justify-content-between heading">
                        <h4 class=""><i class="fa fa-edit"></i> Edit Category</h4>
                        <div>
                            <a href="{{ route('category.index') }}" class="btn btn-primary btn-sm overflow-hidden">Add new</a>
                        </div>
                    </div>
                    <form action="{{ route('category.update', $category) }}" method="POST" enctype="multipart/form-data">
                        @csrf
                        @method('PUT')
                        <div class="row">
                            <div class="col-md-6 mb-2">
                                <label for="name">Category Name<span class="text-danger"> * </span></label>
                                <input class="form-control @error('name') is-invalid @enderror" id="name" type="text" name="name" value="{{ $category->name }}" placeholder="Enter name">
                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
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