USE ShopHueDaQua;
GO

--Khách hàng
INSERT INTO KhachHang (taiKhoan, matKhau, hoTen, email, soDienThoai, DiaChi)
VALUES
('nguyenvanA', '123', N'Nguyễn Văn A', 'nguyenvana@email.com', '0912345678', N'123 Lê Lợi, Huế'),
('tranthiB', '123', N'Trần Thị B', 'tranthib@email.com', '0987654321', N'45 Hùng Vương, Đà Nẵng'),
('lehoangC', '123', N'Lê Hoàng C', 'lehoangc@email.com', '0905123456', N'78 Nguyễn Du, Quảng Nam'),
('phamthid', '123', N'Phạm Thị D', 'phamthid@email.com', '0911222333', N'12 Trần Hưng Đạo, Huế'),
('vuvanE', '123', N'Vũ Văn E', 'vuvane@email.com', '0977123456', N'55 Lý Thường Kiệt, Đà Nẵng'),
('nguyenthif', '123', N'Nguyễn Thị F', 'nguyenthif@email.com', '0909876543', N'9 Hải Thượng Lãn Ông, Quảng Nam'),
('truongquangG', '123', N'Trương Quang G', 'truongquangg@email.com', '0915987654', N'30 Bà Triệu, Huế'),
('hoangthiH', '123', N'Hoàng Thị H', 'hoangthih@email.com', '0988999888', N'17 Lê Duẩn, Đà Nẵng'),
('dinhvanI', '123', N'Đinh Văn I', 'dinhvani@email.com', '0903123123', N'22 Trần Phú, Quảng Nam'),
('lamthiK', '123', N'Lâm Thị K', 'lamthik@email.com', '0917123456', N'4 Nguyễn Huệ, Huế');

--Danh mục
INSERT INTO DanhMuc (tenDanhMuc, hinhAnh, moTa, tenDacSan) VALUES
(N'Đặc Sản Ẩm Thực Đà Nẵng', 'https://statics.vinwonders.com/dac-san-da-nang-1.jpg', N'Đặc sản ẩm thực nổi tiếng của Đà Nẵng', N'Đặc sản Đà Nẵng'),
(N'Nước Mắm Nam Ô', 'https://th.bing.com/th/id/OIP.ScMsg8yhO8Q_1sYcqZp7bQHaEU?cb=iwc2&rs=1&pid=ImgDetMain', N'Nước mắm truyền thống nổi tiếng của Nam Ô, Đà Nẵng', N'Đặc sản Đà Nẵng'),
(N'Hải Sản Khô Đà Nẵng', 'https://th.bing.com/th/id/OIP.-2rw7ZA9xtLMRHc-Isw-BAHaFj?cb=iwc2&rs=1&pid=ImgDetMain', N'Hải sản khô đặc sản vùng biển Đà Nẵng', N'Đặc sản Đà Nẵng'),
(N'Trà và Thảo Dược Đà Nẵng', 'https://duoclieumientay.com/wp-content/uploads/2022/12/cong-dung-cua-tra-thao-duoc-duoc-lieu-mien-tay-06.png', N'Trà và thảo dược đặc trưng của Đà Nẵng', N'Đặc sản Đà Nẵng'),
(N'Bánh Tráng Túy Loan', 'https.bing.com/th/id/OIP.V4QYszUsBhwYXe_rMTguZAHaFi?cb=iwc2&rs=1&pid=ImgDetMain', N'Bánh tráng Túy Loan nổi tiếng Đà Nẵng', N'Đặc sản Đà Nẵng'),
(N'Rong Biển Mỹ Khê', 'https://th.bing.com/th/id/OIP.l6Jv6erc9o_BjN0Pv0ADYQHaFj?cb=iwc2&rs=1&pid=ImgDetMain', N'Rong biển Mỹ Khê – đặc sản biển Đà Nẵng', N'Đặc sản Đà Nẵng'),
(N'Đá Mỹ Nghệ Non Nước', 'https://th.bing.com/th/id/OIP.xSas4r2jxrvHplcukqZ9MwHaFh?cb=iwc2&rs=1&pid=ImgDetMain', N'Đá mỹ nghệ Non Nước – sản phẩm thủ công mỹ nghệ', N'Đặc sản Đà Nẵng'),
(N'Đồ Lưu Niệm Đà Nẵng', 'https://danangaz.com/wp-content/uploads/2018/10/52-min.jpg', N'Đồ lưu niệm đặc trưng cho du lịch Đà Nẵng', N'Đặc sản Đà Nẵng'),
(N'Tinh Dầu Thảo Mộc Đà Nẵng', 'https://th.bing.com/th/id/OIP.FJinsfgjNS-JuX66dBVeMgHaF7?cb=iwc2&rs=1&pid=ImgDetMain', N'Tinh dầu thảo mộc Đà Nẵng, sản phẩm chăm sóc sức khỏe', N'Đặc sản Đà Nẵng'),
(N'Rượu Truyền Thống Đà Nẵng', 'https://toplist.vn/images/800px/ruou-sam-dinh-lang-da-nang-1238580.jpg', N'Rượu truyền thống đặc sản Đà Nẵng', N'Đặc sản Đà Nẵng');


INSERT INTO DanhMuc (tenDanhMuc, hinhAnh, moTa, tenDacSan) VALUES
(N'Đặc Sản Ẩm Thực Huế', 'https://statics.vinwonders.com/dac-san-hue-06_1650031359.jpg', N'Đặc Sản Ẩm Thực Huế', N'Đặc sản Huế'),
(N'Trà và Thảo Dược Huế', 'https://statics.vinwonders.com/tra-cung-dinh-hue-13_1631763887.jpg', N'Trà và Thảo Dược Huế', N'Đặc sản Huế'),
(N'Dầu Tràm và Tinh Dầu Huế', 'https://th.bing.com/th/id/OIP.xtmTDlcpcC3RhJ094re9uwHaHH?cb=iwc2&rs=1&pid=ImgDetMain', N'Dầu Tràm và Tinh Dầu Huế', N'Đặc sản Huế'),
(N'Hương Trầm Huế', 'https://bizweb.dktcdn.net/100/448/296/files/huong-tram-xu-hue-3.jpg?v=1647677679787', N'Hương Trầm Huế', N'Đặc sản Huế'),
(N'Hải Sản Khô Huế', 'https://th.bing.com/th/id/OIP.Pz9q8WmvqMl4kmvo5VhO4QHaFj?cb=iwc2&rs=1&pid=ImgDetMain', N'Hải Sản Khô Huế', N'Đặc sản Huế'),
(N'Nón Lá Huế', 'https://th.bing.com/th/id/R.8d895ebb086458cd5bd1dab3da08fbbe?rik=m3SKft3CXtIxdA&pid=ImgRaw&r=0', N'Nón Lá Huế', N'Đặc sản Huế'),
(N'Áo Dài Huế', 'https://ims.baoyenbai.com.vn/NewsImg/8_2021/216211_23-8-hue.jpg', N'Áo Dài Huế', N'Đặc sản Huế'),
(N'Tranh Thêu Tay Huế', 'https://th.bing.com/th/id/OIP.RR1wUc50XqG358vaM38zQgHaFY?cb=iwc2&rs=1&pid=ImgDetMain', N'Tranh Thêu Tay Huế', N'Đặc sản Huế'),
(N'Đồ Gốm Huế', 'https://th.bing.com/th/id/OIP.tJuLgrhfbs-oZaVj5wMcyAHaEK?cb=iwc2&rs=1&pid=ImgDetMain', N'Đồ Gốm Huế', N'Đặc sản Huế'),
(N'Đồ Lưu Niệm Huế', 'https://th.bing.com/th/id/OIP.VpW0bfMk2awnlUv0gRKg_gAAAA?cb=iwc2&rs=1&pid=ImgDetMain', N'Đồ Lưu Niệm Huế', N'Đặc sản Huế'),
(N'Rượu Huế', 'https://toplist.vn/images/800px/royal-wine-ham-ruou-vang-hue-1213528.jpg', N'Rượu Huế', N'Đặc sản Huế');


INSERT INTO DanhMuc (tenDanhMuc, hinhAnh, moTa, tenDacSan) VALUES
(N'Đặc Sản Ẩm Thực Quảng Nam', 'https://ik.imagekit.io/tvlk/blog/2022/05/dac-san-quang-nam-1-1024x684.jpeg?tr=dpr-2,w-675', N'Đặc Sản Ẩm Thực Quảng Nam', N'Đặc sản Quảng Nam'),
(N'Nước Mắm Cửa Khe', 'https://down-vn.img.susercontent.com/file/4b424dc1e1d5c0603bb6429cac4d8154', N'Nước Mắm Cửa Khe', N'Đặc sản Quảng Nam'),
(N'Bánh Tổ Quảng Nam', 'https://th.bing.com/th/id/OIP.dVjUa_1BRo0AIlR4MTPfrAHaFB?cb=iwc2&rs=1&pid=ImgDetMain', N'Bánh Tổ Quảng Nam', N'Đặc sản Quảng Nam'),
(N'Trà Xanh Quảng Nam', 'https://th.bing.com/th/id/OIP.NLQi-eOeC1QwVSe5dnIWIAHaE8?cb=iwc2&rs=1&pid=ImgDetMain', N'Trà Xanh Quảng Nam', N'Đặc sản Quảng Nam'),
(N'Tương Ớt Hội An', 'https://quangnamfood.com/wp-content/uploads/2020/12/ot-xao-hoi-an-e1666853112370.jpg', N'Tương Ớt Hội An', N'Đặc sản Quảng Nam'),
(N'Đồ Gốm Thanh Hà', 'https://gomsumoc.com/wp-content/uploads/2023/03/59-1368x800.jpg', N'Đồ Gốm Thanh Hà', N'Đặc sản Quảng Nam'),
(N'Lồng Đèn Hội An', 'https://th.bing.com/th/id/OIP.0FN4sQ60YnIHvZH1-xyq2AHaE4?cb=iwc2&rs=1&pid=ImgDetMain', N'Lồng Đèn Hội An', N'Đặc sản Quảng Nam'),
(N'Đồ Lưu Niệm Quảng Nam', 'https://th.bing.com/th/id/OIP.Z5YW_JV0U5cu-H5RlAqHUAHaE8?cb=iwc2&rs=1&pid=ImgDetMain', N'Đồ Lưu Niệm Quảng Nam', N'Đặc sản Quảng Nam'),
(N'Hương Nhang Quế Quảng Nam', 'https://nhangquequangngai.com/wp-content/uploads/2023/06/Nu-que-1.jpg', N'Hương Nhang Quế Quảng Nam', N'Đặc sản Quảng Nam'),
(N'Thủ Công Mây Tre', 'https://gomphuctaman.com/wp-content/uploads/2022/07/san-pham-thu-cong-my-nghe-tu-tre.jpg', N'Thủ Công Mây Tre', N'Đặc sản Quảng Nam');


INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
-- Đà Nẵng
('SP001', N'Ram cuốn cải', 1, 60000.00, 90, 
N'Giới thiệu chung: Ram cuốn cải Đà Nẵng là món cuốn độc đáo với ram (chả giò) chiên giòn được cuốn cùng bún, rau sống tươi mát trong lá cải xanh. Món ăn có sự hòa quyện giữa vị giòn của ram, vị tươi của rau và vị cay nhẹ của cải.
Thành phần: Bánh tráng cuốn ram, thịt heo xay, miến, mộc nhĩ, trứng, lá cải xanh, bún, rau sống, nước chấm.
Công dụng: Món khai vị hoặc món chính, thanh mát và lạ miệng.
Phù hợp với: Người thích các món cuốn, muốn thử hương vị đặc trưng của Đà Nẵng.
Đặc điểm văn hóa: Món ăn thể hiện sự sáng tạo trong ẩm thực Đà thành, kết hợp hài hòa các nguyên liệu địa phương.', 
N'Phần', N'Đà Nẵng'),

('SP002', N'Bún chả cá', 1, 50000.00, 100, 
N'Giới thiệu chung: Bún chả cá Đà Nẵng nổi tiếng với nước dùng thanh ngọt được ninh từ xương cá và các loại rau củ, cùng với chả cá thu tươi ngon, dai. Chả cá có thể được chiên hoặc hấp.
Thành phần: Bún, chả cá thu, cà chua, bí đỏ, măng tươi, thơm (dứa), rau sống, mắm ruốc.
Công dụng: Món ăn sáng hoặc trưa phổ biến, cung cấp dinh dưỡng.
Phù hợp với: Mọi lứa tuổi, người yêu thích hương vị biển và các món bún nước.
Đặc điểm văn hóa: Món ăn đặc trưng của vùng biển Đà Nẵng, phản ánh sự tươi ngon của hải sản địa phương.', 
N'Tô', N'Đà Nẵng'),

('SP003', N'Bánh tráng cuốn thịt heo', 1, 75000.00, 70, 
N'Giới thiệu chung: Bánh tráng cuốn thịt heo Đà Nẵng là món ăn dân dã nhưng hấp dẫn. Thịt heo được luộc hoặc hấp giữ độ ngọt, cuốn cùng bánh tráng Đại Lộc, rau sống đa dạng và chấm mắm nêm đậm đà.
Thành phần: Thịt heo (ba chỉ hoặc hai đầu da), bánh tráng, rau sống (xà lách, tía tô, diếp cá, húng quế, giá đỗ, dưa chuột, chuối chát...), mắm nêm.
Công dụng: Món chính, thích hợp cho các buổi tụ họp bạn bè, gia đình.
Phù hợp với: Những người thích món cuốn, hương vị mắm nêm đặc trưng.
Đặc điểm văn hóa: Món ăn thể hiện sự hòa quyện của nhiều loại rau và hương vị, là niềm tự hào của ẩm thực Đà Nẵng.', 
N'Phần', N'Đà Nẵng'),

('SP004', N'Nước mắm Nam Ô', 2, 120000.00, 100, 
N'Giới thiệu chung: Nước mắm Nam Ô là thương hiệu nước mắm truyền thống nổi tiếng của Đà Nẵng, được làm từ cá cơm than tươi ngon và muối hột tinh khiết, ủ chượp theo phương pháp cổ truyền. Nước mắm có màu cánh gián, vị đậm đà, hương thơm đặc trưng.
Thành phần: Cá cơm than, muối biển.
Khối lượng: 1 lít.
Công dụng: Dùng làm nước chấm hoặc gia vị nêm nếm món ăn.
Phù hợp với: Mọi gia đình, nhà hàng, người sành ăn.
Đặc điểm văn hóa: Di sản văn hóa phi vật thể quốc gia, niềm tự hào của làng nghề nước mắm Nam Ô hơn 400 năm tuổi.', 
N'Chai', N'Đà Nẵng'),

('SP005', N'Mực khô', 3, 650000.00, 40, 
N'Giới thiệu chung: Mực khô Đà Nẵng nổi tiếng với chất lượng cao, được làm từ mực ống tươi ngon, phơi khô tự nhiên dưới nắng biển. Mực dày mình, thịt ngọt và thơm.
Thành phần: 100% mực ống tươi.
Khối lượng: 1 kg.
Công dụng: Nướng, chiên, xào, làm gỏi. Là món nhắm phổ biến.
Phù hợp với: Các buổi tiệc, làm quà biếu đặc sản biển.
Đặc điểm văn hóa: Sản vật quý của vùng biển Đà Nẵng, thể hiện sự phong phú của hải sản địa phương.', 
N'Gói', N'Đà Nẵng'),

('SP006', N'Cá bò khô', 3, 320000.00, 50, 
N'Giới thiệu chung: Cá bò khô Đà Nẵng thường được tẩm gia vị vừa ăn (cay, mặn, ngọt) rồi phơi khô hoặc sấy. Thịt cá dai, ngọt, thơm mùi gia vị.
Thành phần: Cá bò tươi, gia vị (đường, muối, ớt, tỏi...).
Khối lượng: 1 kg.
Công dụng: Ăn liền, nướng hoặc chiên sơ. Món ăn vặt, mồi nhậu hấp dẫn.
Phù hợp với: Giới trẻ, dân văn phòng, người thích ăn vặt.
Đặc điểm văn hóa: Đặc sản tiện lợi của Đà Nẵng, dễ dàng mang theo và thưởng thức.', 
N'Gói', N'Đà Nẵng'),

('SP007', N'Trà sâm dứa', 4, 80000.00, 100, 
N'Giới thiệu chung: Trà sâm dứa Đà Nẵng là loại trà phổ biến, kết hợp hương vị của trà xanh, lá dứa và đôi khi có thêm chút hương liệu sâm để tạo mùi thơm đặc trưng. Trà có màu xanh vàng, vị chát nhẹ, hương thơm thoang thoảng.
Thành phần: Trà xanh, lá dứa, hương sâm tự nhiên hoặc tổng hợp.
Khối lượng: 250g.
Công dụng: Giải khát, giúp tỉnh táo, thư giãn.
Phù hợp với: Mọi người, đặc biệt những ai thích hương vị trà nhẹ nhàng, thơm mát.
Đặc điểm văn hóa: Thức uống quen thuộc trong đời sống hàng ngày của người dân Đà Nẵng và miền Trung.', 
N'Gói', N'Đà Nẵng'),

('SP008', N'Trà hoa lài', 4, 95000.00, 90, 
N'Giới thiệu chung: Trà hoa lài (hoa nhài) Đà Nẵng được ướp hương từ hoa lài tươi tự nhiên vào trà xanh chất lượng. Trà có hương thơm thanh khiết, quyến rũ của hoa lài, vị trà đậm đà.
Thành phần: Trà xanh, hoa lài tươi.
Khối lượng: 200g.
Công dụng: Giúp thư giãn tinh thần, giảm stress, tốt cho tiêu hóa, làm đẹp da.
Phù hợp với: Người yêu thích hương thơm tự nhiên, phụ nữ.
Đặc điểm văn hóa: Việc ướp trà hoa lài là một nghệ thuật truyền thống, mang lại thức uống tinh tế.', 
N'Gói', N'Đà Nẵng'),

('SP009', N'Bánh tráng Túy Loan', 5, 100000.00, 100, 
N'Giới thiệu chung: Bánh tráng Túy Loan là đặc sản nổi tiếng của vùng đất Túy Loan, Đà Nẵng. Được làm thủ công từ gạo ngon, bánh có độ dẻo vừa phải, vị thơm đặc trưng và dễ ăn.
Thành phần: Gạo tẻ, mè, muối, nước sạch.
Khối lượng: 500g.
Công dụng: Dùng để cuốn thịt, rau sống, chấm mắm nêm hoặc nước tương; là món ăn dân dã và tiện lợi trong bữa ăn gia đình.
Phù hợp với: Người yêu thích món ăn truyền thống, thích ăn kèm bánh tráng cuốn.
Đặc điểm văn hóa: Bánh tráng Túy Loan gắn liền với làng nghề truyền thống lâu đời, là niềm tự hào văn hóa ẩm thực của người dân địa phương.',
N'Bịch', N'Đà Nẵng'),

('SP010', N'Rong biển Mỹ Khê', 6, 70000.00, 170, 
N'Giới thiệu chung: Rong biển Mỹ Khê là đặc sản nổi tiếng tại vùng biển Mỹ Khê, Đà Nẵng. Được khai thác tự nhiên và chế biến theo phương pháp truyền thống, rong biển giữ được hương vị thanh mát và giá trị dinh dưỡng cao.  
Thành phần: Rong biển tươi 100%.  
Khối lượng: 200g.  
Công dụng: Dùng để chế biến các món ăn như canh rong biển, salad, hoặc ăn trực tiếp sau khi rang giòn; tốt cho sức khỏe và hỗ trợ tiêu hóa.  
Phù hợp với: Người ăn chay, người quan tâm đến sức khỏe và dinh dưỡng tự nhiên.  
Đặc điểm văn hóa: Rong biển Mỹ Khê phản ánh nét đặc trưng ẩm thực ven biển miền Trung, là món quà ý nghĩa cho du khách khi ghé thăm Đà Nẵng.', 
N'Bịch', N'Đà Nẵng'),

('SP011', N'Tượng cá chép Non Nước', 7, 500000.00, 40, 
N'Giới thiệu chung: Tượng cá chép được chế tác từ đá cẩm thạch Non Nước (Ngũ Hành Sơn, Đà Nẵng) bởi các nghệ nhân làng đá mỹ nghệ Non Nước. Cá chép hóa rồng là biểu tượng của sự may mắn, kiên trì và thành công.
Thành phần: Đá cẩm thạch tự nhiên.
Chất liệu: Đá.
Kích thước: Vừa phải.
Công dụng: Trang trí, vật phẩm phong thủy mang lại may mắn, tài lộc.
Phù hợp với: Doanh nhân, người muốn cầu may mắn, trang trí nhà cửa, văn phòng.
Đặc điểm văn hóa: Làng đá Non Nước có lịch sử hơn 400 năm, sản phẩm đá mỹ nghệ là niềm tự hào của Đà Nẵng. Tượng cá chép mang ý nghĩa văn hóa sâu sắc.', 
N'Tượng/Cái', N'Đà Nẵng'),

