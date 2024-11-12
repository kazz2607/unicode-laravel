<h1>Admin Dashborad</h1>

@if(auth()->user())
    <h3>Đã đăng nhập</h3>
    <p>ID : {{ auth()->user()->id }}</p>
    <p>Email : {{ auth()->user()->email }}</p>
    <p>Name : {{ auth()->user()->name }}</p>
@else
    <h3>Chưa đăng nhập</h3>
@endif