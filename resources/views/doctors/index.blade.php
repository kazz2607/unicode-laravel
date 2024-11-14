<h2 class="">Trang quản trị dành cho bác sỹ</h2>

<div class="doctor-logout">
    <a class="dropdown-item" href="{{ route('doctors.logout') }}" onclick="event.preventDefault();
        document.getElementById('logout-form').submit();" >Đăng xuất</a>
    <form id="logout-form" action="{{ route('doctors.logout') }}" method="POST" class="d-none">
        @csrf
    </form>
</div>
