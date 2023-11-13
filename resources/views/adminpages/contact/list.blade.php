@extends('layouts.admin-master')
@section('title', 'Contact List')
@push('admin-css')
@endpush    
@section('admin-content')
<div class="container-fluid">
    <div class="card my-4">
        <div class="card-header">
            <i class="fas fa-table mr-1"></i>
            All Contact List
            <a href="{{ route('home') }}" class="btn btn-primary btn-sm float-right">Dashboard</a>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered text-center" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Subject</th>
                            <th>Created At</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($contacts as $key=>$contact)
                            <tr>
                                <td>{{ $key+1 }}</td>
                                <td>{{ $contact->name }}</td>
                                <td>{{ $contact->email }}</td>
                                <td>{{ $contact->phone }}</td>
                                <td>{{ $contact->subject }}</td>
                                <td>{{ $contact->created_at->diffforhumans() }}</td>
                                
                                <td>
                                    <button class="show-contact btn btn-dark btn-sm" data-contact-id="{{ $contact->id }}">
                                        <i class="fa fa-eye"></i> <i class="fa fa-spin fa-spinner" style="display:none"></i>
                                    </button>
                                    <button type="submit" class="btn btn-danger btn-sm" onclick="deleteContact({{ $contact->id }})"><i class="fa fa-trash"></i></button>
                                    <form id="delete-form-{{$contact->id}}" action="{{route('contact.destroy',$contact)}}" method="POST" style="display: none;">
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
    <div class="modal fade" id="contactView" tabindex="-1" role="dialog" >
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Full Contact View</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <strong>Name: </strong> <span id="contact-name"></span> <br>
                    <strong>Email: </strong> <span id="contact-email"></span> <br>
                    <strong>Subject: </strong> <span id="contact-subject"></span> <br>
                    <strong>Phone: </strong> <span id="contact-phone"></span> <br>
                    <strong>Message: </strong> <span id="contact-message"></span>
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
    function deleteContact(id) {
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

    $(document).on('click', '.show-contact', function (e) {
        e.preventDefault();
        $(this).prop('disabled', true).find('.fa-eye').hide();
        $(this).find('.fa-spin').show();
        let contact_id = $(this).data('contact-id');
        if (contact_id) {
            let contact_url = "{{ url('/get_contact') }}/" + contact_id;
            $.ajax({
                url: contact_url,
                method: 'GET',
                success: function (res) {
                    if (res) {
                        $("#contact-name").text(res.name);
                        $("#contact-email").text(res.email);
                        $("#contact-subject").text(res.subject);
                        $("#contact-phone").text(res.phone);
                        $("#contact-message").text(res.message);
                        $("#contactView").modal('show');
                        $(this).find('.fa-spin').hide();
                        $(this).prop('disabled', false).find('.fa-eye').show();
                    } else {
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