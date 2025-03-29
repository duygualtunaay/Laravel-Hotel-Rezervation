
@extends('layouts.home')
@php
    $setting=\App\Http\Controllers\HomeController::getsetting();
@endphp
@section('title', 'My rezerves '.$setting->title)



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
                                            <th>User</th>
                                            <th>Hotel</th>
                                            <th>Room</th>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Phone</th>
                                            <th>Total</th>
                                            <th>Checkin</th>
                                            <th>Checkout</th>
                                            <th>Kişi Sayısı</th>
                                            <th>Note</th>
                                            <th>Action</th>
                                            <th>Delete</th>
                                        </tr>
                                        </thead>

                                        <tbody>
                                        @foreach($datalist as $rs )
                                            @php
                                                $rs->total=$rs->days*$rs->room->price;
                                            @endphp


                                            <tr>
                                                <td>{{ $rs->id }}</td>
                                                <td>{{ $rs->user->title }}</td>
                                                <td>{{ $rs->hotel_id }}</td>
                                                <td>{{ $rs->room->title }}</td>
                                                <td>{{ $rs->user->name }}</td>
                                                <td>{{ $rs->user->email }}</td>
                                                <td>{{ $rs->user->phone }}</td>
                                                <td>{{ $rs->total }}₺</td>
                                                <td>{{ $rs->checkin}}</td>
                                                <td>{{ $rs->checkout}}</td>
                                                <td>{{ $rs->days}}</td>
                                                <td>{{ $rs->room->adet}}</td>
                                                <td>{{ $rs->note}}</td>
                                                <td>{{ $rs->status }}</td>


                                                <td><a href="{{route('user_rezerve_delete',['id' => $rs->id])}}" onclick="return confirm('Delete! Are you sure? ')"><img src="{{asset('assets/admin/img')}}/delete.png" height="26"></a></td>

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



