
@extends('layouts.home')
@php
    $setting=\App\Http\Controllers\HomeController::getsetting();
@endphp
@section('title', 'My review '.$setting->title)



@section('content')

    <div class="main-top" id="home">


        <!-- banner -->
        <div class="banner_w3lspvt-2">

        </div>
        <!-- //banner -->
    </div>
    <div class="main-top" id="home">
        <div class="breadcrumb-mobamu">
            <ol class="breadcrumb">
                <li class="breadcrumb-item">
                    <a href="{{route('home')}}">Home</a>
                </li>
                <li class="breadcrumb-item active" aria-current="page"> User Profile</li>
            </ol>
        </div>
        <div class="section">
            <div class="container">
                <div class="row">
                    <div id="aside" class="col-md-2">
                        @include('home.usermenu')
                    </div>

                    <div id="main" class="col-md-10">
                        <div class="col-lg-12">
                            <div class="card mb-4">

                                <div class="table-responsive p-3">
                                    <table class="table align-items-center table-flush table-hover" id="dataTableHover">
                                        <thead class="thead-light">
                                        <tr>
                                            <th>Id</th>
                                            <th>Hotel</th>
                                            <th>Subject</th>
                                            <th>Review</th>
                                            <th>Rate</th>
                                            <th>Action</th>
                                            <th>Delete</th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        @foreach($datalist as $rs )
                                            <tr>
                                                <td>{{ $rs->id }}</td>
                                                <td>{{ $rs->hotel->title }}</td>
                                                <td>{{ $rs->subject }}</td>
                                                <td>{{ $rs->review }}</td>
                                                <td>{{ $rs->rate}}</td>
                                                <td>{{ $rs->status }}</td>


                                                <td><a href="{{route('user_review_delete',['id' => $rs->id])}}" onclick="return confirm('Delete! Are you sure? ')"><img src="{{asset('assets/admin/img')}}/delete.png" height="26"></a></td>

                                            </tr>
                                        </tbody>
                                        @endforeach
                                    </table>
                                </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

@endsection
