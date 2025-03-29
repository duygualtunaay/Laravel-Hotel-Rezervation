@php
    $setting=\App\Http\Controllers\HomeController::getsetting();
@endphp
@extends('layouts.home')
@section('Hotel Detayı',$setting->title)
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <!-- Font Awesome Icon Library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    @livewireStyles
    <style>
        .checked {
            color: orange;
        }
    </style>
    <style>*{
            margin: 0;
            padding: 0;
        }
        .rate {
            float: left;
            height: 46px;
            padding: 0 10px;
        }
        .rate:not(:checked) > input {
            position:absolute;
            top:-9999px;
        }
        .rate:not(:checked) > label {
            float:right;
            width:1em;
            overflow:hidden;
            white-space:nowrap;
            cursor:pointer;
            font-size:30px;
            color:#ccc;
        }
        .rate:not(:checked) > label:before {
            content: '★ ';
        }
        .rate > input:checked ~ label {
            color: #ffc700;
        }
        .rate:not(:checked) > label:hover,
        .rate:not(:checked) > label:hover ~ label {
            color: #deb217;
        }
        .rate > input:checked + label:hover,
        .rate > input:checked + label:hover ~ label,
        .rate > input:checked ~ label:hover,
        .rate > input:checked ~ label:hover ~ label,
        .rate > label:hover ~ input:checked ~ label {
            color: #c59b08;
        }
    </style>
<style>
    .mySlides {display:none;}
</style>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {font-family: Arial;}

        /* Style the tab */
        .tab {
            overflow: hidden;
            border: 1px solid #ccc;
            background-color: #f1f1f1;
        }

        /* Style the buttons inside the tab */
        .tab button {
            background-color: inherit;
            float: left;
            border: none;
            outline: none;
            cursor: pointer;
            padding: 14px 16px;
            transition: 0.3s;
            font-size: 17px;
        }

        /* Change background color of buttons on hover */
        .tab button:hover {
            background-color: #ddd;
        }

        /* Create an active/current tablink class */
        .tab button.active {
            background-color: #ccc;
        }

        /* Style the tab content */
        .tabcontent {
            display: none;
            padding: 6px 12px;
            border: 1px solid #ccc;
            border-top: none;
        }
    </style>