('SP012', N'Tượng Đức Mẹ Non Nước', 7, 1500000.00, 40, 
N'Giới thiệu chung: Tượng Đức Mẹ Non Nước được chế tác công phu từ đá cẩm thạch tự nhiên tại làng đá mỹ nghệ Non Nước, Đà Nẵng. Tượng thể hiện hình ảnh Đức Mẹ hiền từ, mang đến cảm giác an lành và thiêng liêng cho không gian trưng bày.
Thành phần: Đá cẩm thạch tự nhiên, chất lượng cao.
Chất liệu: Đá nguyên khối.
Kích thước: Lớn.
Công dụng: Là vật phẩm trang trí thiêng liêng, thường đặt tại phòng thờ, nhà thờ, tu viện, hoặc các không gian tâm linh để cầu nguyện, tĩnh tâm.
Phù hợp với: Người theo đạo Công giáo, các gia đình muốn bài trí không gian thờ phượng trang nghiêm.
Đặc điểm văn hóa: Là sản phẩm điêu khắc đặc trưng của làng nghề Non Nước – nơi lưu giữ và phát triển nghệ thuật chạm khắc đá hơn 400 năm, gắn liền với đời sống tâm linh và tín ngưỡng người Việt.',
N'Tượng/Cái', N'Đà Nẵng'),

('SP013', N'Móc khóa cầu Rồng', 8, 35000.00, 180, 
N'Giới thiệu chung: Móc khóa có hình ảnh hoặc mô hình thu nhỏ của Cầu Rồng, một biểu tượng kiến trúc hiện đại và độc đáo của Đà Nẵng.
Thành phần: Kim loại, nhựa, mica.
Chất liệu: Thay đổi theo sản phẩm.
Kích thước: Nhỏ gọn.
Công dụng: Gắn chìa khóa, quà lưu niệm.
Phù hợp với: Du khách, người dân Đà Nẵng.
Đặc điểm văn hóa: Ghi dấu ấn về một công trình biểu tượng của thành phố Đà Nẵng năng động và phát triển.', 
N'Cái', N'Đà Nẵng'),

('SP014', N'Túi vải hình cầu Vàng', 8, 95000.00, 100, 
N'Giới thiệu chung: Túi vải canvas hoặc tote in hình Cầu Vàng (Bà Nà Hills), một điểm du lịch nổi tiếng thế giới của Đà Nẵng.
Thành phần: Vải canvas, vải bố.
Chất liệu: Vải.
Công dụng: Đựng đồ, phụ kiện thời trang, quà lưu niệm.
Phù hợp với: Du khách, người yêu thích thời trang tiện dụng.
Đặc điểm văn hóa: Cầu Vàng là một kỳ quan kiến trúc, túi vải là món quà lưu niệm thời trang và thực tế.', 
N'Cái', N'Đà Nẵng'),

('SP015', N'Tinh dầu sả chanh', 9, 150000.00, 70, 
N'Giới thiệu chung: Tinh dầu sả chanh Đà Nẵng (thường gọi là sả hương) có mùi thơm nồng ấm, tươi mát đặc trưng của sả và chanh. Được sử dụng rộng rãi để xông hương, khử mùi và đuổi côn trùng.
Thành phần: 100% tinh dầu sả chanh nguyên chất.
Chất liệu: Lỏng, đựng trong chai thủy tinh.
Khối lượng: 100ml.
Công dụng: Khử mùi hôi, xua đuổi muỗi và côn trùng, làm sạch không khí, giảm stress, sát khuẩn.
Phù hợp với: Các gia đình, văn phòng, spa, nhà hàng.
Đặc điểm văn hóa: Sả là cây gia vị quen thuộc, tinh dầu sả chanh là ứng dụng hiện đại mang lại nhiều lợi ích.', 
N'Chai', N'Đà Nẵng'),

('SP016', N'Tinh dầu bạc hà', 9, 130000.00, 75, 
N'Giới thiệu chung: Tinh dầu bạc hà Đà Nẵng được chiết xuất từ lá bạc hà tươi, có hương thơm a cay the mát, sảng khoái.
Thành phần: 100% tinh dầu bạc hà nguyên chất.
Chất liệu: Lỏng, đựng trong chai thủy tinh.
Khối lượng: 100ml.
Công dụng: Giúp tỉnh táo, tập trung, giảm buồn nôn, say tàu xe, thông mũi, giảm ngứa do côn trùng cắn, xua đuổi chuột.
Phù hợp với: Người cần sự tỉnh táo, người hay bị say xe, gia đình muốn không gian thơm mát.
Đặc điểm văn hóa: Bạc hà là cây thảo dược phổ biến, tinh dầu bạc hà mang lại cảm giác tươi mới, năng động của thành phố biển.', 
N'Chai', N'Đà Nẵng'),

('SP017', N'Rượu gạo', 10, 85000.00, 60, 
N'Giới thiệu chung: Rượu gạo Đà Nẵng cũng được sản xuất theo phương pháp truyền thống, sử dụng nguồn nước và gạo địa phương, mang hương vị đặc trưng của vùng.
Thành phần: Gạo, men rượu.
Chất liệu: Rượu đựng trong chai.
Khối lượng: 1 lít.
Công dụng: Dùng trong ẩm thực, giao tiếp.
Phù hợp với: Người trưởng thành, sử dụng có trách nhiệm.
Đặc điểm văn hóa: Rượu gạo là một phần của văn hóa ẩm thực địa phương.', 
N'Chai', N'Đà Nẵng'),

-- Huế
('SP018', N'Bánh bèo', 11, 35000.00, 100, 
N'Giới thiệu chung: Bánh bèo Huế là món ăn thanh đạm, tinh tế, đặc trưng của ẩm thực Cố đô. Bánh được làm từ bột gạo xay mịn, hấp trong những chén nhỏ, mặt bánh lõm xuống chứa nhân tôm cháy vàng rộm, thêm chút da heo chiên giòn và mỡ hành.
Thành phần: Bột gạo, tôm tươi, da heo, hành lá, gia vị truyền thống.
Khối lượng: Thường phục vụ theo khay.
Công dụng: Món ăn vặt, món khai vị nhẹ nhàng, thưởng thức hương vị đặc trưng của Huế.
Phù hợp với: Mọi lứa tuổi, người yêu thích ẩm thực truyền thống, du khách muốn khám phá văn hóa Huế.
Đặc điểm văn hóa: Bánh bèo thể hiện sự khéo léo, tỉ mỉ của người phụ nữ Huế, là một phần không thể thiếu trong các bữa ăn gia đình và lễ hội.', 
N'Phần', N'Huế'),

('SP019', N'Bánh bột lọc', 11, 45000.00, 100, 
N'Giới thiệu chung: Bánh bột lọc Huế có hai loại chính là bánh bột lọc gói lá chuối và bánh bột lọc trần. Vỏ bánh trong veo, dai mềm làm từ bột năng, nhân tôm thịt đậm đà, thường kèm theo nước chấm chua ngọt đặc trưng.
Thành phần: Bột năng, tôm, thịt ba chỉ, mộc nhĩ, gia vị, lá chuối (đối với loại gói).
Công dụng: Món ăn vặt, món chính, dễ ăn và được nhiều người yêu thích.
Phù hợp với: Mọi lứa tuổi, đặc biệt là những người thích món ăn có độ dai và hương vị đậm đà.
Đặc điểm văn hóa: Là món ăn bình dị nhưng chứa đựng nét tinh túy của ẩm thực Huế, thường xuất hiện trong các gánh hàng rong và nhà hàng đặc sản.', 
N'Đĩa', N'Huế'),
 
('SP020', N'Bún bò', 11, 55000.00, 80, 
N'Giới thiệu chung: Bún bò Huế là một trong những món ăn nổi tiếng nhất của Việt Nam, mang hương vị đặc trưng cay nồng, đậm đà. Nước dùng được ninh từ xương bò, thêm mắm ruốc, sả và ớt. Sợi bún to, ăn kèm thịt bò, chả cua, tiết heo.
Thành phần: Bún, thịt bò (bắp, nạm, gân), chả cua, tiết heo, mắm ruốc, sả, ớt, rau sống ăn kèm.
Công dụng: Món ăn chính cung cấp nhiều năng lượng, làm ấm cơ thể.
Phù hợp với: Người thích hương vị đậm đà, cay nồng, du khách muốn trải nghiệm ẩm thực Huế đích thực.
Đặc điểm văn hóa: Món ăn biểu tượng của Huế, phản ánh sự phong phú và cầu kỳ trong ẩm thực cung đình xưa và dân gian.', 
N'Tô', N'Huế'),

('SP021', N'Trà Cung đình', 12, 150000.00, 80, 
N'Giới thiệu chung: Trà Cung đình Huế là loại trà thảo dược quý, được bào chế từ nhiều loại thảo mộc thiên nhiên theo công thức của các ngự y xưa trong cung đình Huế. Trà có hương thơm dịu, vị ngọt thanh, tốt cho sức khỏe.
Thành phần: Atiso, cúc hoa, hoài sơn, đẳng sâm, đại táo, hồng táo, cam thảo bắc, hoa hòe, thảo quyết minh, khổ qua, kỷ tử, vối nụ, tim sen và các thảo dược khác.
Khối lượng: 500g.
Công dụng: Thanh nhiệt, giải độc, an thần, giúp ngủ ngon, tốt cho tiêu hóa và tim mạch.
Phù hợp với: Mọi lứa tuổi, đặc biệt người lớn tuổi, người quan tâm đến sức khỏe.
Đặc điểm văn hóa: Sản phẩm kế thừa tinh hoa y học cổ truyền của Cung đình Huế, là thức uống tao nhã và bổ dưỡng.', 
N'Gói', N'Huế'),

('SP022', N'Trà hoa atiso', 12, 120000.00, 70, 
N'Giới thiệu chung: Trà hoa atiso Huế được làm từ hoa atiso tươi sấy khô, giữ nguyên được dưỡng chất. Trà có vị ngọt nhẹ tự nhiên, hương thơm dễ chịu.
Thành phần: 100% hoa atiso.
Khối lượng: 200g
Công dụng: Mát gan, giải độc, lợi tiểu, tốt cho hệ tiêu hóa, giảm cholesterol.
Phù hợp với: Người có vấn đề về gan, nóng trong người, người muốn thanh lọc cơ thể.
Đặc điểm văn hóa: Huế là một trong những vùng trồng atiso, sản phẩm trà hoa atiso thể hiện sự ưu đãi của thiên nhiên và kỹ thuật chế biến của người dân địa phương.', 
N'Gói', N'Huế'),

