@extends('layouts.admin')
@section('title','EditUser')
@section('javascript')

    <script src="https://cdn.ckeditor.com/4.15.1/standard/ckeditor.js"></script>
@endsection
@section('content')
    <!-- Right side column. Contains the navbar and content of the page -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h3>Düzenle </h3>
                    </div>
                <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"> <a href="#"> Anasayfa </a></li>

                <li class="breadcrumb-item active">Düzenle</li>
            </ol>
                </div>
                </div>
            </div>

        </section>

        <!-- Main content -->
        <section class="content">

            <div class="card">

                    <h4 class="card-title">Düzenle</h4>
            </div>

                    <div class="card-body">

                        <div class="card mb-4">


                            <form action="{{route('admin_user_update',['id'=>$data->id])}}" method="post" enctype="multipart/form-data">
                                @csrf
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" name="name" value="{{$data->name}}" class="form-control" >
                            </div>

                            <div class="form-group">
                                <label>Email</label>
                                <input type="text" name="email" value="{{$data->email}}" class="form-control" >
                            </div>
                            <div class="form-group">
                                <label>Phone</label>
                                <input type="text" name="phone" value="{{$data->phone}}" class="form-control" >
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <input type="text" name="address" value="{{$data->address}}" class="form-control" >
                            </div>
                            <div class="form-group">
                                <label>Image</label>
                                <input type="file" name="image"  class="form-control">
                                @if($data->profile_photo_path)
                                    <img src="{{Storage::url($data->profile_photo_path)}}" height="100" alt="">
                                @endif
                            </div>


                            <button type="submit" class="btn btn-primary">Düzenle</button>


                        </form>
                        </div>




</div>
        </section><!-- /.content -->
    </div><!-- /.content-wrapper -->

@endsection
