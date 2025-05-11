document.getElementById('logout').addEventListener('click', function (event) {
    event.preventDefault(); // Ngăn chặn hành vi mặc định của liên kết

    const confirmLogout = confirm('Bạn có muốn đăng xuất không?'); // Hiển thị hộp thoại xác nhận
    if (confirmLogout) {
        window.location.href = 'index.html'; // Chuyển hướng về giao diện đăng nhập
    }
});