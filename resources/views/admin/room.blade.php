@extends('layouts.admin')

@section('title','Oda Listeleri')


@section('content')

    <div class="container-fluid" id="container-wrapper">
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Odalar</h1>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="./">Ana Sayfa</a></li>
                <li class="breadcrumb-item">Sayfalar</li>
                <li class="breadcrumb-item active" aria-current="page">Odalar</li>
            </ol>
        </div>


        </section>

        <!-- Main content -->
        <section class="content">

            <div class="card">
                <a href="{{route('admin_room_add')}}" type="button" class="btn btn-danger mb-1" style="width: 200px">Oda Ekle</a>
            </div>
            <!-- DataTable with Hover -->
            <div class="col-lg-12">
                <div class="card mb-4">

                    <div class="table-responsive p-3">
                        <table class="table align-items-center table-flush table-hover" id="dataTableHover">
                            <thead class="thead-light">
                            <tr>
                                <th>Id</th>
                                <th>Hotel</th>
                                <th>Title</th>
                                <th>image</th>
                                <th>Status</th>
                                <th>Edit</th>
                                <th>Delete</th>

                            </tr>
                            </thead>

                            <tbody>
                            @foreach($datalist as $rs )
                                <tr>
                                    <td>{{$rs->id}}</td>
                                    <td>{{$rs->hotel_id}}</td>
                                    <td>{{$rs->title}}</td>
                                    <td>
                                        <img src="{{ Storage::url($rs->image) }}" height="30" alt="">
                                    </td>
                                    <td>{{$rs->status}}</td>
                                    <td><a href="{{route('admin_room_edit',['id' => $rs->id])}}"><img src="{{asset('assets/admin/img')}}/edit.png" height="40"></a></td>
                                    <td><a href="{{route('admin_room_delete',['id' => $rs->id])}}" onclick="return confirm('Delete! Are you sure? ')"><img src="{{asset('assets/admin/img')}}/delete.png" height="40"></a></td>

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