('SP023', N'Tinh dầu tràm', 13, 180000.00, 60, 
N'Giới thiệu chung: Tinh dầu tràm Huế (đặc biệt là tràm gió) nổi tiếng với độ tinh khiết cao, được chiết xuất từ lá cây tràm tự nhiên. Có mùi thơm đặc trưng, tính ấm, nhiều công dụng cho sức khỏe.
Thành phần: 100% tinh dầu tràm nguyên chất.
Chất liệu: Lỏng, đựng trong chai thủy tinh tối màu.
Khối lượng: 100ml.
Công dụng: Giữ ấm cơ thể, phòng và trị cảm cúm, ho, sổ mũi (đặc biệt cho trẻ em và phụ nữ mang thai), xua đuổi côn trùng, giảm đau nhức cơ khớp, làm sạch không khí.
Phù hợp với: Mọi gia đình, đặc biệt gia đình có trẻ nhỏ, người già.
Đặc điểm văn hóa: Sản phẩm truyền thống lâu đời của vùng đất Huế, gắn liền với việc chăm sóc sức khỏe cộng đồng.', 
N'Chai', N'Huế'),

('SP024', N'Tinh dầu hoa sen', 13, 350000.00, 40, 
N'Giới thiệu chung: Tinh dầu hoa sen Huế được chiết xuất từ hoa sen trắng tại các hồ quanh Kinh thành Huế. Mang hương thơm thanh khiết, quý phái, có tác dụng thư giãn, làm đẹp.
Thành phần: 100% tinh dầu hoa sen nguyên chất.
Chất liệu: Lỏng, đựng trong chai thủy tinh.
Khối lượng: 100ml.
Công dụng: Giúp thư giãn, giảm căng thẳng, dưỡng da, tạo hương thơm cho cơ thể và không gian.
Phù hợp với: Người yêu thích hương thơm tự nhiên, người làm trong lĩnh vực spa, trị liệu.
Đặc điểm văn hóa: Hoa sen là biểu tượng của Huế, tinh dầu hoa sen là sản phẩm cao cấp, thể hiện sự tinh túy của loài hoa này.', 
N'Chai', N'Huế'),

('SP025', N'Hương trầm', 14, 100000.00, 100, 
N'Giới thiệu chung: Hương trầm Huế được làm từ bột gỗ trầm hương tự nhiên hoặc bột cây dó bầu có trầm, kết hợp với các loại thảo mộc khác theo công thức truyền thống. Hương có mùi thơm dịu nhẹ, thanh khiết, lưu hương lâu.
Thành phần: Bột trầm hương, bột cây bài, keo bời lời.
Chất liệu: Que hương.
Số lượng: 100 cây.
Công dụng: Dùng trong thờ cúng, thiền định, tạo không gian tâm linh thanh tịnh, giúp thư giãn.
Phù hợp với: Các gia đình, đền chùa, người thực hành tâm linh.
Đặc điểm văn hóa: Nghề làm hương ở Huế có lịch sử lâu đời, hương trầm là một phần không thể thiếu trong đời sống tâm linh của người Huế, đặc biệt là làng hương Thủy Xuân.', 
N'Bó/Hộp', N'Huế'),

('SP026', N'Hương quế', 14, 70000.00, 120, 
N'Giới thiệu chung: Hương quế Huế được làm từ bột vỏ quế tự nhiên, mang mùi thơm nồng ấm đặc trưng của quế.
Thành phần: Bột vỏ quế, keo bời lời.
Chất liệu: Que hương.
Số lượng: 100 cây.
Công dụng: Dùng trong thờ cúng, giúp khử mùi, làm ấm không gian, xua đuổi côn trùng.
Phù hợp với: Các gia đình, đặc biệt trong mùa lạnh hoặc nơi ẩm thấp.
Đặc điểm văn hóa: Tận dụng nguồn nguyên liệu quế sẵn có, hương quế mang đến sự ấm áp cho không gian thờ tự.', 
N'Bó', N'Huế'),

('SP027', N'Tôm khô', 15, 250000.00, 50, 
N'Giới thiệu chung: Tôm khô Huế được làm từ tôm tươi đánh bắt tự nhiên, qua quá trình phơi sấy thủ công giữ được vị ngọt tự nhiên và màu đỏ hồng đẹp mắt.
Thành phần: 100% tôm đất tự nhiên.
Khối lượng: 1 kg.
Công dụng: Dùng để nấu canh, làm gỏi, rim hoặc ăn liền. Cung cấp nhiều đạm và canxi.
Phù hợp với: Các bà nội trợ, người thích chế biến món ăn ngon, làm quà biếu.
Đặc điểm văn hóa: Sản phẩm truyền thống của vùng đầm phá Tam Giang - Cầu Hai, thể hiện sự trù phú của thiên nhiên Huế.', 
N'Gói', N'Huế'),

('SP028', N'Cá cơm khô', 15, 180000.00, 60, 
N'Giới thiệu chung: Cá cơm khô Huế, đặc biệt là cá cơm sông Hương, có vị ngọt bùi, được phơi khô tự nhiên, giữ nguyên hương vị. Có nhiều loại như cá cơm mồm, cá cơm sọc.
Thành phần: 100% cá cơm tươi.
Khối lượng: 1 kg.
Công dụng: Dùng để kho tiêu, chiên giòn, nấu canh chua, làm gỏi hoặc ăn vặt.
Phù hợp với: Các gia đình, người thích món ăn dân dã, đậm đà hương vị.
Đặc điểm văn hóa: Đặc sản của vùng sông nước Huế, gắn liền với bữa cơm gia đình truyền thống.', 
N'Gói', N'Huế'),

('SP029', N'Nón lá bài thơ Huế', 16, 80000.00, 100, 
N'Giới thiệu chung: Nón lá Huế, đặc biệt là nón bài thơ, là biểu tượng của sự duyên dáng, dịu dàng của người phụ nữ Huế. Nón được làm thủ công từ lá nón (lá cọ), vành tre, có độ mỏng, nhẹ và thanh thoát. Nón bài thơ có hình ảnh hoặc những câu thơ lãng mạn được ép giữa hai lớp lá.
Thành phần: Lá nón, tre, chỉ cước.
Chất liệu: Lá tự nhiên, tre.
Kích thước: Đường kính khoảng 40 cm.
Công dụng: Che nắng, che mưa, phụ kiện thời trang, quà lưu niệm.
Phù hợp với: Phụ nữ mọi lứa tuổi, du khách.
Đặc điểm văn hóa: Nón lá là một phần của trang phục truyền thống Việt Nam, nón lá Huế mang nét đặc trưng riêng, thể hiện sự tài hoa, khéo léo của các nghệ nhân làng nón như Tây Hồ, Dạ Lê.', 
N'Cái', N'Huế'),

('SP030', N'Nón lá sen Huế', 16, 80000.00, 100, 
N'Giới thiệu chung: Nón lá sen Huế là biến tấu độc đáo của nón lá truyền thống, được trang trí với hình ảnh hoa sen – biểu tượng của sự thanh cao, tinh khiết trong văn hóa Việt. Mỗi chiếc nón được làm thủ công tỉ mỉ, mang đậm hơi thở nghệ thuật và nét duyên dáng của người phụ nữ Huế.
Thành phần: Lá nón, tre, chỉ cước, giấy nghệ thuật (in hình sen).
Chất liệu: Lá tự nhiên, tre, trang trí họa tiết sen.
Kích thước: Đường kính khoảng 40 cm.
Công dụng: Che nắng, che mưa, phụ kiện thời trang, quà tặng nghệ thuật mang tính biểu tượng.
Phù hợp với: Du khách, người yêu thích sản phẩm thủ công truyền thống có tính thẩm mỹ cao.
Đặc điểm văn hóa: Hoa sen gắn liền với văn hóa Huế – cố đô của Việt Nam. Nón lá sen không chỉ là sản phẩm thủ công mà còn là biểu tượng văn hóa, phản ánh vẻ đẹp mộc mạc mà thanh cao của vùng đất kinh kỳ.', 
N'Cái', N'Huế'),

('SP031', N'Áo cổ phục Huế', 17, 500000.00, 20, 
N'Giới thiệu chung: Áo cổ phục Huế (áo dài ngũ thân, áo tấc, áo mệnh phụ...) là trang phục truyền thống mang đậm dấu ấn lịch sử và văn hóa của Cố đô Huế. Được may từ các chất liệu như gấm, lụa với kiểu dáng trang trọng, màu sắc và hoa văn tinh tế.
Thành phần: Vải gấm, lụa, tơ tằm.
Chất liệu: Vải.
Kích thước: May theo size hoặc may đo.
Công dụng: Mặc trong các dịp lễ hội, sự kiện văn hóa, chụp ảnh, biểu diễn nghệ thuật, thể hiện sự trân trọng văn hóa truyền thống.
Phù hợp với: Người yêu văn hóa Huế, người tham gia các hoạt động văn hóa, nghệ sĩ.
Đặc điểm văn hóa: Là di sản trang phục cung đình và dân gian Huế, thể hiện sự trang nghiêm, thanh lịch và nét đẹp cổ xưa.', 
N'Bộ/Cái', N'Huế'),

('SP032', N'Áo dài Huế', 17, 200000.00, 20, 
N'Giới thiệu chung: Áo dài Huế là biểu tượng của nét đẹp dịu dàng, thanh thoát và tinh tế của người phụ nữ xứ Huế. Áo có thiết kế ôm dáng với tà dài, thường được may từ vải lụa hoặc voan nhẹ, tạo cảm giác mềm mại và thanh lịch. Áo dài Huế không chỉ là trang phục truyền thống mà còn là hiện thân của bản sắc văn hóa cố đô.
Thành phần: Vải lụa, vải voan, tơ tằm.
Chất liệu: Vải mềm nhẹ, thoáng mát.
Kích thước: May sẵn theo size hoặc đặt may theo số đo.
Công dụng: Mặc trong dịp lễ, Tết, đi học, đi làm, dự tiệc, biểu diễn văn hóa hoặc làm quà tặng lưu niệm.
Phù hợp với: Nữ sinh, giáo viên, nhân viên công sở, người yêu trang phục truyền thống.
Đặc điểm văn hóa: Áo dài Huế mang đậm nét dịu dàng và kín đáo của người con gái cố đô, là biểu tượng thời trang mang tính biểu cảm và đầy tự hào của văn hóa Việt Nam.', 
N'Bộ/Cái', N'Huế'),

