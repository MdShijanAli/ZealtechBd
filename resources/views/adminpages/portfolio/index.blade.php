@extends('layouts.admin-master')
@section('title', 'Portfolio List')
@push('admin-css')
@endpush    
@section('admin-content')
<div class="container-fluid">
    <div class="card my-4">
        <div class="card-header">
            <i class="fas fa-table mr-1"></i>
            All portfolio List
            <a href="{{ route('portfolio.create') }}" class="btn btn-primary btn-sm float-right">Add New</a>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered text-center" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Category</th>
                            <th>Name</th>
                            <th>Slug</th>
                            <th>Url</th>
                            <th>Image</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($portfolios as $key => $portfolio)
                            <tr>
                                <td>{{ $key + 1 }}</td>
                                <td>{{ $portfolio->category->name }}</td>
                                <td>{{ $portfolio->name }}</td>
                                <td>{{ $portfolio->slug }}</td>
                                <td>{{ $portfolio->url }}</td>
                                <td><img class="border" style="height: 40px; width:50px;" src="{{ asset($portfolio->image) }}" alt=""></td>
                                <td>
                                    <a href="{{ route('portfolio.edit',$portfolio) }}" class="btn btn-info btn-sm"><i class="fa fa-edit"></i></a>
                                    <button type="submit" class="btn btn-danger btn-sm" onclick="deletePortfolio({{ $portfolio->id }})"><i class="fa fa-trash"></i></button>
                                    <form id="delete-form-{{$portfolio->id}}" action="{{route('portfolio.destroy',$portfolio)}}" method="POST" style="display: none;">
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
    function deletePortfolio(id) {
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