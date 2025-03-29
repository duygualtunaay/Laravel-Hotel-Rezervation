@extends('layouts.admin')

@section('title','Edit Setting')
@section('javascript')

    <script src="https://cdn.ckeditor.com/4.15.1/standard/ckeditor.js"></script>


@endsection
@section('content')

    <div class="breadcrumb-holder">
        <div class="container-fluid">
            <ul class="breadcrumb">
                <li class="breadcrumb-item"><a href="{{ route('admin_home') }}">Home</a></li>
                <li class="breadcrumb-item active">Edit Setting  </li>
            </ul>
        </div>
    </div>

    <div>
        <div  >
            <form action="{{ route('admin_setting_update')}}" method="post" enctype="multipart/form-data">
                @csrf
                <div >
                    <div class="col-16 col-sm-13">
                        <nav>
                            <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                                <a class="nav-item nav-link active" id="nav-general-tab" data-toggle="tab" href="#nav-general" role="tab" aria-controls="nav-general" aria-selected="true">General </a>
                                <a class="nav-item nav-link" id="nav-smtp-tab" data-toggle="tab" href="#nav-smtp" role="tab" aria-controls="nav-smtp" aria-selected="false">Smtp </a>
                                <a class="nav-item nav-link" id="nav-social-tab" data-toggle="tab" href="#nav-social" role="tab" aria-controls="nav-socialt" aria-selected="false">Social Media </a>
                                <a class="nav-item nav-link" id="nav-aboutus-tab" data-toggle="tab" href="#nav-aboutus" role="tab" aria-controls="nav-aboutus" aria-selected="false">About Us </a>
                                <a class="nav-item nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Contact </a>
                                <a class="nav-item nav-link" id="nav-references-tab" data-toggle="tab" href="#nav-references" role="tab" aria-controls="nav-references" aria-selected="false">References </a>
                            </div>
                        </nav>
                        <div class="tab-content py-3 px-3 px-sm-3" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-general" role="tabpanel" aria-labelledby="nav-general-tab">
                                <input type="hidden" id="id" name="id"  value="{{$data->id}}" class="form-control">
                                <div class="form-group">
                                    <label><b>Title</b></label>
                                    <input type="text" name="title" id="title" value="{{$data->title}}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><b>Keywords</b></label>
                                    <input type="text" name="keywords" value="{{$data->keywords}}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><b>Description</b></label>
                                    <input type="text" name="description" value="{{$data->description}}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><b>Company</b></label>
                                    <input type="text" name="company" value="{{$data->company}}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><b>Address</b></label>
                                    <input type="text" name="address" value="{{$data->address}}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><b>Phone</b></label>
                                    <input type="text" name="phone"  value="{{$data->phone}}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><b>Fax</b></label>
                                    <input type="text" name="fax"  value="{{$data->fax}}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><b>Email</b></label>
                                    <input type="email" name="email"  value="{{$data->email}}" class="form-control">
                                </div>
                                <div class="form-group row">
                                    <label class="col-sm-2 form-control-label"><b>Status</b></label>
                                    <div class="col-sm-12 mb-5">
                                        <select name="status" class="form-control" >
                                            <option selected="selected">{{$data->status}}</option>
                                            <option>True</option>
                                            <option>False</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="nav-smtp" role="tabpanel" aria-labelledby="nav-smtp-tab">
                                <div class="form-group">
                                    <label><b>Smtp Server</b></label>
                                    <input type="text" name="smtpserver"  value="{{$data->smtpserver}}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><b>Smtp Email</b></label>
                                    <input type="email" name="smtpemail"  value="{{$data->smtpemail}}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><b>Smtp Password</b></label>
                                    <input type="password" name="smtppassword"  value="{{$data->smtppassword}}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><b>Smtp Port</b></label>
                                    <input type="number" name="smtpport"  value="{{$data->smtpport}}" class="form-control">
                                </div>
                            </div>
                            <div class="tab-pane fade" id="nav-social" role="tabpanel" aria-labelledby="nav-social-tab">
                                <div class="form-group">
                                    <label><b>Facebook</b></label>
                                    <input type="text" name="facebook"  value="{{$data->facebook}}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><b>Instagram</b></label>
                                    <input type="text" name="instagram"  value="{{$data->instagram}}" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label><b>Twitter</b></label>
                                    <input type="text" name="twitter"  value="{{$data->twitter}}" class="form-control">
                                </div>
                            </div>
                            <div class="tab-pane fade" id="nav-aboutus" role="tabpanel" aria-labelledby="nav-aboutus-tab">
                                <div class="form-group">
                                    <label><b>About Us</b></label>
                                    <textarea id="aboutus" name="aboutus">{{$data->aboutus}}</textarea>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                                <div class="form-group">
                                    <label><b>Contact</b></label>
                                    <textarea id="contact" name="contact">{{$data->contact}}</textarea>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="nav-references" role="tabpanel" aria-labelledby="nav-references-tab">
                                <div class="form-group">
                                    <label><b>References</b></label>
                                    <textarea id="references" name="references">{{$data->references}}</textarea>
                                </div>
                                <script>
                                    CKEDITOR.replace( 'aboutus' );
                                    CKEDITOR.replace( 'contact' );
                                    CKEDITOR.replace( 'references' );
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <input type="submit" value="Update setting" class="btn btn-outline-warning">
                </div>
            </form>
        </div>
    </div>

@endsection
