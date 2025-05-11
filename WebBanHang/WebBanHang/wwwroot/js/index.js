document.addEventListener('DOMContentLoaded', function() {
    // Xử lý hiển thị/ẩn mật khẩu
    const showPasswordCheckbox = document.getElementById('show-password');
    const passwordInput = document.querySelector('input[name="password"]');
    
    showPasswordCheckbox.addEventListener('change', function() {
        // Thay đổi kiểu input giữa "password" và "text"
        if (this.checked) {
            passwordInput.type = 'text';
        } else {
            passwordInput.type = 'password';
        }
    });
    
    // Xử lý đăng nhập
    const loginForm = document.querySelector('.form-box.login form');
    
    loginForm.addEventListener('submit', function(event) {
        event.preventDefault(); // Ngăn chặn hành vi mặc định của form
        
        const username = document.querySelector('input[name="username"]').value;
        const password = document.querySelector('input[name="password"]').value;
        
        // Kiểm tra tên đăng nhập và mật khẩu
        if (username === 'admin' && password === 'admin') {
            // Nếu đúng, chuyển hướng đến trang home.html
            window.location.href = '/HomeDashBoard/HomeDashboard';
        } else {
            // Nếu sai, hiển thị thông báo lỗi
            alert('Tên đăng nhập hoặc mật khẩu không đúng!');
        }
    });
});