('SP033', N'Tranh thêu tay nón lá hoa sen Huế', 18, 2500000.00, 15, 
N'Giới thiệu chung: Tranh thêu tay "Nón lá hoa sen Huế" là sự kết hợp độc đáo giữa hai biểu tượng văn hóa đặc trưng của Cố đô – nón lá và hoa sen. Từng đường kim mũi chỉ được thực hiện thủ công bởi nghệ nhân Huế, tạo nên hình ảnh mềm mại, sống động và đầy ý nghĩa.
Thành phần: Vải lụa cao cấp, chỉ tơ tằm hoặc chỉ DMC nhập khẩu.
Chất liệu: Vải thêu, chỉ màu.
Kích thước: 70 x 30 cm.
Công dụng: Là vật phẩm trang trí nội thất cao cấp, quà tặng nghệ thuật mang đậm bản sắc văn hóa.
Phù hợp với: Người yêu văn hóa Huế, người cần quà tặng sang trọng và ý nghĩa.
Đặc điểm văn hóa: Tranh thể hiện vẻ đẹp thanh tao của người con gái Huế, kết hợp giữa truyền thống nghề thêu và biểu tượng dân tộc – hoa sen và nón lá.', 
N'Bức', N'Huế'),

('SP034', N'Tranh thêu tay chim công Huế', 18, 2500000.00, 15, 
N'Giới thiệu chung: Bức tranh thêu tay "Chim công Huế" là tác phẩm nghệ thuật cao cấp, tượng trưng cho sự quyền quý, phú quý và thanh cao. Hình ảnh chim công với bộ lông rực rỡ được tái hiện sống động qua từng mũi thêu công phu của nghệ nhân Huế.
Thành phần: Vải lụa tự nhiên, chỉ tơ tằm/ DMC có độ bền và bóng cao.
Chất liệu: Vải thêu, chỉ màu nghệ thuật.
Kích thước: 70 x 30 cm.
Công dụng: Treo trang trí, quà tặng đối tác, quà biếu tết, kỷ niệm mang ý nghĩa phong thủy.
Phù hợp với: Người yêu nghệ thuật truyền thống, doanh nhân, gia đình mong cầu thịnh vượng.
Đặc điểm văn hóa: Chim công là hình ảnh quen thuộc trong mỹ thuật cung đình xưa, tượng trưng cho sự cao quý và hòa hợp, được tái hiện tinh tế qua bàn tay thêu tài hoa của nghệ nhân Huế.', 
N'Bức', N'Huế'),

('SP035', N'Ấm trà men lam', 19, 800000.00, 30, 
N'Giới thiệu chung: Ấm trà men lam Huế là sản phẩm gốm sứ đặc trưng, với nước men lam cổ điển, họa tiết vẽ tay tinh tế thường là rồng, phượng, hoa lá cách điệu. Ấm được làm từ đất sét cao cấp, nung ở nhiệt độ cao.
Thành phần: Đất sét, men lam.
Chất liệu: Gốm sứ.
Bao gồm: Bộ ấm trà thường gồm 1 ấm, 6 chén, đĩa lót.
Công dụng: Dùng để pha trà, trang trí, làm quà tặng.
Phù hợp với: Người thích trà đạo, sưu tầm đồ gốm, yêu văn hóa truyền thống.
Đặc điểm văn hóa: Gốm men lam là một dòng gốm sứ nổi tiếng của Huế, phản ánh nét đẹp cổ kính, tao nhã trong văn hóa thưởng trà của người Việt.', 
N'Bộ', N'Huế'),

('SP036', N'Tò he', 20, 25000.00, 200, 
N'Giới thiệu chung: Tò he Huế là đồ chơi dân gian được nặn từ bột gạo nếp pha màu tự nhiên (từ lá cây, củ quả). Các nghệ nhân tạo hình thành các con vật, nhân vật lịch sử, hoa lá ngộ nghĩnh, đầy màu sắc.
Thành phần: Bột gạo nếp, màu thực phẩm tự nhiên.
Chất liệu: Bột nặn.
Kích thước: Nhỏ, cầm tay.
Công dụng: Đồ chơi cho trẻ em, quà lưu niệm dân gian.
Phù hợp với: Trẻ em, du khách muốn tìm hiểu văn hóa truyền thống.
Đặc điểm văn hóa: Tò he là một nét văn hóa dân gian đặc sắc, thể hiện sự khéo léo và sáng tạo của người thợ thủ công Huế, thường xuất hiện trong các dịp lễ hội.', 
N'Con/Cái', N'Huế'),

('SP037', N'Móc khóa Đại Nội Huế', 20, 40000.00, 150, 
N'Giới thiệu chung: Móc khóa in hình hoặc tạo hình các biểu tượng của Đại Nội Huế như Ngọ Môn, điện Thái Hòa, Cửu Đỉnh... Là món quà lưu niệm nhỏ gọn, ý nghĩa.
Thành phần: Kim loại, nhựa, mica, gỗ (tùy loại).
Chất liệu: Thay đổi theo sản phẩm.
Kích thước: Nhỏ gọn.
Công dụng: Gắn chìa khóa, trang trí túi xách, ba lô, làm quà kỷ niệm.
Phù hợp với: Du khách, học sinh, sinh viên.
Đặc điểm văn hóa: Mang hình ảnh của di sản văn hóa thế giới Đại Nội Huế, giúp du khách ghi nhớ chuyến thăm Cố đô.', 
N'Cái', N'Huế'),

('SP038', N'Rượu Minh Mạng', 21, 350000.00, 50, 
N'Giới thiệu chung: Rượu Minh Mạng là loại rượu thuốc nổi tiếng của Huế, được ngâm từ nhiều loại thảo dược quý theo bài thuốc gia truyền của vua Minh Mạng. Rượu có tác dụng bồi bổ sức khỏe, tăng cường sinh lực.
Thành phần: Gạo nếp, men rượu, các loại thảo dược quý (nhân sâm, dâm dương hoắc, ba kích, đỗ trọng, kỷ tử...).
Chất liệu: Rượu ngâm trong bình sành hoặc thủy tinh.
Khối lượng: 750ml.
Công dụng: Bồi bổ sức khỏe, tráng dương bổ thận, mạnh gân cốt. Dùng điều độ.
Phù hợp với: Nam giới tuổi trung niên, người cần bồi bổ sức khỏe (theo chỉ dẫn).
Đặc điểm văn hóa: Gắn liền với câu chuyện lịch sử về vua Minh Mạng, là một trong những "Danh tửu" của đất Cố đô.', 
N'Chai', N'Huế'),

('SP039', N'Rượu gạo Huế', 21, 90000.00, 70, 
N'Giới thiệu chung: Rượu gạo Huế được nấu thủ công từ gạo nếp hoặc gạo tẻ theo phương pháp truyền thống. Rượu có vị êm, hương thơm đặc trưng của gạo.
Thành phần: Gạo, men rượu truyền thống.
Chất liệu: Rượu đựng trong chai.
Khối lượng: 1 lít.
Công dụng: Dùng trong các bữa ăn, lễ tiệc, ngâm các loại thuốc.
Phù hợp với: Người trưởng thành, sử dụng có chừng mực.
Đặc điểm văn hóa: Rượu gạo là thức uống quen thuộc trong đời sống người dân Huế, gắn liền với các sinh hoạt cộng đồng.', 
N'Chai', N'Huế'),

-- Quảng Nam
('SP040', N'Mì Quảng', 22, 45000.00, 120, 
N'Giới thiệu chung: Mì Quảng là món ăn đặc trưng và linh hồn của ẩm thực Quảng Nam. Sợi mì vàng óng từ bột gạo và nghệ, nước dùng (nhân) đậm đà từ thịt gà, tôm, thịt heo, trứng cút, ăn kèm bánh tráng mè nướng giòn và rau sống.
Thành phần: Sợi mì Quảng, thịt gà/heo/tôm, trứng cút, lạc rang, bánh tráng mè, rau sống (búp chuối, cải con, giá...).
Công dụng: Món ăn chính, no lâu, hương vị phong phú.
Phù hợp với: Mọi lứa tuổi, người muốn thưởng thức đặc sản Quảng Nam.
Đặc điểm văn hóa: Mì Quảng không chỉ là món ăn mà còn là nét văn hóa, thể hiện sự hào sảng, mộc mạc của người dân xứ Quảng.', 
N'Tô', N'Quảng Nam'),

('SP041', N'Cao lầu', 22, 50000.00, 90, 
N'Giới thiệu chung: Cao lầu là món mì đặc sản chỉ có ở Hội An, Quảng Nam. Sợi mì vàng, dai được làm từ gạo ngâm nước tro, nước dùng đặc biệt từ giếng Bá Lễ. Ăn kèm thịt xá xíu, da heo chiên giòn, rau sống.
Thành phần: Sợi mì cao lầu, thịt xá xíu, da heo chiên giòn, giá trụng, rau thơm, nước tương đặc biệt.
Công dụng: Món ăn chính, mang hương vị độc đáo không thể nhầm lẫn.
Phù hợp với: Du khách đến Hội An, người muốn khám phá ẩm thực độc đáo.
Đặc điểm văn hóa: Món ăn gắn liền với lịch sử và văn hóa của phố cổ Hội An, là sự giao thoa của nhiều nền văn hóa.', 
N'Tô', N'Quảng Nam'),

('SP042', N'Bánh xèo', 22, 65000.00, 80, 
N'Giới thiệu chung: Bánh xèo Quảng Nam có kích thước vừa phải, vỏ bánh vàng giòn rộm nhờ bột gạo pha với bột nghệ và nước cốt dừa. Nhân bánh gồm tôm, thịt ba chỉ, giá đỗ. Ăn kèm rau sống và nước mắm chua ngọt.
Thành phần: Bột gạo, bột nghệ, nước cốt dừa, tôm, thịt ba chỉ, giá đỗ, hành lá, rau sống, nước mắm.
Công dụng: Món ăn vặt hoặc món chính, hấp dẫn bởi độ giòn và hương vị.
Phù hợp với: Mọi lứa tuổi, đặc biệt trong những ngày se lạnh.
Đặc điểm văn hóa: Món ăn dân dã, quen thuộc trong đời sống người dân Quảng Nam, thường được làm trong các dịp sum họp gia đình.', 
N'Cái/Đĩa', N'Quảng Nam'),

('SP043', N'Nước mắm Cửa Khe', 23, 110000.00, 90, 
N'Giới thiệu chung: Nước mắm Cửa Khe (Thăng Bình, Quảng Nam) cũng là một loại nước mắm truyền thống được làm từ cá cơm tươi, có hương vị thơm ngon, độ đạm cao, màu sắc tự nhiên.
Thành phần: Cá cơm, muối biển.
Khối lượng: 1 lít.
Công dụng: Gia vị không thể thiếu trong bữa ăn, làm tăng hương vị món ăn.
Phù hợp với: Các gia đình, người trân trọng sản phẩm truyền thống.
Đặc điểm văn hóa: Sản phẩm đặc trưng của làng nghề nước mắm Cửa Khe, góp phần làm phong phú ẩm thực Quảng Nam.', 
N'Chai', N'Quảng Nam'),

