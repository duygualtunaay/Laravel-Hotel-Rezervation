<html>
<head>
    <title>Image Galleri</title>
    <link href="{{asset('assets')}}/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="{{asset('assets')}}/admin/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="{{asset('assets')}}/admin/css/ruang-admin.min.css" rel="stylesheet">
</head>
<body id="page-top" >
    <div class="card">

                <h4 class="card-title">{{$data->title}}</h4>
            </div>


                <div class="card mb-4">

                    <div class="card-body">
                        <form role="form" action="{{route('admin_image_store',['hotel_id'=>$data->id])}}" method="post" enctype="multipart/form-data">
                            @csrf
                        <div class="card-body">

                            <div class="form-group">
                                <label >Title</label>
                                <input type="text" name="title" class="form-control" >
                            </div>

                            <div class="form-group">
                                <label>İmage</label>
                                <input type="file" name="image" class="form-control" >
                            </div>

                            <button type="submit" class="btn btn-primary">Resim Ekle</button>


                    </div>


                <div class="table-responsive p-3">
                    <table class="table align-items-center table-flush table-hover" id="dataTableHover">
                        <thead class="thead-light">
                        <tr>
                            <th>Id</th>
                            <th>Title</th>
                            <th>image</th>
                            <th>Action</th>
                        </tr>
                        </thead>

                        <tbody>
                        @foreach($images as $rs )
                            <tr>
                                <td>{{$rs->id}}</td>

                                <td>{{$rs->title}}</td>

                                <td>
                                    @if ($rs->image)
                                    <img src="{{ Storage::url($rs->image) }}" height="30" alt="">
                                    @endif
                                </td>


                                <td><a href="{{route('admin_image_delete',['id' => $rs->id,'hotel_id' => $data->id])}}" onclick="return confirm('Delete! Are you sure? ')"><img src="{{asset('assets/admin/img')}}/delete.png" height="40"></a></td>

                            </tr>

                        @endforeach
                        </tbody>
                    </table>
                </div>
                </form>
            </div>
            </div>




    </body>
</html>
