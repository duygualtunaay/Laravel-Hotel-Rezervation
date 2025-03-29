<div class="banner_w3lspvt">
    <div class="csslider infinity" id="slider1">
        <input type="radio" name="slides" checked="checked" id="slides_1" />
        <input type="radio" name="slides" id="slides_2" />
        <input type="radio" name="slides" id="slides_3" />
        <input type="radio" name="slides" id="slides_4" />
        <ul class="banner_slide_bg">
            @foreach($slider as $rs)
            <li>
                <div class="container">
                    <div class="w3ls_banner_txt">
                        <p>{{ \App\Http\Controllers\Admin\CategoryController::getParentsTree($rs->category,$rs->category->title) }}</p>
                        <h3 class="w3ls_pvt-title text-wh text-uppercase let">{{$rs->title}}</h3>
                        <a href="{{route('hotel',['id' => $rs->id,'slug' => $rs->slug])}}" class="btn button-style mt-sm-5 mt-4">Oteli incele</a>
                    </div >
                </div>
            </li>
            @endforeach
        </ul>
        <div class="arrows">
            <label for="slides_1"></label>
            <label for="slides_2"></label>
            <label for="slides_3"></label>
            <label for="slides_4"></label>
        </div>
    </div>
</div>
<!-- //banner -->
</div>
