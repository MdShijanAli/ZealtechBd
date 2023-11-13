@extends('layouts.admin-master')
@section('title', 'Page List')
@push('admin-css')
@endpush    
@section('admin-content')
<div class="container-fluid">
    <div class="card my-4">
        <div class="card-header">
            <i class="fas fa-table mr-1"></i>
            All Page List
            <a href="{{ route('pages.create') }}" class="btn btn-primary btn-sm float-right">Add New</a>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered text-center" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Title</th>
                            <th>Sub Title</th>
                            <th>Content</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($newPages as $key=>$page)
                            <tr>
                                <td>{{ $key+1 }}</td>
                                <td>{{ $page->name }}</td>
                                <td>{{ $page->title }}</td>
                                <td>{{ $page->sub_title }}</td>
                                <td>{!! Str::limit($page->content, 150) !!}</td>
                                <td>
                                    <a href="{{ route('pages.edit',$page->id) }}" class="btn btn-info btn-sm"><i class="fa fa-edit"></i></a>
                                    <button type="submit" class="btn btn-danger btn-sm" onclick="deleteService({{ $page->id }})"><i class="fa fa-trash"></i></button>
                                    <form id="delete-form-{{$page->id}}" action="{{route('pages.destroy',$page->id)}}" method="POST" style="display: none;">
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
    function deleteService(id) {
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