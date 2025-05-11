document.addEventListener('DOMContentLoaded', function() {
    // Reference to all the views
    const blogListView = document.getElementById('blogListView');
    const blogEditorView = document.getElementById('blogEditorView');
    const blogDetailView = document.getElementById('blogDetailView');
    
    // Editor instance reference
    let editorInstance = null;
    
    // Sample data for demo (in a real app this would come from the server)
    const blogData = [
        {
            id: 1,
            title: 'Top 10 sản phẩm bán chạy trong tháng 4',
            summary: 'Tổng hợp những sản phẩm được khách hàng ưa chuộng và mua nhiều nhất trong tháng 4/2025.',
            content: '<p>Trong tháng 4 vừa qua, nhiều sản phẩm đã trở thành xu hướng và được khách hàng tìm kiếm rất nhiều. Dưới đây là danh sách 10 sản phẩm bán chạy nhất:</p><h3>1. Điện thoại thông minh Galaxy S30</h3><p>Với thiết kế hiện đại và cấu hình mạnh mẽ, Galaxy S30 đã trở thành sản phẩm bán chạy nhất tháng vừa qua...</p>',
            thumbnail: './images/background.jpg',
            date: '15/04/2025',
            status: 'published',
            tags: 'sản phẩm,xu hướng,bán chạy'
        },
        {
            id: 2,
            title: 'Cách chăm sóc sức khỏe trong mùa hè',
            summary: 'Những lời khuyên hữu ích giúp bạn giữ gìn sức khỏe tốt trong mùa hè nóng bức.',
            content: '<p>Mùa hè đến mang theo nhiệt độ cao, có thể ảnh hưởng đến sức khỏe nếu không có biện pháp phòng ngừa thích hợp. Bài viết này sẽ cung cấp cho bạn những lời khuyên hữu ích để giữ gìn sức khỏe trong suốt mùa hè.</p><h3>1. Uống đủ nước</h3><p>Cơ thể mất nhiều nước hơn trong mùa hè do tiết mồ hôi nhiều. Hãy đảm bảo uống ít nhất 2 lít nước mỗi ngày...</p>',
            thumbnail: './images/background2.avif',
            date: '10/04/2025',
            status: 'published',
            tags: 'sức khỏe,mùa hè,dinh dưỡng'
        },
        {
            id: 3,
            title: 'Xu hướng thời trang mùa xuân 2025',
            summary: 'Cập nhật những xu hướng thời trang mới nhất cho mùa xuân năm 2025.',
            content: '<p>Mùa xuân 2025 đang dần đến với nhiều xu hướng thời trang mới mẻ và độc đáo. Dưới đây là những xu hướng đang thịnh hành mà bạn không nên bỏ lỡ.</p><h3>1. Phong cách tối giản</h3><p>Phong cách tối giản với những gam màu trung tính như be, trắng, xám đang quay trở lại mạnh mẽ...</p>',
            thumbnail: './images/background3.avif',
            date: '05/04/2025',
            status: 'draft',
            tags: 'thời trang,xu hướng,mùa xuân'
        }
    ];

    // Khởi tạo CKEditor
    function initEditor() {
        if(editorInstance) {
            editorInstance.destroy();
            editorInstance = null;
        }
        
        CKEDITOR.replace('blogContent', {
            extraPlugins: 'base64image',
            removeDialogTabs: 'image:advanced;image:Link',
            removePlugins: 'exportpdf,clipboard',
            height: 400,
            toolbarGroups: [
                { name: 'document', groups: [ 'mode', 'document', 'doctools' ] },
                { name: 'clipboard', groups: [ 'clipboard', 'undo' ] },
                { name: 'editing', groups: [ 'find', 'selection', 'spellchecker', 'editing' ] },
                { name: 'forms', groups: [ 'forms' ] },
                { name: 'basicstyles', groups: [ 'basicstyles', 'cleanup' ] },
                { name: 'paragraph', groups: [ 'list', 'indent', 'blocks', 'align', 'bidi', 'paragraph' ] },
                { name: 'links', groups: [ 'links' ] },
                { name: 'insert', groups: [ 'insert' ] },
                { name: 'styles', groups: [ 'styles' ] },
                { name: 'colors', groups: [ 'colors' ] },
                { name: 'tools', groups: [ 'tools' ] },
                { name: 'others', groups: [ 'others' ] },
                { name: 'about', groups: [ 'about' ] }
            ]
        });
        
        editorInstance = CKEDITOR.instances.blogContent;
    }

    // Hiển thị danh sách blog
    function showBlogListView() {
        blogListView.style.display = 'block';
        blogEditorView.style.display = 'none';
        blogDetailView.style.display = 'none';
        
        // Nếu đang có editor, hủy để giảm tải
        if(editorInstance) {
            editorInstance.destroy();
            editorInstance = null;
        }
    }

    // Hiển thị giao diện thêm/sửa blog
    function showBlogEditorView(blogId = null) {
        blogListView.style.display = 'none';
        blogEditorView.style.display = 'block';
        blogDetailView.style.display = 'none';
        
        // Reset form
        document.getElementById('blogForm').reset();
        document.getElementById('blogId').value = '';
        document.getElementById('thumbnailPreview').style.display = 'none';
        document.getElementById('thumbnailPreview').src = '';
        document.getElementById('editorTitle').textContent = 'Thêm bài viết mới';
        
        // Khởi tạo CKEditor
        initEditor();
        
        // Nếu là chỉnh sửa blog cũ
        if(blogId) {
            const blog = blogData.find(b => b.id === parseInt(blogId));
            if(blog) {
                document.getElementById('editorTitle').textContent = 'Chỉnh sửa bài viết';
                document.getElementById('blogId').value = blog.id;
                document.getElementById('blogTitle').value = blog.title;
                document.getElementById('blogSummary').value = blog.summary;
                document.getElementById('blogStatus').value = blog.status === 'published' ? 'published' : 'draft';
                document.getElementById('blogTags').value = blog.tags;
                
                // Hiển thị thumbnail nếu có
                if(blog.thumbnail) {
                    document.getElementById('thumbnailPreview').src = blog.thumbnail;
                    document.getElementById('thumbnailPreview').style.display = 'block';
                }
                
                // Cập nhật nội dung vào CKEditor
                setTimeout(() => {
                    editorInstance.setData(blog.content);
                }, 100);
            }
        }
    }

    // Hiển thị chi tiết blog
    function showBlogDetailView(blogId) {
        blogListView.style.display = 'none';
        blogEditorView.style.display = 'none';
        blogDetailView.style.display = 'block';
        
        const blog = blogData.find(b => b.id === parseInt(blogId));
        if(blog) {
            document.getElementById('detailTitle').textContent = blog.title;
            document.getElementById('detailDate').textContent = blog.date;
            document.getElementById('detailStatus').textContent = blog.status === 'published' ? 'Đã đăng' : 'Bản nháp';
            document.getElementById('detailSummary').textContent = blog.summary;
            document.getElementById('detailContent').innerHTML = blog.content;
            
            // Hiển thị thumbnail
            if(blog.thumbnail) {
                document.getElementById('detailThumbnail').src = blog.thumbnail;
                document.getElementById('detailThumbnail').style.display = 'block';
            } else {
                document.getElementById('detailThumbnail').style.display = 'none';
            }
            
            // Hiển thị tags
            const tagsContainer = document.getElementById('detailTags');
            tagsContainer.innerHTML = '';
            if(blog.tags) {
                const tags = blog.tags.split(',');
                tags.forEach(tag => {
                    const badge = document.createElement('span');
                    badge.className = 'badge mr-1';
                    badge.textContent = tag.trim();
                    tagsContainer.appendChild(badge);
                });
            }
        }
    }

    // Event: Thêm blog mới
    document.getElementById('addNewBlogBtn').addEventListener('click', function() {
        showBlogEditorView();
    });

    // Event: Quay lại danh sách từ trang thêm/sửa
    document.getElementById('backToListBtn').addEventListener('click', function() {
        showBlogListView();
    });

    // Event: Quay lại danh sách từ trang chi tiết
    document.getElementById('backFromDetailBtn').addEventListener('click', function() {
        showBlogListView();
    });

    // Event: Hiển thị preview hình ảnh khi chọn file
    document.getElementById('blogThumbnail').addEventListener('change', function(e) {
        const file = e.target.files[0];
        if(file) {
            const reader = new FileReader();
            reader.onload = function(e) {
                document.getElementById('thumbnailPreview').src = e.target.result;
                document.getElementById('thumbnailPreview').style.display = 'block';
            };
            reader.readAsDataURL(file);
            
            // Cập nhật label hiển thị tên file
            document.querySelector('.custom-file-label').textContent = file.name;
        }
    });

    // Event: Xử lý nút publish
    document.getElementById('publishBtn').addEventListener('click', function(e) {
        e.preventDefault();
        
        // Validate form
        const title = document.getElementById('blogTitle').value.trim();
        const content = editorInstance.getData().trim();
        
        if(!title) {
            alert('Vui lòng nhập tiêu đề bài viết');
            return;
        }
        
        if(!content) {
            alert('Vui lòng nhập nội dung bài viết');
            return;
        }
        
        // Simulate saving
        alert('Bài viết đã được lưu thành công!');
        showBlogListView();
    });

    // Event: Xử lý nút lưu nháp
    document.getElementById('saveDraftBtn').addEventListener('click', function() {
        const title = document.getElementById('blogTitle').value.trim();
        
        if(!title) {
            alert('Vui lòng nhập ít nhất tiêu đề bài viết');
            return;
        }
        
        // Simulate saving
        alert('Bài viết đã được lưu dưới dạng bản nháp!');
        showBlogListView();
    });

    // Event: Xử lý các nút trong bảng danh sách
    document.addEventListener('click', function(e) {
        // Nút xem chi tiết
        if(e.target.closest('.view-btn')) {
            const blogId = e.target.closest('.view-btn').dataset.id;
            showBlogDetailView(blogId);
        }
        
        // Nút chỉnh sửa
        if(e.target.closest('.edit-btn')) {
            const blogId = e.target.closest('.edit-btn').dataset.id;
            showBlogEditorView(blogId);
        }
        
        // Nút xóa
        if(e.target.closest('.delete-btn')) {
            const blogId = e.target.closest('.delete-btn').dataset.id;
            $('#deleteModal').modal('show');
            
            // Set đúng blog ID cần xóa
            document.getElementById('confirmDeleteBtn').dataset.id = blogId;
        }
    });

    // Event: Xác nhận xóa blog
    document.getElementById('confirmDeleteBtn').addEventListener('click', function() {
        const blogId = this.dataset.id;
        
        // Simulate delete blog
        alert(`Đã xóa bài viết có ID: ${blogId}`);
        
        // Đóng modal và quay về danh sách
        $('#deleteModal').modal('hide');
    });

    // Event: Tìm kiếm blog
    document.getElementById('searchBlog').addEventListener('keyup', function(e) {
        const searchText = e.target.value.toLowerCase();
        
        // Logic tìm kiếm có thể được thêm vào đây
        console.log(`Đang tìm kiếm: ${searchText}`);
        
        // Trong môi trường thực, đây sẽ là nơi gọi API hoặc lọc dữ liệu
    });
});