@php
    $setting=\App\Http\Controllers\HomeController::getsetting();
@endphp
<!--
footer -->
<footer class="py-5">
    <div class="container pt-xl-4">
        <div class="row footer-top">
            <div class="col-lg-4 col-md-6 footer-grid_section_1its">
                <h2 class="logo-2 mb-lg-4 mb-3">
                    <a href="{{route('home')}}" class="text-uppercase text-wh">Villas</a>
                </h2>
                <!-- Map -->
                <div class="map-fo">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3048.5130900428026!2d44.506621715459396!3d40.17539347939393!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x406abcf86e940951%3A0x87a1923d7df42367!2sBest+Western+Congress+Hotel!5e0!3m2!1sen!2sin!4v1509605601510"></iframe>
                </div>
                <!-- //Map -->
            </div>
            <div class="col-lg-2 col-md-6 footer-grid_section_1its mt-md-0 mt-4">
                <h3 class="footer-title text-uppercase text-wh mb-lg-4 mb-3">Links</h3>
                <ul class="list-unstyled">
                    <li class="mb-3">
                        <a href="{{route('home')}}">Home</a>
                    </li>
                    <li class="mb-3">
                        <a href="{{'aboutus'}}">About Us</a>
                    </li>
                    <li class="mb-3">
                        <a href="gallery.html">Gallery</a>
                    </li>
                    <li class="mb-3">
                        <a href="#services">Services</a>
                    </li>
                    <li class="mb-3">
                        <a href="{{'contactus'}}">Contact Us</a>
                    </li>
                </ul>
            </div>
            <div class="col-lg-3 col-md-6 footer-grid_section_1its mt-lg-0 mt-4">
                <h3 class="footer-title text-uppercase text-wh mb-lg-4 mb-3">Contact Info</h3>
                <div class="footer-style-w3ls mb-4">
                    <p>{{$setting->company}}</p>
                </div>
                <div class="contact-info">
                    <div class="footer-style-w3ls mb-4">
                        <h4 class="text-li mb-2">Phone</h4>
                        <p>{{$setting->phone}}</p>
                    </div>
                    <div class="footer-style-w3ls mb-4">
                        <h4 class="text-li mb-2">Email </h4>
                        <p><a href="mailto:info@example.com">{{$setting->email}}</a></p>
                    </div>
                    <div class="footer-style-w3ls mb-4">
                        <h4 class="text-li mb-2">Address</h4>
                        <p>{{$setting->address}}</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 footer-grid_section_1its mt-lg-0 mt-4">
                <!-- social icons -->
                <div class="mobamuinfo_social_icons">
                    <h3 class="footer-title text-uppercase text-wh mb-lg-4 mb-3">Social Info</h3>
                    <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>

                    <h4 class="sub-con-fo text-li my-4">Catch on Social</h4>
                    <ul class="mobamuits_social_list list-unstyled">
                       @if($setting->facebook !=null)
                        <li class="w3_mobamu_facebook">
                            <a href="{{$setting->facebook }}" target="_blank">
                                <span class="fa fa-facebook-f"></span>
                            </a>
                        </li>
                        @endif
                        @if($setting->twitter !=null)
                        <li class="w3_mobamu_twitter">
                            <a href="{{$setting->twitter}}" target="_blank">
                                <span class="fa fa-twitter"></span>
                            </a>
                        </li>
                         @endif
                         @if($setting->instagram !=null)
                        <li class="w3_mobamu_instagram">
                            <a href="$setting->instagram " target="_blank">
                                <span class="fa fa-instagram" aria-hidden="true"></span>
                            </a>
                        </li>
                             @endif

                    </ul>
                </div>
                <!-- social icons -->
            </div>
        </div>
    </div>
</footer>
<!-- //footer -->