('SP044', N'Bánh tổ Quảng Nam', 24, 80000.00, 90, 
N'Giới thiệu chung: Bánh tổ là món bánh truyền thống của người Quảng Nam, thường xuất hiện trong dịp Tết Nguyên Đán. Bánh có màu nâu sẫm, vị ngọt dịu, thơm mùi gừng, dẻo dai từ nếp, tượng trưng cho sự sum vầy, gắn kết gia đình.
Thành phần: Gạo nếp, đường mật (hoặc đường nâu), gừng tươi.
Khối lượng: 100g.
Công dụng: Dùng trong mâm cỗ Tết, làm quà biếu, ăn chơi kèm mè rang hoặc chiên lên.
Phù hợp với: Người yêu thích đặc sản truyền thống, gia đình trong dịp lễ Tết.
Đặc điểm văn hóa: Là món bánh cổ truyền gắn với văn hóa Tết xứ Quảng, thể hiện tinh thần gìn giữ nét đẹp ẩm thực dân gian.', 
N'Chiếc', N'Quảng Nam'),

('SP045', N'Trà xanh Quảng Nam', 25, 70000.00, 110, 
N'Giới thiệu chung: Trà xanh Quảng Nam, đặc biệt từ các vùng trung du như Tiên Phước, có chất lượng tốt, lá trà được sao thủ công giữ được hương vị tự nhiên. Nước trà xanh, vị chát dịu, hậu ngọt.
Thành phần: 100% búp trà xanh tự nhiên.
Khối lượng: 200g.
Công dụng: Chống oxy hóa, giúp tỉnh táo, tốt cho tim mạch, hỗ trợ giảm cân.
Phù hợp với: Người thích uống trà mộc, người quan tâm đến sức khỏe.
Đặc điểm văn hóa: Cây chè là một phần của nông nghiệp truyền thống Quảng Nam, uống trà là một nét văn hóa đẹp.', 
N'Gói', N'Quảng Nam'),

('SP046', N'Tương ớt xào DHFood', 26, 45000.00, 150, 
N'Giới thiệu chung: Tương ớt xào DHFood là sản phẩm đậm chất Quảng Nam, mang vị cay đậm, thơm lừng mùi tỏi và vị chua nhẹ từ cà chua. Được chế biến theo phương pháp truyền thống, giữ trọn hương vị nguyên bản.
Thành phần: Ớt tươi, tỏi, cà chua, đường, muối.
Khối lượng: 200g.
Công dụng: Dùng làm nước chấm cho mì Quảng, bánh bèo, cao lầu; có thể pha loãng để ướp hoặc nêm món ăn.
Phù hợp với: Người yêu thích món cay truyền thống, thích gia vị đậm đà.
Đặc điểm văn hóa: Gắn liền với ẩm thực miền Trung, đặc biệt là các món đặc sản xứ Quảng như mì Quảng, cao lầu.', 
N'Hũ', N'Quảng Nam'),

('SP047', N'Tương ớt xào Triệu Phát', 26, 45000.00, 150, 
N'Giới thiệu chung: Tương ớt xào Triệu Phát được làm từ ớt chín đỏ tươi, tỏi ta và cà chua chín mọng, mang đến vị cay dịu và hậu vị ngọt nhẹ. Sản phẩm phù hợp với nhiều khẩu vị, kể cả người ăn cay vừa.
Thành phần: Ớt tươi, tỏi, cà chua, đường, muối.
Khối lượng: 200g.
Công dụng: Chấm với nem nướng, bánh tráng cuốn thịt heo, bún mắm nêm; có thể dùng làm nước sốt trộn.
Phù hợp với: Người ăn cay nhẹ, yêu thích sự hài hòa giữa cay và ngọt.
Đặc điểm văn hóa: Là gia vị biến tấu từ tương ớt Hội An, phù hợp với nhu cầu khẩu vị đa dạng trong ẩm thực hiện đại.', 
N'Hũ', N'Quảng Nam'),

('SP048', N'Bình gốm Thanh Hà', 27, 450000.00, 35, 
N'Giới thiệu chung: Bình gốm Quảng Nam, đặc biệt từ làng gốm Thanh Hà (Hội An) hoặc Điện Bàn, mang nét mộc mạc, dân dã. Gốm được làm thủ công từ đất sét, nung bằng lò củi truyền thống, có màu sắc tự nhiên của đất nung.
Thành phần: Đất sét.
Chất liệu: Gốm.
Kích thước: Vừa phải.
Công dụng: Cắm hoa, trang trí nhà cửa, sưu tầm.
Phù hợp với: Người yêu thích vẻ đẹp mộc mạc, truyền thống, muốn trang trí không gian theo phong cách vintage.
Đặc điểm văn hóa: Làng gốm Thanh Hà có tuổi đời hàng trăm năm, sản phẩm gốm nơi đây phản ánh đời sống và kỹ thuật làm gốm truyền thống của người Quảng.', 
N'Cái/Bình', N'Quảng Nam'),

('SP049', N'Lồng đèn Hội An', 28, 100000.00, 90, 
N'Giới thiệu chung: Lồng đèn Hội An là biểu tượng rực rỡ của phố cổ, được làm từ khung tre và bọc vải lụa nhiều màu sắc, kiểu dáng đa dạng (tròn, tỏi, kim cương...).
Thành phần: Tre, vải lụa hoặc gấm.
Chất liệu: Tre, vải.
Công dụng: Trang trí nhà cửa, quán xá, sự kiện, lễ hội, quà lưu niệm đặc trưng.
Phù hợp với: Mọi người, đặc biệt là những ai muốn mang không khí Hội An về nhà.
Đặc điểm văn hóa: Lồng đèn là một phần không thể thiếu của không gian văn hóa Hội An, đặc biệt vào những đêm rằm. Nghề làm lồng đèn là một nghề thủ công truyền thống nổi tiếng.', 
N'Cái', N'Quảng Nam'),

('SP050', N'Móc khóa phố cổ', 29, 30000.00, 200, 
N'Giới thiệu chung: Móc khóa có hình ảnh các công trình kiến trúc đặc trưng của Phố cổ Hội An như Chùa Cầu, nhà cổ, hoặc các biểu tượng văn hóa Hội An.
Thành phần: Kim loại, gỗ, nhựa.
Chất liệu: Thay đổi theo sản phẩm.
Kích thước: Nhỏ gọn.
Công dụng: Gắn chìa khóa, quà lưu niệm nhỏ xinh.
Phù hợp với: Du khách đến Hội An.
Đặc điểm văn hóa: Lưu giữ hình ảnh của Di sản Văn hóa Thế giới Hội An.', 
N'Cái', N'Quảng Nam'),

('SP051', N'Quạt tay', 29, 60000.00, 130, 
N'Giới thiệu chung: Quạt tay làm từ giấy hoặc lụa, có nan tre, vẽ các họa tiết phong cảnh Hội An, thư pháp hoặc hoa văn truyền thống.
Thành phần: Giấy dó, lụa, tre.
Chất liệu: Giấy/lụa và tre.
Kích thước: Tiêu chuẩn quạt xếp.
Công dụng: Quạt mát, phụ kiện chụp ảnh, trang trí, quà lưu niệm.
Phù hợp với: Du khách, người yêu thích đồ thủ công truyền thống.
Đặc điểm văn hóa: Món đồ mang đậm nét Á Đông, thể hiện sự thanh lịch và là món quà lưu niệm tinh tế từ Hội An.', 
N'Cái', N'Quảng Nam'),

('SP052', N'Nhang quế', 30, 75000.00, 110, 
N'Giới thiệu chung: Nhang quế Quảng Nam, đặc biệt từ vùng quế Trà My, có mùi thơm mạnh mẽ, đặc trưng của quế rừng. Được làm từ bột quế nguyên chất.
Thành phần: Bột vỏ quế Trà My, keo bời lời.
Chất liệu: Que nhang.
Khối lượng: Thường đóng bó hoặc hộp.
Công dụng: Thờ cúng, làm sạch không khí, mang lại cảm giác ấm cúng, có tác dụng xua đuổi côn trùng.
Phù hợp với: Gia đình, đặc biệt những ai yêu thích mùi hương nồng ấm của quế.
Đặc điểm văn hóa: Quảng Nam là xứ sở của quế, nhang quế là một sản phẩm thể hiện giá trị của cây quế trong đời sống văn hóa và kinh tế.', 
N'Bó/Hộp', N'Quảng Nam'),

('SP053', N'Giỏ xách mây tre', 31, 280000.00, 60, 
N'Giới thiệu chung: Giỏ xách, túi xách làm từ mây tre đan là sản phẩm thủ công mỹ nghệ thân thiện với môi trường của Quảng Nam. Sản phẩm được đan lát tỉ mỉ, kiểu dáng đa dạng, mang tính ứng dụng cao và nét đẹp tự nhiên.
Thành phần: Mây, tre, cói.
Chất liệu: Nguyên liệu tự nhiên.
Kích thước: 30x50x30 cm (D-R-C).
Công dụng: Đựng đồ dùng cá nhân, phụ kiện thời trang, đi chợ, đi biển.
Phù hợp với: Phụ nữ, người yêu thích sản phẩm tự nhiên, thời trang bền vững.
Đặc điểm văn hóa: Nghề đan lát mây tre là nghề thủ công truyền thống ở nhiều địa phương Quảng Nam, sản phẩm thể hiện sự khéo léo và gần gũi với thiên nhiên.', 
N'Cái', N'Quảng Nam');

