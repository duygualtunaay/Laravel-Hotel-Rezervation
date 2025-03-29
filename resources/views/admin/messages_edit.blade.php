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

        <!-- Main content -->
        <section class="content">

            <div class="card">

                    <h4 class="card-title">Message Detail</h4>
                @include('home.message')
            </div>

                    <div class="card-body">

                        <div class="card mb-4">


                                <form role="form" action="{{ route('admin_message_update',['id'=>$data->id])}}" method="post" enctype="multipart/form-data">
                                    @csrf
                                    <div class="card-body">

                                        <table class="table table-striped">


                                            <tr>
                                                <th>Id</th>  <td>{{ $data->id }}</td>
                                            </tr>

                                            </tr>
                                            <th>Name</th>    <td>{{ $data->name }}</td>

                                            </tr>
                                            <tr>
                                                <th>Email</th>      <td>{{ $data->email }}</td>
                                            <tr>
                                            </tr>
                                            <th>Phone</th>    <td>{{ $data->phone }}</td>
                                            <tr>
                                            </tr>
                                            <th>Subject</th>   <td>{{ $data->subject }}</td>
                                            <tr>
                                            </tr>
                                            <th>Message</th> <td>{{ $data->message }}</td>
                                            <tr>
                                            </tr>

                                            <th> Note</th><td><textarea name="note">{{$data->note}}</textarea></td>


                                            <tr>
                                                <td></td>
                                                <td>
                                                    <div> <input type="submit" value="Update message" class="btn btn-primary"></div>
                                                </td>
                                            </tr>

                                        </table>
                            </div>





                                </form>
                        </div>

                    </div>



        </section><!-- /.content -->
    </div><!-- /.content-wrapper -->


