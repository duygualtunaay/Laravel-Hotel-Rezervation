@php
    $setting=\App\Http\Controllers\HomeController::getsetting();
@endphp
@extends('layouts.home')
@section('title', $setting->title)

@section('description'){{ $setting->description}}@endsection

@section('keywords',$setting->keywords)

@section('content')
    <div class="main-top" id="home">


        <!-- banner -->
        <div class="banner_w3lspvt-2">

        </div>
        <!-- //banner -->
    </div>
    <!-- //main banner -->

    <!-- page details -->
    <div class="breadcrumb-mobamu">
        <ol class="breadcrumb">
            <li class="breadcrumb-item">
                <a href="{{route('home')}}">Home</a>
            </li>
            <li class="breadcrumb-item active" aria-current="page">Rezervasyon</li>
        </ol>
    </div>


    <section class="contact py-5" id="contact">
        <div class="container py-xl-5 py-lg-3">
            <div class="register-w3 py-5">
                <div class="container py-xl-5 py-lg-3">
                    <h3 class="tittle text-center text-bl font-weight-bold">Rezervasyon Formu</h3>

                    @include('home.message')

                    <div class="comment-top mt-5">

                        <div class="comment-bottom mobamuinfo_mail_grid_right">
                            <form action="{{route('sendrezerve',['id'=>$room->id])}}" method="post">
                                @csrf
                                <div class="row">
                                    <div class="col-lg-6 form-group">
                                        <label>First Name</label>
                                        <input class="form-control" type="text" name="name"  placeholder="Type Here.." required="">
                                    </div>
                                    <div class="col-lg-6 form-group">
                                        <label>Last Name</label>
                                        <input class="form-control" type="text" name="surname"  placeholder="Type Here.." required="">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-6 form-group">
                                        <label>Email</label>
                                        <input class="form-control" type="email" name="email" placeholder="Email" required="">
                                    </div>
                                    <div class="col-lg-6 form-group">
                                        <label>Phone Number</label>
                                        <input class="form-control" type="text" name="phone" placeholder="Phone Number" required="">
                                    </div>


                                </div>
                                <div class="row">
                                    <div class="col-lg-6 form-group date-plu">
                                        <label>Checkin</label>
                                        <input type="date" name="checkin" required="">
                                    </div>
                                    <div class="col-lg-6 form-group date-plu">
                                        <label>Checkout</label>
                                        <input type="date" name="checkout" required="">
                                    </div>

                                </div>

<div class="row">
    <div class="col-lg-5  form-group">
        <label>Note</label>
        <textarea class="form-control" name="note" placeholder="Write Here.." required=""></textarea>
    </div>


</div>


                                <button type="submit" class="btn submit mt-3">Book Now</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //booking form -->

        </div>
    </section>
    </div>


@endsection
