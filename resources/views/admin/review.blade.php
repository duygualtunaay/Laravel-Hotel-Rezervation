@extends('layouts.admin')
@section('title','Review List')


@section('content')

    <div class="container-fluid" id="container-wrapper">
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Review</h1>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="./">Ana Sayfa</a></li>
                <li class="breadcrumb-item">Sayfalar</li>
                <li class="breadcrumb-item active" aria-current="page">Review</li>
            </ol>
        </div>


        </section>

        <!-- Main content -->
        <section class="content">

            <div class="card">
                @include('home.message')
            </div>
            <!-- DataTable with Hover -->
            <div class="col-lg-12">
                <div class="card mb-4">

                    <div class="table-responsive p-3">
                        <table class="table align-items-center table-flush table-hover" id="dataTableHover">
                            <thead class="thead-light">
                            <tr>
                                <th>Id</th>
                                <th>Name</th>
                                <th>Hotel Id</th>
                                <th>Subject</th>
                                <th>Review</th>
                                <th>Rate</th>
                                <th>Action</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                            </thead>

                            <tbody>
                            @foreach($datalist as $rs )
                            <tr>
                                <td>{{ $rs->id }}</td>
                                <td>
                                <a href="{{route('admin_user_show',['id' => $rs->id])}}" onclick="return !window.open(this.href,'','top=50 left=100 width=1100,height=700')"> {{ $rs->user->name }} </a>
                                </td>
                                <td>{{ $rs->hotel->title }}</td>
                                <td>{{ $rs->subject }}</td>
                                <td>{{ $rs->review }}</td>
                                <td>{{ $rs->rate}}</td>
                                <td>{{ $rs->status }}</td>

                                <td><a href="{{route('admin_review_edit',['id' => $rs->id])}}" onclick="return !window.open(this.href,'','top=50 left=100 width=1100,height=700')"> <img src="{{asset('assets/admin/img')}}/edit.png" height="26"> </a></td>

                                <td><a href="{{route('admin_review_delete',['id' => $rs->id])}}" onclick="return confirm('Delete! Are you sure? ')"><img src="{{asset('assets/admin/img')}}/delete.png" height="26"></a></td>

                            </tr>
                            </tbody>
                            @endforeach
                        </table>
                    </div>
                    <!-- Modal Logout -->
                    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabelLogout"
                         aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabelLogout">Ohh No!</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
            <div class="card-footer">
                Footer
            </div><!-- /footer-->


        </section><!-- /.content -->


</div>


@endsection
@section('footer')


    <script src="{{asset('assets')}}/admin/vendor/jquery/jquery.min.js"></script>
    <script src="{{asset('assets')}}/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="{{asset('assets')}}/admin/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="{{asset('assets')}}/admin/js/ruang-admin.min.js"></script>
    <!-- Page level plugins -->
    <script src="{{asset('assets')}}/admin/vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="{{asset('assets')}}/admin/vendor/datatables/dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script>
        $(document).ready(function () {
            $('#dataTable').DataTable(); // ID From dataTable
            $('#dataTableHover').DataTable(); // ID From dataTable with Hover
        });
    </script>

@endsection