-------------Hình ?nh
--?à n?ng
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/ramcuoncaidanang1.jpg', 'SP001');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/bunchacadanang1.jpg', 'SP002');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/banhtrangcuonthitheodanang1.jpg', 'SP003');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/nuocmamnamodanang1.jpg', 'SP004');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/muckhodanang1.jpg', 'SP005');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/cabokhodanang1.jpg', 'SP006');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/trasamduadanang1.jpg', 'SP007');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/trahoalaidanang1.jpg', 'SP008');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/banhtrangtuyloandanang1.jpg', 'SP009');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/rongbienmykhedanang1.jpg', 'SP010');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tuongcachepnonnuocdanang.jpg', 'SP011');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tuongducmedanang1.jpg', 'SP012');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/mockhoacaurongdanang1.jpg', 'SP013');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tuivaiinhinhcauvangdanang1.jpg', 'SP014');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tinhdausahuongdanang1.jpg', 'SP015');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tinhdaubachadanang1.jpg', 'SP016');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/ruougaodanang1.jpg', 'SP017');
--Hu?
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/banhbeohue1.jpg', 'SP018');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/banhbotlochue1.jpg', 'SP019');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/bunbohue1.jpg', 'SP020');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tracungdinhhue1.jpg', 'SP021');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/trahoaatisohue1.jpg', 'SP022');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tinhdautramhue2.jpg', 'SP023');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tinhdauhoasenhue1.jpg', 'SP024');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/huongtramhue2.jpg', 'SP025');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/huongquehue1.jpg', 'SP026');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tomkhohue2.jpg', 'SP027');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/cacomkhohue2.jpg', 'SP028');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/nonbaithohue1.jpg', 'SP029');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/nonlahue1.jpg', 'SP030');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/aocophuchue1.jpg', 'SP031');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/aodaihue1.jpg', 'SP032');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tranhtheutayhue1.jpg', 'SP033');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tranhtheutayhue2.jpg', 'SP034');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/amtramenlamhue1.jpg', 'SP035');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tohehue1.jpg', 'SP036');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/mockhoadainoihue1.jpg', 'SP037');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/ruouminhmanghue1.jpg', 'SP038');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/ruougaohue1.jpg', 'SP039');

--Qu?ng nam
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/miquangquangnam1.jpg', 'SP040');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/caolauhoian3.jpg', 'SP041');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/banhxeohoian1.jpg', 'SP042');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/nuocmamcuakhequangnam1.jpg', 'SP043');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/banhtoquangnam1.jpg', 'SP044');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/traxanhquangnam1.jpg', 'SP045');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tuongotquangnam1.jpg', 'SP046');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tuongotquangnam3.jpg', 'SP047');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/binhgomquangnam1.jpg', 'SP048');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/longdenhoianquangnam1.jpg', 'SP049');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/mockhoaphocoquangnam1.jpg', 'SP050');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/quattayquangnam1.jpg', 'SP051');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/nhangquequangnam1.jpg', 'SP052');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/giomaytrequangnam1.jpg', 'SP053');


INSERT INTO ThanhToan (MaThanhToan, TenThanhToan) 
VALUES 
('CASHONDELI', N'Thanh toán khi nhận hàng (COD)'), -- Using a shorter MaThanhToan for COD as it's very common. CHAR(10) will pad it.
('BANKTRANSF', N'Chuyển khoản ngân hàng'), 
('VNPAYQR', N'Thanh toán qua cổng VNPay (QR Code, Thẻ nội địa, Ví điện tử)'),
('MOMOWALLET', N'Thanh toán qua ví điện tử MoMo'),
('ZALOPAY', N'Thanh toán qua ví điện tử ZaloPay'),
('INTLCARD', N'Thanh toán bằng thẻ quốc tế (Visa, Mastercard, JCB)');

--select * from ThanhToan

-- Inserting into DonHang table
-- Order 1
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (1, '2025-05-01', N'Đã giao hàng', 295000.00, 1, N'123 Lê Lợi, Huế');

-- Order 2
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (2, '2025-05-03', N'Đang giao hàng', 180000.00, 2, N'45 Hùng Vương, Đà Nẵng');

-- Order 3
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (3, '2025-05-05', N'Đang xử lý', 400000.00, 3, N'78 Nguyễn Du, Quảng Nam');

-- Order 4
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (4, '2025-05-07', N'Đã đặt hàng', 1700000.00, 4, N'12 Trần Hưng Đạo, Huế');

-- Order 5
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (5, '2025-05-09', N'Đã hủy', 245000.00, 1, N'55 Lý Thường Kiệt, Đà Nẵng');
GO

-- Details for Order 1 (IDDonHang = 1)
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (1, 'SP018', 2); -- Bánh bèo Huế
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (1, 'SP003', 3); -- Bánh tráng cuốn thịt heo Đà Nẵng

-- Details for Order 2 (IDDonHang = 2)
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (2, 'SP010', 1); -- Rong biển Mỹ Khê Đà Nẵng
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (2, 'SP020', 2); -- Bún bò Huế

-- Details for Order 3 (IDDonHang = 3)
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (3, 'SP036', 1); -- Tò he Huế
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (3, 'SP052', 5); -- Nhang quế Quảng Nam

-- Details for Order 4 (IDDonHang = 4)
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (4, 'SP012', 1); -- Tượng Đức Mẹ Non Nước Đà Nẵng
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (4, 'SP049', 2); -- Lồng đèn Hội An

-- Details for Order 5 (IDDonHang = 5)
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (5, 'SP040', 1); -- Mì Quảng
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (5, 'SP002', 4); -- Bún chả cá Đà Nẵng
GO

-- Inserting DonHang and ChiTietDonHang for Jan 2025 - Apr 2025 (20 Orders)
-- Using direct INSERT ... VALUES format
-- Assuming IDDonHang starts from 6

-- ==== January 2025 ====

