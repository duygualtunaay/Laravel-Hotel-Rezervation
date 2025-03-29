
@foreach($children as $subcategory)
    <ul class="dropdown-menu-lg-right">
        @if(count($subcategory->children))
            <li class="dropdown-menu-lg-right">
            <a href="#services">{{$subcategory->title}} <span class="fa fa-angle-down" aria-hidden="true"></span></a>
            </li>
            <ul class="dropdown-menu-lg-right">
                @include('home.categorytree',['children'=> $subcategory->children])
            </ul>

        @else
             <li> <a href="{{route('categoryhotels',['id'=>$subcategory->id , 'slug'=>$subcategory->title])}}"> <span class="fa fa-angle-down" aria-hidden="true"></span>{{$subcategory->title}}</a></li>

        @endif

    </ul>
@endforeach

