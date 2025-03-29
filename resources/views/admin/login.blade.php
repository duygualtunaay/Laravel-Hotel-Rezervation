<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="{{asset('assets')}}/admin/img/logo/logo.png" rel="icon">
    <title>RuangAdmin - Login</title>
    <link href="{{asset('assets')}}/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="{{asset('assets')}}/admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="{{asset('assets')}}/admin/css/ruang-admin.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-login">
<!-- Login Content -->
<div class="container-login">
    <div class="row justify-content-center">
        <div class="col-xl-6 col-lg-12 col-md-9">
            <div class="card shadow-sm my-5">
                <div class="card-body p-0">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="login-form">

                                <div class="text-center">
                                    <h1 class="h4 text-gray-900 mb-4">Login</h1>
                                </div>
                                <div class="user">
                                    @include('home.message')
                                    <form action="{{route('admin_logincheck')}}" method="post">
                                        @csrf

                                    <div class="form-group">
                                        <input type="email" name="email" class="form-control" id="email" placeholder="email">
                                    </div>
                                    <div class="form-group">
                                        <input type="password" name="password" class="form-control" id="password" placeholder="password">
                                    </div>
                                        <div class="checkbox">
                                            <label>
                                                <input type="checkbox"> Remember Me
                                            </label>


                                        </div>

                                        <div class="form-group">
                                        <button type="submit" class="btn btn-primary btn-block">Login</button>
                                    </div>
                                    <hr>
                                    <a href="index.html" class="btn btn-google btn-block">
                                        <i class="fab fa-google fa-fw"></i> Login with Google
                                    </a>
                                    <a href="index.html" class="btn btn-facebook btn-block">
                                        <i class="fab fa-facebook-f fa-fw"></i> Login with Facebook
                                    </a>

                                </form>

                                <hr>
                                <div class="text-center">
                                    <a class="font-weight-bold small" href="register.html">Create an Account!</a>
                                </div>
                                <div class="text-center">
                                </div>
                            </div>
                            </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="{{asset('assets')}}/admin/vendor/jquery/jquery.min.js"></script>
<script src="{{asset('assets')}}/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="{{asset('assets')}}/admin/vendor/jquery-easing/jquery.easing.min.js"></script>
<script src="{{asset('assets')}}/admin/js/ruang-admin.min.js"></script>
</div>
</body>

</html>
