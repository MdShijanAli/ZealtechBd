@extends('layouts.admin-master')
@section('title', 'Testimonial List')
@push('admin-css')
@endpush    
@section('admin-content')
<div class="container-fluid">
    <div class="card my-4">
        <div class="card-header">
            <i class="fas fa-table mr-1"></i>
            All Testimonial List
            <a href="{{ route('testimonial.create') }}" class="btn btn-primary btn-sm float-right">Add New</a>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered text-center" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Designation</th>
                            <th>Priority</th>
                            <th>Quote</th>
                            <th>Image</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($testimonials as $key=>$testimonial)
                            <tr>
                                <td>{{ $key+1 }}</td>
                                <td>{{ $testimonial->name }}</td>
                                <td>{{ $testimonial->designation }}</td>
                                <td>{{ $testimonial->priority }}</td>
                                <td>{{ Str::limit($testimonial->quote, 50) }}</td>
                                <td><img class="border" style="height: 60px; width: 60px;" src="{{ asset($testimonial->image) }}" alt=""></td>
                                <td>
                                    <a href="{{ route('testimonial.edit',$testimonial) }}" class="btn btn-info btn-sm"><i class="fa fa-edit"></i></a>
                                    <button type="submit" class="btn btn-danger btn-sm mt-1" onclick="deletetestimonial({{ $testimonial->id }})"><i class="fa fa-trash"></i></button>
                                    <form id="delete-form-{{$testimonial->id}}" action="{{route('testimonial.destroy',$testimonial)}}" method="POST" style="display: none;">
                                        @csrf
                                        @method('DELETE')
                                    </form>
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td rowspan="5">Data Not Found</td>
                            </tr>
                        @endforelse
                        
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
@endsection
@push('admin-js')
<script src="https://unpkg.com/sweetalert2@7.19.1/dist/sweetalert2.all.js"></script>
<script type="text/javascript">
    function deletetestimonial(id) {
        swal({
            title: 'Are you sure?',
            text: "You want to Delete this!",
            type: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!',
            cancelButtonText: 'No, cancel!',
            confirmButtonClass: 'btn btn-success',
            cancelButtonClass: 'btn btn-danger',
            buttonsStyling: false,
            reverseButtons: true
        }).then((result) => {
            if (result.value) {
                event.preventDefault();
                document.getElementById('delete-form-'+id).submit();
            } else if (
                // Read more about handling dismissals
                result.dismiss === swal.DismissReason.cancel
            ) {
                swal(
                    'Cancelled',
                    'Your data is safe :)',
                    'error'
                )
            }
        })
    }
</script>
@endpush