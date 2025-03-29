<!-- Sidebar -->
<ul class="navbar-nav sidebar sidebar-light accordion" id="accordionSidebar">
    <a class="sidebar-brand d-flex align-items-center justify-content-center"  href="{{ route('admin_home') }}">
        <div class="sidebar-brand-icon">
            <img src="{{asset('assets')}}/admin/img/logo/logo2.png">
        </div>
        <div class="sidebar-brand-text mx-3">RuangAdmin</div>

    </a>
    <li class="nav-item">

        <a href="{{route('admin_home')}}" class="nav-link">

            <i class="far fa-fw fa-window-maximize"></i>
            <span>Ana Sayfa</span>
        </a>

    </li>
    <li class="nav-item">

        <a href="{{route('admin_category')}}" class="nav-link">

        <i class="far fa-fw fa-window-maximize"></i>
            <span>Kategori</span>
        </a>

        </li>
    <li class="nav-item">
        <a href="{{route('admin_hotels')}}" class="nav-link">

            <i class="far fa-fw fa-window-maximize"></i>
            <span>Oteller</span>
        </a>
    </li>
    <li class="nav-item">
        <a href="{{route('admin_rooms')}}" class="nav-link">

            <i class="far fa-fw fa-window-maximize"></i>
            <span>Odalar</span>
        </a>
    </li>
    <li class="nav-item">
        <a href="{{route('admin_message')}}" class="nav-link">

            <i class="far fa-fw fa-window-maximize"></i>
            <span>Contact Messages</span>
        </a>
    </li>
    <li class="nav-item">
        <a href="{{route('admin_review')}}" class="nav-link">

            <i class="far fa-fw fa-window-maximize"></i>
            <span>Review</span>
        </a>
    </li>
    <li class="nav-item">
        <a href="{{route('admin_faq')}}" class="nav-link">

            <i class="far fa-fw fa-window-maximize"></i>
            <span>FAQ</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link collapsed" href="{{route('admin_rezerve')}}">
            <i class="fab fa-fw fa-wpforms"></i>
            <span>Rezervasyon</span>
        </a>
    </li>
    <li class="nav-item">
        <a class="nav-link collapsed" href="{{route('admin_users')}}">
            <i class="fab fa-fw fa-wpforms"></i>
            <span>Users</span>
        </a>
    </li>


    <li class="nav-item">
        <a class="nav-link collapsed" href="{{route('admin_setting')}}">
            <i class="fab fa-fw fa-wpforms"></i>
            <span>Ayarlar</span>
        </a>
    </li>
</ul>
<!-- Sidebar -->
