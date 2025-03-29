<!DOCTYPE html>
<html lang="zxx">

<head>

    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <title> @yield('title')</title>
    <meta name="description" content="@yield('description')">
    <meta name="keywords" content="@yield('keywords')">
    <meta name="author" content="Şeyma Erbaş">

    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //Meta tag Keywords -->

    <!-- Custom-Files -->
    <link rel="stylesheet" href="{{asset('assets')}}/css/bootstrap.css">
    <!-- Bootstrap-Core-CSS -->
    <link href="{{asset('assets')}}/css/css_slider.css" type="text/css" rel="stylesheet" media="all">
    <!-- banner slider -->
    <link rel="stylesheet" href="{{asset('assets')}}/css/style.css" type="text/css" media="all" />
    <!-- Style-CSS -->
    <link href="{{asset('assets')}}/css/font-awesome.min.css" rel="stylesheet">
    <!-- Font-Awesome-Icons-CSS -->
    <!-- //Custom-Files -->

    <!-- Web-Fonts -->
    <link href="//fonts.googleapis.com/css?family=Crimson+Text:400,400i,600,600i,700,700i" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Oxygen:300,400,700&amp;subset=latin-ext" rel="stylesheet">

    <!-- //Web-Fonts -->
</head>

<body>


@include('home._header')






@section('content')


    @show
@include('home._footer')
@yield('footerjs')
</body>
</html>
