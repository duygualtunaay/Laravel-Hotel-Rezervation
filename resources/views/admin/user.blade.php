@extends('layouts.admin')

@section('title','Users List')


@section('content')

    <div class="container-fluid" id="container-wrapper">
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">User List</h1>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="./">Ana Sayfa</a></li>
                <li class="breadcrumb-item">Sayfalar</li>
                <li class="breadcrumb-item active" aria-current="page">User List</li>
            </ol>
        </div>


        </section>

        <!-- Main content -->
        <section class="content">

            <div class="card">
                <a href="{{route('admin_user_add')}}" type="button" class="btn btn-danger mb-1" style="width: 200px">Otel Ekle</a>
            </div>
            <!-- DataTable with Hover -->
            <div class="col-lg-12">
                <div class="card mb-4">

                    <div class="table-responsive p-3">
                        <table class="table align-items-center table-flush table-hover" id="dataTableHover">
                            <thead class="thead-light">
                            <tr>
                                <th><b>Id</b></th>
                                <th><b>image</b></th>
                                <th><b>Name</b></th>
                                <th><b>Email</b></th>
                                <th><b>Phone</b></th>
                                <th><b>Address</b></th>
                                <th><b>Roles</b></th>
                                <th colspan="2"><b>Actions</b></th>

                            </tr>
                            </thead>

                            <tbody>
                            @foreach($datalist as $rs)
                                <tr>
                                    <td>
                                        {{$rs->id}}
                                    </td>
                                    <td>

                                        @if($rs->profile_photo_path)
                                            <img src="{{Storage::url($rs->profile_photo_path)}}" height="50" style="border-radius: 10px">
                                        @endif
                                    </td>
                                    <td>
                                        <a href="{{route('admin_user_show',['id'=>$rs->id])}}" onclick="return !window.open(this.href,'','top=50 left=100 width=1100,height=700')">{{$rs->name}}</a>
                                    </td>
                                    <td>
                                        {{$rs->email}}

                                    </td>
                                    <td>
                                        {{$rs->phone}}
                                    </td>
                                    <td>
                                        {{$rs->address}}
                                    </td>
                                    <td>
                                        @foreach($rs->roles as $row)
                                            {{$row->name}},
                                        @endforeach
                                        <a href="{{route('admin_user_roles',['id'=>$rs->id])}}" onclick="return !window.open(this.href,'','top=50 left=100 width=1100,height=700')"><i class="fa fa-plus-circle"></i></a>
                                    </td>
                                    <td>
                                        <a href="{{route('admin_user_edit',['id'=>$rs->id])}}"><img src="{{asset('assets/admin/img')}}/edit.png" height="40"></a>
                                    </td>
                                    <td>
                                        <a href="{{route('admin_user_delete',['id'=>$rs->id])}}" onclick="return confirm('Delete ! Are you sure?')"><img src="{{asset('assets/admin/img')}}/delete.png" height="40"></a>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>

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
