@extends('layouts.admin')

@section('title','FAQ List')


@section('content')

    <div class="container-fluid" id="container-wrapper">
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
            <h1 class="h3 mb-0 text-gray-800">FAQ</h1>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href=" href="{{ route('admin_home') }}">Ana Sayfa</a></li>
                <li class="breadcrumb-item">Sayfalar</li>
                <li class="breadcrumb-item active" aria-current="page">FAQ</li>
            </ol>
        </div>


        </section>

        <!-- Main content -->
        <section class="content">

            <div class="card">
                <a href="{{route('admin_faq_add')}}" type="button" class="btn btn-danger mb-1" style="width: 200px">Faq Ekle</a>
                @include('home.message')
            </div>
            <!-- DataTable with Hover -->
            <div class="col-lg-12">
                <div class="card mb-4">

                    <div class="table-responsive p-3">
                        <table class="table align-items-center table-flush table-hover" id="dataTableHover">
                            <thead class="thead-light">
                            <tr>
                                <th><b>Id</b></th>
                                <th><b>Position</b></th>
                                <th><b>Question</b></th>
                                <th><b>Answer</b></th>
                                <th><b>Status</b></th>
                                <th><b>Edit</b></th>
                                <th><b>Delete</b></th>

                            </tr>
                            </thead>

                            <tbody>
                            @foreach($datalist as $rs )
                                <tr>
                                    <td>
                                        {{$rs->id}}
                                    </td>
                                    <td>
                                        {{$rs->position}}
                                    </td>
                                    <td>
                                        {{$rs->question}}
                                    </td>
                                    <td>
                                        {!! $rs->answer !!}
                                    </td>
                                    <td>
                                        {{$rs->status}}
                                    </td>
                                    <td>
                                        <a href="{{route('admin_faq_edit',['id'=>$rs->id])}}"><img src="{{asset('assets/admin/img')}}/edit.png" height="30"></a>
                                    </td>
                                    <td>
                                        <a href="{{route('admin_faq_delete',['id'=>$rs->id])}}" onclick="return confirm('Delete ! Are you sure?')"><img src="{{asset('assets/admin/img')}}/delete.png" height="30"></a>
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
