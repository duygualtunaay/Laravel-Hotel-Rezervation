<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="{{asset('assets')}}/admin/img/logo/logo.png" rel="icon">
    <title>@yield('title')</title>
    <link href="{{asset('assets')}}/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="{{asset('assets')}}/admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="{{asset('assets')}}/admin/css/ruang-admin.min.css" rel="stylesheet">


    @yield('css')
    @yield('javascript')

</head>



<body id="page-top">
<div id="wrapper">

@include('admin._sidebar')
<div id="content-wrapper" class="d-flex flex-column">
<div id="content">

@include('admin._header')

@yield('content')

@include('admin._footer')

@yield('footer')


</body>
</html>
