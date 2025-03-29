<html>
<head>
    <title>User Roles</title>
    <link rel="stylesheet" href="{{ asset('assets') }}/admin/vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="{{ asset('assets') }}/admin/vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="{{ asset('assets') }}/admin/css/fontastic.css">
    <!-- Google fonts - Roboto -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700">
    <!-- jQuery Circle-->
    <link rel="stylesheet" href="{{ asset('assets') }}/admin/css/grasp_mobile_progress_circle-1.0.0.min.css">
    <!-- Custom Scrollbar-->
    <link rel="stylesheet" href="{{ asset('assets') }}/admin/vendor/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css">
</head>
<body>

<div class="card-header">
    <h3 class="card-title">User: {{$data->title}}</h3>
</div>
<div class="card-body">

    <div style="width:200px; height: 600px;">

        <table class="table" style="width: 800px">

            <tr><th>Id</th><td>{{$data->id}}</td></tr>
            <tr><th>Name</th><td>{{$data->name}}</td></tr>
            <tr><th>Email</th><td>{{$data->email}}</td></tr>
            <tr><th>Roles</th>
                <td>
                    <table>
                        @foreach($data->roles as $row)
                            <tr>
                                <td>{{$row->name}}</td>
                                <td>
                                    <a href="{{route('admin_user_role_delete',['userid'=>$data->id,'roleid'=>$row->id])}}" onclick="return confirm('Delete ! Are you sure?')"><img src="{{asset('assets/admin/img')}}/delete.png" height="30"></a>
                                </td>
                            </tr>

                        @endforeach
                    </table>

                </td>


            </tr>
            <tr>
                <th>Add Role</th>
                <td>
                    <form role="form" action="{{route('admin_user_role_add',['id'=>$data->id])}}" method="post" enctype="multipart/form-data">
                        @csrf
                        <select name="roleid">
                            @foreach($datalist as $rs)
                                <option value="{{$rs->id}}">{{$rs->name}}</option>
                            @endforeach
                        </select>
                        <button type="submit" class="btn btn-theme">Add Role</button>
                    </form>


                </td>
            </tr>

        </table>
    </div>

</div>

</body>
</html>
