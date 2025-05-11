//document.getElementById('logout').addEventListener('click', function (event) {
//    event.preventDefault(); // Ngăn chặn hành vi mặc định của liên kết

//    const confirmLogout = confirm('Bạn có muốn đăng xuất không?'); // Hiển thị hộp thoại xác nhận
//    if (confirmLogout) {
//        window.location.href = '/Home/Index'; // Chuyển hướng về giao diện đăng nhập
//    }
//});
document.addEventListener('DOMContentLoaded', function () {
    const logoutLink = document.getElementById('logout');
    if (logoutLink) {
        logoutLink.addEventListener('click', function (event) {
            event.preventDefault();
            const confirmLogout = confirm('Bạn có muốn đăng xuất không?');
            if (confirmLogout) {
                window.location.href = '/Home/Index';
            }
        });
    }
});
