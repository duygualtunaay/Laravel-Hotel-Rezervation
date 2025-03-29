@php
    $setting=\App\Http\Controllers\HomeController::getsetting();
@endphp

@extends('layouts.home')

@section('title '.$search)
@include('home._header')


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
            <li class="breadcrumb-item active" aria-current="page">Arama</li>
        </ol>
    </div>

    <!-- price -->
    <div class="rooms-w3ls bg-li py-5" id="price">
        <div class="container-fluid py-xl-5 py-lg-3">
            <h3 class="tittle text-center text-bl font-weight-bold">{{$search}}</h3>
            <div class="row">
                @foreach($datalist as $rs)
                    <div class="col-lg-4 price-mobamus">
                        <div class="price-top">
                            <a href="{{route('hotel',['id' => $rs->id,'slug' => $rs->slug])}}">
                                <img src="{{ Storage::url($rs->image) }}" alt="" class="img-fluid" />
                            </a>
                        </div>
                        <div class="price-w3ls-bottom p-4">
                            <h4 class="my-2"><a href="{{route('hotel',['id' => $rs->id,'slug' => $rs->slug])}}">{{$rs->title}}</a></h4>
                            <div class="lm-item-price">
                                <h6>
                                    <span class="price-midd-head">{{$rs->city}}</span>

                                </h6>
                            </div>
                            <ul class="style-lists">
                                <li>{{$rs->address}} </li>
                                <li>{{$rs->country}}</li>

                            </ul>
                            <a href="{{route('hotel',['id' => $rs->id,'slug' => $rs->slug])}}" class="btn button-style-2 mt-sm-5 mt-4">Book Now</a>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>


    <!-- //price -->
@endsection
