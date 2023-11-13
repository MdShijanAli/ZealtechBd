<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Admin | @yield('title')</title>

        <link href="{{ asset('img/favicon.png') }}" rel="icon" />
        {{-- <link rel="stylesheet" href="{{ asset('css/toastr.min.css') }}"> --}}
        <link rel="stylesheet" href="{{ asset('css/all.min.css') }}">
        <link href="{{ asset('css/custom.css') }}" rel="stylesheet" />
        <link href="{{ asset('css/admin-styles.css') }}" rel="stylesheet" />
        <link href="{{ asset('css/dataTables.bootstrap4.min.css') }}" rel="stylesheet"/>
        @stack('admin-css')
    </head>
    <body class="sb-nav-fixed">
        <!--- navbar start -->
        @include('partials.navbar')
        <!--- navbar end -->
        <div id="layoutSidenav">
            <!--- sidebar start -->
            @include('partials.sidebar')
            <!--- sidebar end-->
            <div id="layoutSidenav_content">
                @yield('admin-content')

            {{-- modal --}}
            <div class="modal fade" id="passwordChange" tabindex="-1" role="dialog" >
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Change Password</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form action="{{ route('password.change') }}" method="POST">
                            @csrf
                            @method('PUT')
                            <div class="modal-body">
                                <label for="">Old Password</label>
                                <input type="password" name="old_password" class="form-control mb-1" placeholder="Enter Old Password">
                                <label for="">New Password</label>
                                <input type="password" class="form-control" name="password" placeholder="Enter New password">
                            </div>
                            <div class="modal-footer">
                                <button type="reset" class="btn btn-secondary">Reset</button>
                                <button type="submit" class="btn btn-primary">Save changes</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            </div>
        </div>
        <script src="{{ asset('js/jquery-3.6.0.min.js') }}"></script>
        {{-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" crossorigin="anonymous"></script> --}}
        <script src="{{ asset('js/bootstrap.bundle.min.js') }}"></script>
        <script src="{{ asset('js/scripts.js') }}"></script>
        <script src="{{ asset('js/jquery.dataTables.min.js') }}" crossorigin="anonymous"></script>
        <script src="{{ asset('js/dataTables.bootstrap4.min.js') }}" crossorigin="anonymous"></script>
        <script src="{{ asset('assets/demo/datatables-demo.js') }}"></script>
        <script src="{{ asset('js/all.min.js') }}"></script>

        {{-- <script src="{{ asset('js/toastr.min.js') }}"></script>
        {!! Toastr::message() !!} --}}
        @stack('admin-js')
    </body>
</html>
