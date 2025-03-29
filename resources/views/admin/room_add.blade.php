@extends('layouts.admin')
@section('title','Add Room')
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
                        <h3>Oda Ekle </h3>
                    </div>
                <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"> <a href="#"> Anasayfa </a></li>

                <li class="breadcrumb-item active">Oda Ekle</li>
            </ol>
                </div>
                </div>
            </div>

        </section>

        <!-- Main content -->
        <section class="content">

            <div class="card">

                    <h4 class="card-title">Oda Ekle</h4>
            </div>

                    <div class="card-body">

                        <div class="card mb-4">

                            <div class="card-body">
                                <form role="form" action="{{route('admin_room_store')}}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    <div class="form-group">
                                        <label>Hotel</label>

                                        <select class="select2-single form-control" name="hotel_id" id="select2Single">
                                            @foreach($datalist as $rs )

                                                <option value="{{ $rs->id }}">{{$rs->title}}</option>

                                            @endforeach
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label >Title</label>
                                        <input type="text" name="title" class="form-control" >
                                    </div>

                                    <div class="form-group">
                                        <label>Description</label>
                                        <input type="text" name="description" class="form-control" >
                                    </div>

                                    <div class="form-group">
                                        <label>Price</label>
                                        <input type="number" name="price" class="form-control" >
                                    </div>

                                    <div class="form-group">
                                        <label>İmage</label>
                                        <input type="file" name="image" class="form-control" >
                                    </div>

                                    <div class="form-group">
                                        <label >Status</label>
                                    <select class="select2-single form-control" name="status" id="select2Single">
                                        <option selected="selected" value="False">False</option>
                                        <option value="True">True</option>

                                    </select>
                            </div>


                                    <button type="submit" class="btn btn-primary">Oda Ekle</button>
                                </form>
                            </div>
                        </div>

                    </div>

                <div class="card-footer">
                    Footer
                </div><!-- /footer-->


        </section><!-- /.content -->
    </div><!-- /.content-wrapper -->

@endsection
