
    @extends('layouts.home')
    @php
        $setting=\App\Http\Controllers\HomeController::getsetting();
    @endphp
    @section('title', 'User Profile '.$setting->title)



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
               @include('profile.show')
            </div>

            </div>
        </div>
    </div>
        </div>

    @endsection
