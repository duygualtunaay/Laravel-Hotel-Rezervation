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

        <h4 class="card-title">Rezerve Detail</h4>

    </div>

    <div class="card-body">

        <div class="card mb-4">


            <form role="form" action="{{ route('admin_rezerve_update',['id'=>$data->id])}}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="card-body">

                    <table class="table table-striped">
                        @php
                            $data->total=$data->days*$data->room->price;
                        @endphp



                        <tr>
                            <th>Id</th>  <td>{{ $data->id }}</td>
                        </tr>

                        <tr>
                        <th>User</th>   <td>{{ $data->user->title }}</td>

                        </tr>

                        <tr>
                        <th>Hotel</th>   <td>{{ $data->hotel_id }}</td>

                        </tr>

                        <tr>
                        <th>Room</th>   <td>{{ $data->room->title}}</td>

                        </tr>
                        <tr>
                        <th>Name</th>   <td>{{ $data->user->name}}</td>

                        </tr>

                        <tr>
                        <th>Total</th>   <td>{{ $data->total }}</td>

                        </tr>

                        <tr>
                        <th>checkin</th>   <td>{{ $data->checkin }}</td>

                        </tr>

                        </tr>
                        <th>checkout</th>   <td>{{ $data->checkout }}</td>

                        </tr>

                        <tr>
                        <th>days</th>   <td>{{ $data->days }}</td>

                        </tr>

                        <tr>
                        <th>note</th>   <td>{{ $data->note }}</td>

                        </tr>

                        <tr>

                            <div class="form-group">
                                <label >Action</label>
                                <select class="select2-single form-control" name="status" id="select2Single">
                                    <option value="True">True</option>
                                    <option  value="False">False</option>

                                </select>
                            </div>

                        <tr>


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