</head>

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
            <li class="breadcrumb-item active" aria-current="page">{{$data->title}}</li>
        </ol>
    </div>


    <section class="contact py-5" id="contact">
        <div class="container py-xl-5 py-lg-3">
            <h2 class="w3-center">{{$data->title}}</h2>


            <div class="w3-content w3-display-container">
                <img class="mySlides" src="{{ Storage::url($data->image) }}" style="width:100%">
                @foreach($datalist as $rs)
                <img class="mySlides" src="{{ Storage::url($rs->image) }}" style="width:100%">
                @endforeach

                <button class="w3-button w3-black w3-display-left" onclick="plusDivs(-1)">&#10094;</button>
                <button class="w3-button w3-black w3-display-right" onclick="plusDivs(1)">&#10095;</button>
            </div>

            <script>
                var slideIndex = 1;
                showDivs(slideIndex);

                function plusDivs(n) {
                    showDivs(slideIndex += n);
                }

                function showDivs(n) {
                    var i;
                    var x = document.getElementsByClassName("mySlides");
                    if (n > x.length) {slideIndex = 1}
                    if (n < 1) {slideIndex = x.length}
                    for (i = 0; i < x.length; i++) {
                        x[i].style.display = "none";
                    }
                    x[slideIndex-1].style.display = "block";
                }
            </script>
            <br><br>
            <div class="tab">
                <button class="tablinks" onclick="openCity(event, 'London')">Detaylar</button>
                <button class="tablinks" onclick="openCity(event, 'Paris')">Odalar</button>
                <button class="tablinks" onclick="openCity(event, 'Tokyo')">Yorumlar</button>
            </div>

            <div id="London" class="tabcontent">
                <h3>Detaylar</h3>
                <p>{!! $data->detail !!}</p>
            </div>

            <div id="Paris" class="tabcontent">
                <h3>Odalar</h3>
                <div class="table-responsive p-3">
                    <table class="table align-items-center table-flush table-hover" id="dataTableHover">
                        <thead class="thead-light">
                        <tr>
                            <th>Title</th>
                            <th>image</th>
                            <th>Fiyat</th>
                            <th>Rezervasyon Yap</th>

                        </tr>
                        </thead>

                        <tbody>
                        @foreach($rooms as $rs )
                            <tr>
                                <td><br>{{$rs->title}}</td>
                                <td><a href="{{ Storage::url($rs->image) }}" onclick="return !window.open(this.href, '','top=50 left=100 width=1100 height=700') ">

                                    <br><img src="{{ Storage::url($rs->image) }}" height="30" alt="">
                                        </a>
                                </td>

                                <td><br>{{$rs->price}} ₺</td>

                                <form action="{{route('rezerve',['id' => $rs->id])}}" method="post">
                                    @csrf
                                <td><button type="submit" class="btn button-style-3 mt-sm-2 mt-1">Book Now</button></td>
                                </form>
                            </tr>
                        @endforeach
                        </tbody>

                    </table>
                </div>
            </div>

            <div id="Tokyo" class="tabcontent">

                <h3>Yorumlar</h3>

                @foreach($reviews as $rs)

                    <ul class="media-list">
                        <li class="media">
                            <a class="pull-left" href="#">
                                <img class="media-object" src="#" alt="" />
                            </a>
                            <div class="media-body">
                                <h5 class="media-heading"><a href="#">{{$rs->user->name}}</a></h5>
                                <span>{{$rs->created_at}}</span>
                                <strong>{{$rs->subject}}</strong>
                                <p>{{$rs->review}}</p>

                                <i class="fa fa-star @if ($rs->rate>0) checked @endif"></i>
                                <i class="fa fa-star @if ($rs->rate>1) checked @endif"></i>
                                <i class="fa fa-star @if ($rs->rate>2) checked @endif"></i>
                                <i class="fa fa-star @if ($rs->rate>3) checked @endif"></i>
                                <i class="fa fa-star @if ($rs->rate>4) checked @endif"></i>

                            </div>
                        </li>
                    </ul>
                @endforeach
                <div class="comment-post">
                    @include('home.message')
                    <h4>Leave a comment</h4>

                    <form action="{{route('sendreview',['id'=>$data->id,'slug'=>$data->slug])}}" method="post" class="comment-form" name="review-form">
                        @csrf
                        <div class="" style="padding-left: 20px;">
                            <br>
                            <div class="span8">
                                <label>Subject <span>*</span></label>
                                <input type="text" name="subject" id="subject" class="input-block-level" placeholder="Your subject" />
                            </div>

                            <div class="span5">
                                <label>Review <span>*</span></label>
                                <textarea rows="5" name="review" id="review" class="input-block-level" placeholder="Your comment"></textarea>

                            </div>
                        </div>
                        <div class="rate">

                            <input type="radio" name="rate" id="star5"  value="5" />
                            <label for="star5" title="text">5 stars</label>
                            <input type="radio" name="rate" id="star4"  value="4" />
                            <label for="star4" title="text">4 stars</label>
                            <input type="radio" name="rate" id="star3"  value="3" />
                            <label for="star3" title="text">3 stars</label>
                            <input type="radio" name="rate" id="star2"  value="2" />
                            <label for="star2" title="text">2 stars</label>
                            <input type="radio" name="rate" id="star1"  value="1" />
                            <label for="star1" title="text">1 star</label>
                        </div>
                        @auth
                            <button class="btn btn-theme" type="submit">Submit review</button>
                        @else
                            <a href="/login" class="btn btn-theme">For submit please Login</a>
                        @endauth
                    </form>
                </div>
            </div>

            <script>
                function openCity(evt, cityName) {
                    var i, tabcontent, tablinks;
                    tabcontent = document.getElementsByClassName("tabcontent");
                    for (i = 0; i < tabcontent.length; i++) {
                        tabcontent[i].style.display = "none";
                    }
                    tablinks = document.getElementsByClassName("tablinks");
                    for (i = 0; i < tablinks.length; i++) {
                        tablinks[i].className = tablinks[i].className.replace(" active", "");
                    }
                    document.getElementById(cityName).style.display = "block";
                    evt.currentTarget.className += " active";
                }
            </script>


        </div>
    </section>
    </div>


@endsection
