@auth
<div class="aside">
    <h3 class="aside-title">User Panel</h3>
    <ul class="list-links">
        <li><a href="{{route('myprofile')}}">My profile</a> </li>
        <li><a href="{{route('user_review')}}">My Review</a> </li>
        <li><a href="{{route('user_rezerve')}}">My rezervation</a> </li>
        <li><a href="{{route('logout')}}">Logout</a> </li>
        @php
            $userRoles=Auth::User()->roles->pluck('name');
        @endphp
        @if($userRoles->contains('admin'))
            <li class="nav-item"><a href="{{route('admin_home')}}" class="nav-link"  target="_blank"><i class="fa fa-map-signs"></i> ADMIN PANEL</a></li>
        @endif
    </ul>
</div>
@endauth
