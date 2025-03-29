@extends('layouts.admin')
@section('title','Add Faq')
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
                        <h3>Faq Ekle </h3>
                    </div>
                <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"> <a href="#"> Anasayfa </a></li>

                <li class="breadcrumb-item active">Faq Ekle</li>
            </ol>
                </div>
                </div>
            </div>

        </section>

        <!-- Main content -->
        <section class="content">

            <div class="card">

                    <h4 class="card-title">Faq Ekle</h4>
            </div>

                    <div class="card-body">

                        <div class="card mb-4">
                            <form action="{{route('admin_faq_store')}}" method="post" enctype="multipart/form-data">
                                @csrf

                                    <div class="form-group">
                                        <label>Positon</label>
                                        <input type="number" name="position"  class="form-control">
                                    </div>
                                    <div class="form-group">
                                        <label>Question</label>
                                        <input type="text" name="question"  class="form-control">
                                    </div>

                                    <div class="form-group">
                                        <label>Answer</label>
                                        <textarea name="answer"></textarea>
                                        <script>
                                            CKEDITOR.replace( 'answer' );
                                        </script>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-sm-2 form-control-label">Status</label>
                                        <div class="col-sm-12 mb-5">
                                            <select name="status" class="form-control" >
                                                <option>False</option>
                                                <option>True</option>
                                            </select>
                                        </div>
                                    </div>

                                    <button type="submit" class="btn btn-primary">Faq Ekle</button>
                                </form>
                            </div>
                        </div>
        </section><!-- /.content -->
                    </div>



@endsection
