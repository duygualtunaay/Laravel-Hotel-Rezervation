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
            <li class="breadcrumb-item active" aria-current="page">blank</li>
        </ol>
    </div>


    <section class="contact py-5" id="contact">
        <div class="container py-xl-5 py-lg-3">
            About us

        </div>
    </section>
    </div>


@endsection
