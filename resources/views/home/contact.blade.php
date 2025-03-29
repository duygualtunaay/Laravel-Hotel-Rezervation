@php
    $setting=\App\Http\Controllers\HomeController::getsetting();
@endphp
@extends('layouts.home')

@section('title','Contact -' . $setting->title)

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
        <li class="breadcrumb-item active" aria-current="page">Contact</li>
    </ol>
</div>


<section class="contact py-5" id="contact">
    <div class="container py-xl-5 py-lg-3">
        <div class="row">
            <div class="col-md-7">
                <h3 class="aside-title"></h3>
                <div class="comment-bottom mobamuinfo_mail_grid_right">
                {!! $setting->contact !!}
                </div>
            </div>
            <div class="col-md-5">
                <h3 class="aside-title">İletişim Bilgi Formu</h3>
                @include('home.message')
                <div class="comment-bottom mobamuinfo_mail_grid_right">
                    <form action="{{route('sendmessage')}}" method="post">
                        @csrf
                        <div class="form-group">
                            <input class="form-control" type="text" name="name" placeholder="Name & Surname" required="">
                        </div>
                        <div class="form-group">
                            <input class="form-control" type="phone" name="phone" placeholder="Phone" required="">
                        </div>
                        <div class="form-group">
                            <input class="form-control" type="email" name="email" placeholder="Email" required="">
                        </div>
                        <div class="form-group">
                            <input class="form-control" type="text" name="subject" placeholder="Subject" required="">
                        </div>
                        <div class="form-group">
                            <textarea class="form-control" name="message" placeholder="Message..." required=""></textarea>
                        </div>
                        <button type="submit" class="btn submit mt-4">Send Message</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</section>
</div>

@endsection