-- Order 1 (IDDonHang: 6)
-- KhachHang: 1, ThanhToan: COD, TrangThai: Đã giao hàng
-- Product1: SP018 (Bánh bèo, 35000.00), Qty1: 1
-- Product2: SP019 (Bánh bột lọc, 45000.00), Qty2: 2
-- TongTien: (35000.00 * 1) + (45000.00 * 2) = 35000 + 90000 = 125000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (1, '2025-01-03', N'Đã giao hàng', 125000.00, 1, N'123 Lê Lợi, Huế');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (6, 'SP018', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (6, 'SP019', 2);
GO

-- Order 2 (IDDonHang: 7)
-- KhachHang: 2, ThanhToan: BANKTRANSF, TrangThai: Hoàn thành
-- Product1: SP027 (Tôm khô, 250000.00), Qty1: 2  -- Đã đổi SP010 (Rong biển Mỹ Khê) sang SP027 (Tôm khô) theo ý đồ bạn
-- Product2: SP021 (Trà Cung đình, 150000.00), Qty2: 3 -- Đã đổi SP020 (Bún bò) sang SP021 (Trà Cung đình) theo ý đồ bạn
-- TongTien: (250000.00 * 2) + (150000.00 * 3) = 500000 + 450000 = 950000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (2, '2025-01-08', N'Hoàn thành', 950000.00, 2, N'45 Hùng Vương, Đà Nẵng');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (7, 'SP027', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (7, 'SP021', 3);
GO

-- Order 3 (IDDonHang: 8)
-- KhachHang: 3, ThanhToan: VNPAYQR, TrangThai: Đã giao hàng
-- Product1: SP023 (Tinh dầu tràm, 180000.00), Qty1: 3 -- Đã đổi SP030 (Tinh dầu quế) sang SP023 (Tinh dầu tràm)
-- Product2: SP029 (Nón lá bài thơ Huế, 80000.00), Qty2: 1 -- Đã đổi SP036 (Tò he) sang SP029 (Nón lá bài thơ Huế)
-- TongTien: (180000.00 * 3) + (80000.00 * 1) = 540000 + 80000 = 620000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (3, '2025-01-15', N'Đã giao hàng', 620000.00, 3, N'78 Nguyễn Du, Quảng Nam');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (8, 'SP023', 3);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (8, 'SP029', 1);
GO

-- Order 4 (IDDonHang: 9)
-- KhachHang: 4, ThanhToan: MOMOWALLET, TrangThai: Hoàn thành
-- Product1: SP011 (Tượng cá chép Non Nước, 500000.00), Qty1: 1
-- Product2: SP036 (Tò he, 25000.00), Qty2: 2 -- Đã đổi SP044 (Tò he) sang SP036 (Tò he)
-- TongTien: (500000.00 * 1) + (25000.00 * 2) = 500000 + 50000 = 550000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (4, '2025-01-22', N'Hoàn thành', 550000.00, 4, N'12 Trần Hưng Đạo, Huế');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (9, 'SP011', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (9, 'SP036', 2);
GO

-- Order 5 (IDDonHang: 10)
-- KhachHang: 5, ThanhToan: ZALOPAY, TrangThai: Đã hủy
-- Product1: SP050 (Móc khóa phố cổ, 30000.00), Qty1: 2
-- Product2: SP049 (Lồng đèn Hội An, 100000.00), Qty2: 3 -- Đã đổi SP052 (Nhang quế) sang SP049 (Lồng đèn Hội An)
-- TongTien: (30000.00 * 2) + (100000.00 * 3) = 60000 + 300000 = 360000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (5, '2025-01-27', N'Đã hủy', 360000.00, 5, N'55 Lý Thường Kiệt, Đà Nẵng');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (10, 'SP050', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (10, 'SP049', 3);
GO

-- ==== February 2025 ==== (Feb 2025 has 28 days)
-- Order 6 (IDDonHang: 11)
-- KhachHang: 1, ThanhToan: INTLCARD, TrangThai: Đã giao hàng
-- Product1: SP020 (Bún bò, 55000.00), Qty1: 3 -- Đã đổi SP003 (Bánh tráng cuốn thịt heo) sang SP020 (Bún bò)
-- Product2: SP028 (Cá cơm khô, 180000.00), Qty2: 1 -- Đã đổi SP011 (Tượng cá chép) sang SP028 (Cá cơm khô)
-- TongTien: (55000.00 * 3) + (180000.00 * 1) = 165000 + 180000 = 345000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (1, '2025-02-03', N'Đã giao hàng', 345000.00, 6, N'123 Lê Lợi, Huế');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (11, 'SP020', 3);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (11, 'SP028', 1);
GO

-- Order 7 (IDDonHang: 12)
-- KhachHang: 2, ThanhToan: COD, TrangThai: Hoàn thành
-- Product1: SP004 (Nước mắm Nam Ô, 120000.00), Qty1: 1 -- Đã đổi SP015 (Nước mắm Nam Ô) sang SP004
-- Product2: SP008 (Trà hoa lài, 95000.00), Qty2: 2 -- Đã đổi SP023 (Tinh dầu tràm) sang SP008 (Trà hoa lài)
-- TongTien: (120000.00 * 1) + (95000.00 * 2) = 120000 + 190000 = 310000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (2, '2025-02-08', N'Hoàn thành', 310000.00, 1, N'45 Hùng Vương, Đà Nẵng');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (12, 'SP004', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (12, 'SP008', 2);
GO

-- Order 8 (IDDonHang: 13)
-- KhachHang: 3, ThanhToan: BANKTRANSF, TrangThai: Đã giao hàng
-- Product1: SP025 (Hương trầm, 100000.00), Qty1: 2 -- Đã đổi SP032 (Áo dài Huế) sang SP025 (Hương trầm)
-- Product2: SP031 (Áo cổ phục Huế, 500000.00), Qty2: 3 -- Đã đổi SP038 (Tranh thêu tay chim công) sang SP031 (Áo cổ phục Huế)
-- TongTien: (100000.00 * 2) + (500000.00 * 3) = 200000 + 1500000 = 1700000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (3, '2025-02-15', N'Đã giao hàng', 1700000.00, 2, N'78 Nguyễn Du, Quảng Nam');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (13, 'SP025', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (13, 'SP031', 3);
GO

-- Order 9 (IDDonHang: 14)
-- KhachHang: 4, ThanhToan: VNPAYQR, TrangThai: Hoàn thành
-- Product1: SP029 (Nón lá bài thơ Huế, 80000.00), Qty1: 3 -- Đã đổi SP046 (Nón bài thơ huế) sang SP029 (Nón lá bài thơ Huế)
-- Product2: SP053 (Giỏ xách mây tre, 280000.00), Qty2: 1 -- Đã đổi SP053 (Rượu Minh Mạng) sang SP053 (Giỏ xách mây tre)
-- TongTien: (80000.00 * 3) + (280000.00 * 1) = 240000 + 280000 = 520000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (4, '2025-02-22', N'Hoàn thành', 520000.00, 3, N'12 Trần Hưng Đạo, Huế');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (14, 'SP029', 3);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (14, 'SP053', 1);
GO

-- Order 10 (IDDonHang: 15)
-- KhachHang: 5, ThanhToan: MOMOWALLET, TrangThai: Đã hủy
-- Product1: SP012 (Tượng Đức Mẹ Non Nước, 1500000.00), Qty1: 1 -- Đã đổi SP060 (Chuỗi hạt trầm hương) sang SP012 (Tượng Đức Mẹ Non Nước)
-- Product2: SP002 (Bún chả cá, 50000.00), Qty2: 2 -- Đã đổi SP063 (Chè hạt sen long nhãn) sang SP002 (Bún chả cá)
-- TongTien: (1500000.00 * 1) + (50000.00 * 2) = 1500000 + 100000 = 1600000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (5, '2025-02-25', N'Đã hủy', 1600000.00, 4, N'55 Lý Thường Kiệt, Đà Nẵng');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (15, 'SP012', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (15, 'SP002', 2);
GO

-- ==== March 2025 ====
-- Order 11 (IDDonHang: 16)
-- KhachHang: 1, ThanhToan: ZALOPAY, TrangThai: Đã giao hàng
-- Product1: SP001 (Ram cuốn cải, 60000.00), Qty1: 2
-- Product2: SP006 (Cá bò khô, 320000.00), Qty2: 3 -- Đã đổi SP013 (Móc khóa cầu rồng) sang SP006 (Cá bò khô)
-- TongTien: (60000.00 * 2) + (320000.00 * 3) = 120000 + 960000 = 1080000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (1, '2025-03-03', N'Đã giao hàng', 1080000.00, 5, N'123 Lê Lợi, Huế');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (16, 'SP001', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (16, 'SP006', 3);
GO

-- Order 12 (IDDonHang: 17)
-- KhachHang: 2, ThanhToan: INTLCARD, TrangThai: Hoàn thành
-- Product1: SP022 (Trà hoa atiso, 120000.00), Qty1: 3 -- Đã đổi SP021 (Trà Cung đình) sang SP022 (Trà hoa atiso)
-- Product2: SP015 (Tinh dầu sả chanh, 150000.00), Qty2: 1 -- Đã đổi SP028 (Cá cơm khô) sang SP015 (Tinh dầu sả chanh)
-- TongTien: (120000.00 * 3) + (150000.00 * 1) = 360000 + 150000 = 510000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (2, '2025-03-08', N'Hoàn thành', 510000.00, 6, N'45 Hùng Vương, Đà Nẵng');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (17, 'SP022', 3);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (17, 'SP015', 1);
GO

-- Order 13 (IDDonHang: 18)
-- KhachHang: 3, ThanhToan: COD, TrangThai: Đã giao hàng
-- Product1: SP037 (Móc khóa Đại Nội Huế, 40000.00), Qty1: 1 -- Đã đổi SP037 (Áo cổ phục Huế) sang SP037 (Móc khóa Đại Nội Huế)
-- Product2: SP013 (Móc khóa cầu Rồng, 35000.00), Qty2: 2 -- Đã đổi SP041 (Mô hình cầu rồng) sang SP013 (Móc khóa cầu Rồng)
-- TongTien: (40000.00 * 1) + (35000.00 * 2) = 40000 + 70000 = 110000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (3, '2025-03-15', N'Đã giao hàng', 110000.00, 1, N'78 Nguyễn Du, Quảng Nam');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (18, 'SP037', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (18, 'SP013', 2);
GO

-- Order 14 (IDDonHang: 19)
-- KhachHang: 4, ThanhToan: BANKTRANSF, TrangThai: Hoàn thành
-- Product1: SP017 (Rượu gạo Đà Nẵng, 85000.00), Qty1: 2 -- Đã đổi SP054 (Rượu gạo Huế) sang SP017 (Rượu gạo Đà Nẵng)
-- Product2: SP049 (Lồng đèn Hội An, 100000.00), Qty2: 3 -- Đã đổi SP061 (Đèn lồng phong thủy) sang SP049 (Lồng đèn Hội An)
-- TongTien: (85000.00 * 2) + (100000.00 * 3) = 170000 + 300000 = 470000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (4, '2025-03-22', N'Hoàn thành', 470000.00, 2, N'12 Trần Hưng Đạo, Huế');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (19, 'SP017', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (19, 'SP049', 3);
GO

-- Order 15 (IDDonHang: 20)
-- KhachHang: 5, ThanhToan: VNPAYQR, TrangThai: Đã hủy
-- Product1: SP040 (Mì Quảng, 45000.00), Qty1: 3 -- Đã đổi SP070 (Chè đậu đen) sang SP040 (Mì Quảng)
-- Product2: SP003 (Bánh tráng cuốn thịt heo, 75000.00), Qty2: 1 -- Đã đổi SP074 (Bánh khô mè Cẩm Lệ) sang SP003 (Bánh tráng cuốn thịt heo)
-- TongTien: (45000.00 * 3) + (75000.00 * 1) = 135000 + 75000 = 210000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (5, '2025-03-27', N'Đã hủy', 210000.00, 3, N'55 Lý Thường Kiệt, Đà Nẵng');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (20, 'SP040', 3);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (20, 'SP003', 1);
GO

-- ==== April 2025 ====
-- Order 16 (IDDonHang: 21)
-- KhachHang: 1, ThanhToan: MOMOWALLET, TrangThai: Đã giao hàng
-- Product1: SP005 (Mực khô, 650000.00), Qty1: 1 -- Đã đổi SP005 (Bún chả cá) sang SP005 (Mực khô)
-- Product2: SP043 (Nước mắm Cửa Khe, 110000.00), Qty2: 2
-- TongTien: (650000.00 * 1) + (110000.00 * 2) = 650000 + 220000 = 870000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (1, '2025-04-03', N'Đã giao hàng', 870000.00, 4, N'123 Lê Lợi, Huế');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (21, 'SP005', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (21, 'SP043', 2);
GO

-- Order 17 (IDDonHang: 22)
-- KhachHang: 2, ThanhToan: ZALOPAY, TrangThai: Hoàn thành
-- Product1: SP025 (Hương trầm, 100000.00), Qty1: 2 -- Đã đổi SP025 (Trà thảo mộc) sang SP025 (Hương trầm)
-- Product2: SP016 (Tinh dầu bạc hà, 130000.00), Qty2: 3 -- Đã đổi SP031 (Tinh dầu ngải cứu) sang SP016 (Tinh dầu bạc hà)
-- TongTien: (100000.00 * 2) + (130000.00 * 3) = 200000 + 390000 = 590000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (2, '2025-04-08', N'Hoàn thành', 590000.00, 5, N'45 Hùng Vương, Đà Nẵng');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (22, 'SP025', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (22, 'SP016', 3);
GO

-- Order 18 (IDDonHang: 23)
-- KhachHang: 3, ThanhToan: INTLCARD, TrangThai: Đã giao hàng
-- Product1: SP053 (Giỏ xách mây tre, 280000.00), Qty1: 3
-- Product2: SP047 (Tương ớt xào Triệu Phát, 45000.00), Qty2: 1 -- Đã đổi SP047 (Móc khóa cầu Rồng) sang SP047 (Tương ớt xào Triệu Phát)
-- TongTien: (280000.00 * 3) + (45000.00 * 1) = 840000 + 45000 = 885000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (3, '2025-04-15', N'Đã giao hàng', 885000.00, 6, N'78 Nguyễn Du, Quảng Nam');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (23, 'SP053', 3);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (23, 'SP047', 1);
GO

-- Order 19 (IDDonHang: 24)
-- KhachHang: 4, ThanhToan: COD, TrangThai: Hoàn thành
-- Product1: SP017 (Rượu gạo Đà Nẵng, 85000.00), Qty1: 1 -- Đã đổi SP057 (Rượu gạo lứt) sang SP017 (Rượu gạo Đà Nẵng)
-- Product2: SP018 (Bánh bèo, 35000.00), Qty2: 2 -- Đã đổi SP065 (Chè bột lọc heo quay) sang SP018 (Bánh bèo)
-- TongTien: (85000.00 * 1) + (35000.00 * 2) = 85000 + 70000 = 155000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (4, '2025-04-22', N'Hoàn thành', 155000.00, 1, N'12 Trần Hưng Đạo, Huế');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (24, 'SP017', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (24, 'SP018', 2);
GO

-- Order 20 (IDDonHang: 25)
-- KhachHang: 5, ThanhToan: BANKTRANSF, TrangThai: Đã hủy
-- Product1: SP003 (Bánh tráng cuốn thịt heo, 75000.00), Qty2: 2 -- Đã đổi SP076 (Bánh thuẫn) sang SP003 (Bánh tráng cuốn thịt heo)
-- Product2: SP008 (Trà hoa lài, 95000.00), Qty2: 3 -- Đã đổi SP008 (Cao lầu) sang SP008 (Trà hoa lài)
-- TongTien: (75000.00 * 2) + (95000.00 * 3) = 150000 + 285000 = 435000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (5, '2025-04-27', N'Đã hủy', 435000.00, 2, N'55 Lý Thường Kiệt, Đà Nẵng');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (25, 'SP003', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (25, 'SP008', 3);
GO

select * from DonHang, ChiTietDonHang where DonHang.IDDonHang = ChiTietDonHang.IDDonHang
select * from DonHang