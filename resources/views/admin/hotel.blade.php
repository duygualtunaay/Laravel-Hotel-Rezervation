@extends('layouts.admin')

@section('title','Otel Listeleri')


@section('content')

    <div class="container-fluid" id="container-wrapper">
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">Oteller</h1>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="./">Ana Sayfa</a></li>
                <li class="breadcrumb-item">Sayfalar</li>
                <li class="breadcrumb-item active" aria-current="page">Oteller</li>
            </ol>
        </div>


        </section>

        <!-- Main content -->
        <section class="content">

            <div class="card">
                <a href="{{route('admin_hotel_add')}}" type="button" class="btn btn-danger mb-1" style="width: 200px">Otel Ekle</a>
            </div>
            <!-- DataTable with Hover -->
            <div class="col-lg-12">
                <div class="card mb-4">

                    <div class="table-responsive p-3">
                        <table class="table align-items-center table-flush table-hover" id="dataTableHover">
                            <thead class="thead-light">
                            <tr>
                                <th>Id</th>
                                <th>Category</th>
                                <th>Title</th>
                                <th>Star</th>
                                <th>image</th>
                                <th>image Gallery</th>
                                <th>City</th>
                                <th>Room</th>
                                <th>Status</th>
                                <th>Edit</th>
                                <th>Delete</th>

                            </tr>
                            </thead>

                            <tbody>
                            @foreach($datalist as $rs )
                                <tr>
                                    <td>{{$rs->id}}</td>
                                    <td>{{ \App\Http\Controllers\Admin\CategoryController::getParentsTree($rs->category, $rs->category->title)}}</td>
                                    <td>{{$rs->title}}</td>
                                    <td>{{$rs->star}}</td>
                                    <td>
                                        <img src="{{ Storage::url($rs->image) }}" height="30" alt="">
                                    </td>
                                    <td><a href="{{route('admin_image_add',['hotel_id' => $rs->id])}}" onclick="return !window.open(this.href, '','top=50 left=100 width=1100 height=700') "><img src="{{asset('assets/admin/img')}}/gallery.png" height="40"></a></td>
                                    <td>{{$rs->city}}</td>
                                    <td><a href="{{route('admin_room_add',['id' => $rs->id])}}"><img src="{{asset('assets/admin/img')}}/room.png" height="40"></a></td>
                                    <td>{{$rs->status}}</td>
                                    <td><a href="{{route('admin_hotel_edit',['id' => $rs->id])}}"><img src="{{asset('assets/admin/img')}}/edit.png" height="40"></a></td>
                                    <td><a href="{{route('admin_hotel_delete',['id' => $rs->id])}}" onclick="return confirm('Delete! Are you sure? ')"><img src="{{asset('assets/admin/img')}}/delete.png" height="40"></a></td>

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
