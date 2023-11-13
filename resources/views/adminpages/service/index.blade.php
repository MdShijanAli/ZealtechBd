@extends('layouts.admin-master')
@section('title', 'Service List')
@push('admin-css')
@endpush    
@section('admin-content')
<div class="container-fluid">
    <div class="card my-4">
        <div class="card-header">
            <i class="fas fa-table mr-1"></i>
            All Service List
            <a href="{{ route('services.create') }}" class="btn btn-primary btn-sm float-right">Add New</a>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered text-center" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Slug</th>
                            <th>Details</th>
                            {{-- <th>Created At</th> --}}
                            <th>Image</th>
                            <th>Icon</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($services as $key => $service)
                            <tr>
                                <td>{{ $key + 1 }}</td>
                                <td>{{ $service->name }}</td>
                                <td>{{ $service->slug }}</td>
                                <td>{!! Str::limit($service->details, 150) !!}</td>
                                {{-- <td>{{ $service->created_at->diffforhumans() }}</td> --}}
                                <td>
                                    <img class="border" style="height: 40px; width:50px;" src="{{ asset($service->image) }}" alt="">
                                </td>
                                <td>
                                    <img class="border" style="height: 40px; width:50px;" src="{{ asset($service->icon) }}" alt="">
                                </td>
                                <td>
                                    <button class="show-service btn btn-dark btn-sm" data-service-id="{{ $service->id }}"><i class="fa fa-eye"></i> <i class="fa fa-spin fa-spinner" style="display:none"></i></button>
                                    <a href="{{ route('services.edit',$service) }}" class="btn btn-info btn-sm"><i class="fa fa-edit"></i></a>
                                    <button type="submit" class="btn btn-danger btn-sm" onclick="deleteService({{ $service->id }})"><i class="fa fa-trash"></i></button>
                                    <form id="delete-form-{{$service->id}}" action="{{route('services.destroy',$service)}}" method="POST" style="display: none;">
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
    <div class="modal fade" id="serviceView" tabindex="-1" role="dialog" >
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Full Service View</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <strong>Name: </strong> <span id="service_name"></span> <br>
                    <strong>Details: </strong> <br>
                    <span id="service_details"></span> 
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                </div>
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

    $(document).on('click', '.show-service', function(e) {
        e.preventDefault();
        $(this).prop('disabled', true).find('.fa-eye').hide();
        $(this).find('.fa-spin').show();
        let service_id = $(this).data('service-id');
        if(service_id) {
            let service_url = "{{ url('/get_service') }}/" + service_id;
            $.ajax({
                url: service_url,
                method: 'GET',
                success: function (res) {
                    if (res) {
                        $('#service_name').text(res.name);
                        $('#service_details').html(res.details);
                        $("#serviceView").modal('show');
                        $(this).find('.fa-spin').hide();
                        $(this).prop('disabled', false).find('.fa-eye').show();
                    }else {
                        alert('No data available');
                        $(this).prop('disabled', false).find('.fa-eye').show();
                    }
                }.bind(this),
                error: function (e) {
                    alert(`${e.status}, ${e.statusText}`);
                }
            })
        }
    })
</script>
@endpush