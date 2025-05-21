USE ShopHueDaQua;
GO

--Khách hàng
INSERT INTO KhachHang (taiKhoan, matKhau, hoTen, email, soDienThoai, DiaChi)
VALUES
('nguyenvanA', '123', N'Nguy?n V?n A', 'nguyenvana@email.com', '0912345678', N'123 Lê L?i, Hu?'),
('tranthiB', '123', N'Tr?n Th? B', 'tranthib@email.com', '0987654321', N'45 Hùng V??ng, ?à N?ng'),
('lehoangC', '123', N'Lê Hoàng C', 'lehoangc@email.com', '0905123456', N'78 Nguy?n Du, Qu?ng Nam'),
('phamthid', '123', N'Ph?m Th? D', 'phamthid@email.com', '0911222333', N'12 Tr?n H?ng ??o, Hu?'),
('vuvanE', '123', N'V? V?n E', 'vuvane@email.com', '0977123456', N'55 Lý Th??ng Ki?t, ?à N?ng'),
('nguyenthif', '123', N'Nguy?n Th? F', 'nguyenthif@email.com', '0909876543', N'9 H?i Th??ng Lãn Ông, Qu?ng Nam'),
('truongquangG', '123', N'Tr??ng Quang G', 'truongquangg@email.com', '0915987654', N'30 Bà Tri?u, Hu?'),
('hoangthiH', '123', N'Hoàng Th? H', 'hoangthih@email.com', '0988999888', N'17 Lê Du?n, ?à N?ng'),
('dinhvanI', '123', N'?inh V?n I', 'dinhvani@email.com', '0903123123', N'22 Tr?n Phú, Qu?ng Nam'),
('lamthiK', '123', N'Lâm Th? K', 'lamthik@email.com', '0917123456', N'4 Nguy?n Hu?, Hu?');

--Danh m?c
INSERT INTO DanhMuc (tenDanhMuc, hinhAnh, moTa, tenDacSan) VALUES
(N'??c S?n ?m Th?c ?à N?ng', 'https://statics.vinwonders.com/dac-san-da-nang-1.jpg', N'??c s?n ?m th?c n?i ti?ng c?a ?à N?ng', N'??c s?n ?à N?ng'),
(N'N??c M?m Nam Ô', 'https://th.bing.com/th/id/OIP.ScMsg8yhO8Q_1sYcqZp7bQHaEU?cb=iwc2&rs=1&pid=ImgDetMain', N'N??c m?m truy?n th?ng n?i ti?ng c?a Nam Ô, ?à N?ng', N'??c s?n ?à N?ng'),
(N'H?i S?n Khô ?à N?ng', 'https://th.bing.com/th/id/OIP.-2rw7ZA9xtLMRHc-Isw-BAHaFj?cb=iwc2&rs=1&pid=ImgDetMain', N'H?i s?n khô ??c s?n vùng bi?n ?à N?ng', N'??c s?n ?à N?ng'),
(N'Trà và Th?o D??c ?à N?ng', 'https://duoclieumientay.com/wp-content/uploads/2022/12/cong-dung-cua-tra-thao-duoc-duoc-lieu-mien-tay-06.png', N'Trà và th?o d??c ??c tr?ng c?a ?à N?ng', N'??c s?n ?à N?ng'),
(N'Bánh Tráng Túy Loan', 'https://th.bing.com/th/id/OIP.V4QYszUsBhwYXe_rMTguZAHaFi?cb=iwc2&rs=1&pid=ImgDetMain', N'Bánh tráng Túy Loan n?i ti?ng ?à N?ng', N'??c s?n ?à N?ng'),
(N'Rong Bi?n M? Khê', 'https://th.bing.com/th/id/OIP.l6Jv6erc9o_BjN0Pv0ADYQHaFj?cb=iwc2&rs=1&pid=ImgDetMain', N'Rong bi?n M? Khê – ??c s?n bi?n ?à N?ng', N'??c s?n ?à N?ng'),
(N'?á M? Ngh? Non N??c', 'https://th.bing.com/th/id/OIP.xSas4r2jxrvHplcukqZ9MwHaFh?cb=iwc2&rs=1&pid=ImgDetMain', N'?á m? ngh? Non N??c – s?n ph?m th? công m? ngh?', N'??c s?n ?à N?ng'),
(N'?? L?u Ni?m ?à N?ng', 'https://danangaz.com/wp-content/uploads/2018/10/52-min.jpg', N'?? l?u ni?m ??c tr?ng cho du l?ch ?à N?ng', N'??c s?n ?à N?ng'),
(N'Tinh D?u Th?o M?c ?à N?ng', 'https://th.bing.com/th/id/OIP.FJinsfgjNS-JuX66dBVeMgHaF7?cb=iwc2&rs=1&pid=ImgDetMain', N'Tinh d?u th?o m?c ?à N?ng, s?n ph?m ch?m sóc s?c kh?e', N'??c s?n ?à N?ng'),
(N'R??u Truy?n Th?ng ?à N?ng', 'https://toplist.vn/images/800px/ruou-sam-dinh-lang-da-nang-1238580.jpg', N'R??u truy?n th?ng ??c s?n ?à N?ng', N'??c s?n ?à N?ng');


INSERT INTO DanhMuc (tenDanhMuc, hinhAnh, moTa, tenDacSan) VALUES
(N'??c S?n ?m Th?c Hu?', 'https://statics.vinwonders.com/dac-san-hue-06_1650031359.jpg', N'??c S?n ?m Th?c Hu?', N'??c s?n Hu?'),
(N'Trà và Th?o D??c Hu?', 'https://statics.vinwonders.com/tra-cung-dinh-hue-13_1631763887.jpg', N'Trà và Th?o D??c Hu?', N'??c s?n Hu?'),
(N'D?u Tràm và Tinh D?u Hu?', 'https://th.bing.com/th/id/OIP.xtmTDlcpcC3RhJ094re9uwHaHH?cb=iwc2&rs=1&pid=ImgDetMain', N'D?u Tràm và Tinh D?u Hu?', N'??c s?n Hu?'),
(N'H??ng Tr?m Hu?', 'https://bizweb.dktcdn.net/100/448/296/files/huong-tram-xu-hue-3.jpg?v=1647677679787', N'H??ng Tr?m Hu?', N'??c s?n Hu?'),
(N'H?i S?n Khô Hu?', 'https://th.bing.com/th/id/OIP.Pz9q8WmvqMl4kmvo5VhO4QHaFj?cb=iwc2&rs=1&pid=ImgDetMain', N'H?i S?n Khô Hu?', N'??c s?n Hu?'),
(N'Nón Lá Hu?', 'https://th.bing.com/th/id/R.8d895ebb086458cd5bd1dab3da08fbbe?rik=m3SKft3CXtIxdA&pid=ImgRaw&r=0', N'Nón Lá Hu?', N'??c s?n Hu?'),
(N'Áo Dài Hu?', 'https://ims.baoyenbai.com.vn/NewsImg/8_2021/216211_23-8-hue.jpg', N'Áo Dài Hu?', N'??c s?n Hu?'),
(N'Tranh Thêu Tay Hu?', 'https://th.bing.com/th/id/OIP.RR1wUc50XqG358vaM38zQgHaFY?cb=iwc2&rs=1&pid=ImgDetMain', N'Tranh Thêu Tay Hu?', N'??c s?n Hu?'),
(N'?? G?m Hu?', 'https://th.bing.com/th/id/OIP.tJuLgrhfbs-oZaVj5wMcyAHaEK?cb=iwc2&rs=1&pid=ImgDetMain', N'?? G?m Hu?', N'??c s?n Hu?'),
(N'?? L?u Ni?m Hu?', 'https://th.bing.com/th/id/OIP.VpW0bfMk2awnlUv0gRKg_gAAAA?cb=iwc2&rs=1&pid=ImgDetMain', N'?? L?u Ni?m Hu?', N'??c s?n Hu?'),
(N'R??u Hu?', 'https://toplist.vn/images/800px/royal-wine-ham-ruou-vang-hue-1213528.jpg', N'R??u Hu?', N'??c s?n Hu?');


INSERT INTO DanhMuc (tenDanhMuc, hinhAnh, moTa, tenDacSan) VALUES
(N'??c S?n ?m Th?c Qu?ng Nam', 'https://ik.imagekit.io/tvlk/blog/2022/05/dac-san-quang-nam-1-1024x684.jpeg?tr=dpr-2,w-675', N'??c S?n ?m Th?c Qu?ng Nam', N'??c s?n Qu?ng Nam'),
(N'N??c M?m C?a Khe', 'https://down-vn.img.susercontent.com/file/4b424dc1e1d5c0603bb6429cac4d8154', N'N??c M?m C?a Khe', N'??c s?n Qu?ng Nam'),
(N'Bánh T? Qu?ng Nam', 'https://th.bing.com/th/id/OIP.dVjUa_1BRo0AIlR4MTPfrAHaFB?cb=iwc2&rs=1&pid=ImgDetMain', N'Bánh T? Qu?ng Nam', N'??c s?n Qu?ng Nam'),
(N'Trà Xanh Qu?ng Nam', 'https://th.bing.com/th/id/OIP.NLQi-eOeC1QwVSe5dnIWIAHaE8?cb=iwc2&rs=1&pid=ImgDetMain', N'Trà Xanh Qu?ng Nam', N'??c s?n Qu?ng Nam'),
(N'T??ng ?t H?i An', 'https://quangnamfood.com/wp-content/uploads/2020/12/ot-xao-hoi-an-e1666853112370.jpg', N'T??ng ?t H?i An', N'??c s?n Qu?ng Nam'),
(N'?? G?m Thanh Hà', 'https://gomsumoc.com/wp-content/uploads/2023/03/59-1368x800.jpg', N'?? G?m Thanh Hà', N'??c s?n Qu?ng Nam'),
(N'L?ng ?èn H?i An', 'https://th.bing.com/th/id/OIP.0FN4sQ60YnIHvZH1-xyq2AHaE4?cb=iwc2&rs=1&pid=ImgDetMain', N'L?ng ?èn H?i An', N'??c s?n Qu?ng Nam'),
(N'?? L?u Ni?m Qu?ng Nam', 'https://th.bing.com/th/id/OIP.Z5YW_JV0U5cu-H5RlAqHUAHaE8?cb=iwc2&rs=1&pid=ImgDetMain', N'?? L?u Ni?m Qu?ng Nam', N'??c s?n Qu?ng Nam'),
(N'H??ng Nhang Qu? Qu?ng Nam', 'https://nhangquequangngai.com/wp-content/uploads/2023/06/Nu-que-1.jpg', N'H??ng Nhang Qu? Qu?ng Nam', N'??c s?n Qu?ng Nam'),
(N'Th? Công Mây Tre', 'https://gomphuctaman.com/wp-content/uploads/2022/07/san-pham-thu-cong-my-nghe-tu-tre.jpg', N'Th? Công Mây Tre', N'??c s?n Qu?ng Nam');


INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
--?à n?ng
('SP001', N'Ram cu?n c?i', 1, 60000.00, 90, 
N'Gi?i thi?u chung: Ram cu?n c?i ?à N?ng là món cu?n ??c ?áo v?i ram (ch? giò) chiên giòn ???c cu?n cùng bún, rau s?ng t??i mát trong lá c?i xanh. Món ?n có s? hòa quy?n gi?a v? giòn c?a ram, v? t??i c?a rau và v? cay nh? c?a c?i.
Thành ph?n: Bánh tráng cu?n ram, th?t heo xay, mi?n, m?c nh?, tr?ng, lá c?i xanh, bún, rau s?ng, n??c ch?m.
Công d?ng: Món khai v? ho?c món chính, thanh mát và l? mi?ng.
Phù h?p v?i: Ng??i thích các món cu?n, mu?n th? h??ng v? ??c tr?ng c?a ?à N?ng.
??c ?i?m v?n hóa: Món ?n th? hi?n s? sáng t?o trong ?m th?c ?à thành, k?t h?p hài hòa các nguyên li?u ??a ph??ng.', 
N'Ph?n', N'?à N?ng'),

('SP002', N'Bún ch? cá', 1, 50000.00, 100, 
N'Gi?i thi?u chung: Bún ch? cá ?à N?ng n?i ti?ng v?i n??c dùng thanh ng?t ???c ninh t? x??ng cá và các lo?i rau c?, cùng v?i ch? cá thu t??i ngon, dai. Ch? cá có th? ???c chiên ho?c h?p.
Thành ph?n: Bún, ch? cá thu, cà chua, bí ??, m?ng t??i, th?m (d?a), rau s?ng, m?m ru?c.
Công d?ng: Món ?n sáng ho?c tr?a ph? bi?n, cung c?p dinh d??ng.
Phù h?p v?i: M?i l?a tu?i, ng??i yêu thích h??ng v? bi?n và các món bún n??c.
??c ?i?m v?n hóa: Món ?n ??c tr?ng c?a vùng bi?n ?à N?ng, ph?n ánh s? t??i ngon c?a h?i s?n ??a ph??ng.', 
N'Tô', N'?à N?ng'),

('SP003', N'Bánh tráng cu?n th?t heo', 1, 75000.00, 70, 
N'Gi?i thi?u chung: Bánh tráng cu?n th?t heo ?à N?ng là món ?n dân dã nh?ng h?p d?n. Th?t heo ???c lu?c ho?c h?p gi? ?? ng?t, cu?n cùng bánh tráng ??i L?c, rau s?ng ?a d?ng và ch?m m?m nêm ??m ?à.
Thành ph?n: Th?t heo (ba ch? ho?c hai ??u da), bánh tráng, rau s?ng (xà lách, tía tô, di?p cá, húng qu?, giá ??, d?a chu?t, chu?i chát...), m?m nêm.
Công d?ng: Món chính, thích h?p cho các bu?i t? h?p b?n bè, gia ?ình.
Phù h?p v?i: Nh?ng ng??i thích món cu?n, h??ng v? m?m nêm ??c tr?ng.
??c ?i?m v?n hóa: Món ?n th? hi?n s? hòa quy?n c?a nhi?u lo?i rau và h??ng v?, là ni?m t? hào c?a ?m th?c ?à N?ng.', 
N'Ph?n', N'?à N?ng'),

('SP004', N'N??c m?m Nam Ô', 2, 120000.00, 100, 
N'Gi?i thi?u chung: N??c m?m Nam Ô là th??ng hi?u n??c m?m truy?n th?ng n?i ti?ng c?a ?à N?ng, ???c làm t? cá c?m than t??i ngon và mu?i h?t tinh khi?t, ? ch??p theo ph??ng pháp c? truy?n. N??c m?m có màu cánh gián, v? ??m ?à, h??ng th?m ??c tr?ng.
Thành ph?n: Cá c?m than, mu?i bi?n.
Kh?i l??ng: 1 lít.
Công d?ng: Dùng làm n??c ch?m ho?c gia v? nêm n?m món ?n.
Phù h?p v?i: M?i gia ?ình, nhà hàng, ng??i sành ?n.
??c ?i?m v?n hóa: Di s?n v?n hóa phi v?t th? qu?c gia, ni?m t? hào c?a làng ngh? n??c m?m Nam Ô h?n 400 n?m tu?i.', 
N'Chai', N'?à N?ng'),

('SP005', N'M?c khô', 3, 650000.00, 40, 
N'Gi?i thi?u chung: M?c khô ?à N?ng n?i ti?ng v?i ch?t l??ng cao, ???c làm t? m?c ?ng t??i ngon, ph?i khô t? nhiên d??i n?ng bi?n. M?c dày mình, th?t ng?t và th?m.
Thành ph?n: 100% m?c ?ng t??i.
Kh?i l??ng: 1 kg.
Công d?ng: N??ng, chiên, xào, làm g?i. Là món nh?m ph? bi?n.
Phù h?p v?i: Các bu?i ti?c, làm quà bi?u ??c s?n bi?n.
??c ?i?m v?n hóa: S?n v?t quý c?a vùng bi?n ?à N?ng, th? hi?n s? phong phú c?a h?i s?n ??a ph??ng.', 
N'Gói', N'?à N?ng'),

('SP006', N'Cá bò khô', 3, 320000.00, 50, 
N'Gi?i thi?u chung: Cá bò khô ?à N?ng th??ng ???c t?m gia v? v?a ?n (cay, m?n, ng?t) r?i ph?i khô ho?c s?y. Th?t cá dai, ng?t, th?m mùi gia v?.
Thành ph?n: Cá bò t??i, gia v? (???ng, mu?i, ?t, t?i...).
Kh?i l??ng: 1 kg.
Công d?ng: ?n li?n, n??ng ho?c chiên s?. Món ?n v?t, m?i nh?u h?p d?n.
Phù h?p v?i: Gi?i tr?, dân v?n phòng, ng??i thích ?n v?t.
??c ?i?m v?n hóa: ??c s?n ti?n l?i c?a ?à N?ng, d? dàng mang theo và th??ng th?c.', 
N'Gói', N'?à N?ng'),

('SP007', N'Trà sâm d?a', 4, 80000.00, 100, 
N'Gi?i thi?u chung: Trà sâm d?a ?à N?ng là lo?i trà ph? bi?n, k?t h?p h??ng v? c?a trà xanh, lá d?a và ?ôi khi có thêm chút h??ng li?u sâm ?? t?o mùi th?m ??c tr?ng. Trà có màu xanh vàng, v? chát nh?, h??ng th?m thoang tho?ng.
Thành ph?n: Trà xanh, lá d?a, h??ng sâm t? nhiên ho?c t?ng h?p.
Kh?i l??ng: 250g.
Công d?ng: Gi?i khát, giúp t?nh táo, th? giãn.
Phù h?p v?i: M?i ng??i, ??c bi?t nh?ng ai thích h??ng v? trà nh? nhàng, th?m mát.
??c ?i?m v?n hóa: Th?c u?ng quen thu?c trong ??i s?ng hàng ngày c?a ng??i dân ?à N?ng và mi?n Trung.', 
N'Gói', N'?à N?ng'),

('SP008', N'Trà hoa lài', 4, 95000.00, 90, 
N'Gi?i thi?u chung: Trà hoa lài (hoa nhài) ?à N?ng ???c ??p h??ng t? hoa lài t??i t? nhiên vào trà xanh ch?t l??ng. Trà có h??ng th?m thanh khi?t, quy?n r? c?a hoa lài, v? trà ??m ?à.
Thành ph?n: Trà xanh, hoa lài t??i.
Kh?i l??ng: 200g.
Công d?ng: Giúp th? giãn tinh th?n, gi?m stress, t?t cho tiêu hóa, làm ??p da.
Phù h?p v?i: Ng??i yêu thích h??ng th?m t? nhiên, ph? n?.
??c ?i?m v?n hóa: Vi?c ??p trà hoa lài là m?t ngh? thu?t truy?n th?ng, mang l?i th?c u?ng tinh t?.', 
N'Gói', N'?à N?ng'),

('SP009', N'Bánh tráng Túy Loan', 5, 100000.00, 100, 
N'Gi?i thi?u chung: Bánh tráng Túy Loan là ??c s?n n?i ti?ng c?a vùng ??t Túy Loan, ?à N?ng. ???c làm th? công t? g?o ngon, bánh có ?? d?o v?a ph?i, v? th?m ??c tr?ng và d? ?n.
Thành ph?n: G?o t?, mè, mu?i, n??c s?ch.
Kh?i l??ng: 500g.
Công d?ng: Dùng ?? cu?n th?t, rau s?ng, ch?m m?m nêm ho?c n??c t??ng; là món ?n dân dã và ti?n l?i trong b?a ?n gia ?ình.
Phù h?p v?i: Ng??i yêu thích món ?n truy?n th?ng, thích ?n kèm bánh tráng cu?n.
??c ?i?m v?n hóa: Bánh tráng Túy Loan g?n li?n v?i làng ngh? truy?n th?ng lâu ??i, là ni?m t? hào v?n hóa ?m th?c c?a ng??i dân ??a ph??ng.',
N'B?ch', N'?à N?ng'),

('SP010', N'Rong bi?n M? Khê', 6, 70000.00, 170, 
N'Gi?i thi?u chung: Rong bi?n M? Khê là ??c s?n n?i ti?ng t?i vùng bi?n M? Khê, ?à N?ng. ???c khai thác t? nhiên và ch? bi?n theo ph??ng pháp truy?n th?ng, rong bi?n gi? ???c h??ng v? thanh mát và giá tr? dinh d??ng cao.  
Thành ph?n: Rong bi?n t??i 100%.  
Kh?i l??ng: 200g.  
Công d?ng: Dùng ?? ch? bi?n các món ?n nh? canh rong bi?n, salad, ho?c ?n tr?c ti?p sau khi rang giòn; t?t cho s?c kh?e và h? tr? tiêu hóa.  
Phù h?p v?i: Ng??i ?n chay, ng??i quan tâm ??n s?c kh?e và dinh d??ng t? nhiên.  
??c ?i?m v?n hóa: Rong bi?n M? Khê ph?n ánh nét ??c tr?ng ?m th?c ven bi?n mi?n Trung, là món quà ý ngh?a cho du khách khi ghé th?m ?à N?ng.', 
N'B?ch', N'?à N?ng'),

('SP011', N'T??ng cá chép Non N??c', 7, 500000.00, 40, 
N'Gi?i thi?u chung: T??ng cá chép ???c ch? tác t? ?á c?m th?ch Non N??c (Ng? Hành S?n, ?à N?ng) b?i các ngh? nhân làng ?á m? ngh? Non N??c. Cá chép hóa r?ng là bi?u t??ng c?a s? may m?n, kiên trì và thành công.
Thành ph?n: ?á c?m th?ch t? nhiên.
Ch?t li?u: ?á.
Kích th??c: V?a ph?i.
Công d?ng: Trang trí, v?t ph?m phong th?y mang l?i may m?n, tài l?c.
Phù h?p v?i: Doanh nhân, ng??i mu?n c?u may m?n, trang trí nhà c?a, v?n phòng.
??c ?i?m v?n hóa: Làng ?á Non N??c có l?ch s? h?n 400 n?m, s?n ph?m ?á m? ngh? là ni?m t? hào c?a ?à N?ng. T??ng cá chép mang ý ngh?a v?n hóa sâu s?c.', 
N'T??ng/Cái', N'?à N?ng'),

('SP012', N'T??ng ??c M? Non N??c', 7, 1500000.00, 40, 
N'Gi?i thi?u chung: T??ng ??c M? Non N??c ???c ch? tác công phu t? ?á c?m th?ch t? nhiên t?i làng ?á m? ngh? Non N??c, ?à N?ng. T??ng th? hi?n hình ?nh ??c M? hi?n t?, mang ??n c?m giác an lành và thiêng liêng cho không gian tr?ng bày.
Thành ph?n: ?á c?m th?ch t? nhiên, ch?t l??ng cao.
Ch?t li?u: ?á nguyên kh?i.
Kích th??c: L?n.
Công d?ng: Là v?t ph?m trang trí thiêng liêng, th??ng ??t t?i phòng th?, nhà th?, tu vi?n, ho?c các không gian tâm linh ?? c?u nguy?n, t?nh tâm.
Phù h?p v?i: Ng??i theo ??o Công giáo, các gia ?ình mu?n bài trí không gian th? ph??ng trang nghiêm.
??c ?i?m v?n hóa: Là s?n ph?m ?iêu kh?c ??c tr?ng c?a làng ngh? Non N??c – n?i l?u gi? và phát tri?n ngh? thu?t ch?m kh?c ?á h?n 400 n?m, g?n li?n v?i ??i s?ng tâm linh và tín ng??ng ng??i Vi?t.',
N'T??ng/Cái', N'?à N?ng'),


('SP013', N'Móc khóa c?u R?ng', 8, 35000.00, 180, 
N'Gi?i thi?u chung: Móc khóa có hình ?nh ho?c mô hình thu nh? c?a C?u R?ng, m?t bi?u t??ng ki?n trúc hi?n ??i và ??c ?áo c?a ?à N?ng.
Thành ph?n: Kim lo?i, nh?a, mica.
Ch?t li?u: Thay ??i theo s?n ph?m.
Kích th??c: Nh? g?n.
Công d?ng: G?n chìa khóa, quà l?u ni?m.
Phù h?p v?i: Du khách, ng??i dân ?à N?ng.
??c ?i?m v?n hóa: Ghi d?u ?n v? m?t công trình bi?u t??ng c?a thành ph? ?à N?ng n?ng ??ng và phát tri?n.', 
N'Cái', N'?à N?ng'),

('SP014', N'Túi v?i hình c?u Vàng', 8, 95000.00, 100, 
N'Gi?i thi?u chung: Túi v?i canvas ho?c tote in hình C?u Vàng (Bà Nà Hills), m?t ?i?m du l?ch n?i ti?ng th? gi?i c?a ?à N?ng.
Thành ph?n: V?i canvas, v?i b?.
Ch?t li?u: V?i.
Công d?ng: ??ng ??, ph? ki?n th?i trang, quà l?u ni?m.
Phù h?p v?i: Du khách, ng??i yêu thích th?i trang ti?n d?ng.
??c ?i?m v?n hóa: C?u Vàng là m?t k? quan ki?n trúc, túi v?i là món quà l?u ni?m th?i trang và th?c t?.', 
N'Cái', N'?à N?ng'),

('SP015', N'Tinh d?u s? chanh', 9, 150000.00, 70, 
N'Gi?i thi?u chung: Tinh d?u s? chanh ?à N?ng (th??ng g?i là s? h??ng) có mùi th?m n?ng ?m, t??i mát ??c tr?ng c?a s? và chanh. ???c s? d?ng r?ng rãi ?? xông h??ng, kh? mùi và ?u?i côn trùng.
Thành ph?n: 100% tinh d?u s? chanh nguyên ch?t.
Ch?t li?u: L?ng, ??ng trong chai th?y tinh.
Kh?i l??ng: 100ml.
Công d?ng: Kh? mùi hôi, xua ?u?i mu?i và côn trùng, làm s?ch không khí, gi?m stress, sát khu?n.
Phù h?p v?i: Các gia ?ình, v?n phòng, spa, nhà hàng.
??c ?i?m v?n hóa: S? là cây gia v? quen thu?c, tinh d?u s? chanh là ?ng d?ng hi?n ??i mang l?i nhi?u l?i ích.', 
N'Chai', N'?à N?ng'),

('SP016', N'Tinh d?u b?c hà', 9, 130000.00, 75, 
N'Gi?i thi?u chung: Tinh d?u b?c hà ?à N?ng ???c chi?t xu?t t? lá b?c hà t??i, có h??ng th?m a cay the mát, s?ng khoái.
Thành ph?n: 100% tinh d?u b?c hà nguyên ch?t.
Ch?t li?u: L?ng, ??ng trong chai th?y tinh.
Kh?i l??ng: 100ml.
Công d?ng: Giúp t?nh táo, t?p trung, gi?m bu?n nôn, say tàu xe, thông m?i, gi?m ng?a do côn trùng c?n, xua ?u?i chu?t.
Phù h?p v?i: Ng??i c?n s? t?nh táo, ng??i hay b? say xe, gia ?ình mu?n không gian th?m mát.
??c ?i?m v?n hóa: B?c hà là cây th?o d??c ph? bi?n, tinh d?u b?c hà mang l?i c?m giác t??i m?i, n?ng ??ng c?a thành ph? bi?n.', 
N'Chai', N'?à N?ng'),

('SP017', N'R??u g?o', 10, 85000.00, 60, 
N'Gi?i thi?u chung: R??u g?o ?à N?ng c?ng ???c s?n xu?t theo ph??ng pháp truy?n th?ng, s? d?ng ngu?n n??c và g?o ??a ph??ng, mang h??ng v? ??c tr?ng c?a vùng.
Thành ph?n: G?o, men r??u.
Ch?t li?u: R??u ??ng trong chai.
Kh?i l??ng: 1 lít.
Công d?ng: Dùng trong ?m th?c, giao ti?p.
Phù h?p v?i: Ng??i tr??ng thành, s? d?ng có trách nhi?m.
??c ?i?m v?n hóa: R??u g?o là m?t ph?n c?a v?n hóa ?m th?c ??a ph??ng.', 
N'Chai', N'?à N?ng'),

--Hu?
('SP018', N'Bánh bèo', 11, 35000.00, 100, 
N'Gi?i thi?u chung: Bánh bèo Hu? là món ?n thanh ??m, tinh t?, ??c tr?ng c?a ?m th?c C? ?ô. Bánh ???c làm t? b?t g?o xay m?n, h?p trong nh?ng chén nh?, m?t bánh lõm xu?ng ch?a nhân tôm cháy vàng r?m, thêm chút da heo chiên giòn và m? hành.
Thành ph?n: B?t g?o, tôm t??i, da heo, hành lá, gia v? truy?n th?ng.
Kh?i l??ng: Th??ng ph?c v? theo khay.
Công d?ng: Món ?n v?t, món khai v? nh? nhàng, th??ng th?c h??ng v? ??c tr?ng c?a Hu?.
Phù h?p v?i: M?i l?a tu?i, ng??i yêu thích ?m th?c truy?n th?ng, du khách mu?n khám phá v?n hóa Hu?.
??c ?i?m v?n hóa: Bánh bèo th? hi?n s? khéo léo, t? m? c?a ng??i ph? n? Hu?, là m?t ph?n không th? thi?u trong các b?a ?n gia ?ình và l? h?i.', 
N'Ph?n', N'Hu?'),

('SP019', N'Bánh b?t l?c', 11, 45000.00, 100, 
N'Gi?i thi?u chung: Bánh b?t l?c Hu? có hai lo?i chính là bánh b?t l?c gói lá chu?i và bánh b?t l?c tr?n. V? bánh trong veo, dai m?m làm t? b?t n?ng, nhân tôm th?t ??m ?à, th??ng kèm theo n??c ch?m chua ng?t ??c tr?ng.
Thành ph?n: B?t n?ng, tôm, th?t ba ch?, m?c nh?, gia v?, lá chu?i (??i v?i lo?i gói).
Công d?ng: Món ?n v?t, món chính, d? ?n và ???c nhi?u ng??i yêu thích.
Phù h?p v?i: M?i l?a tu?i, ??c bi?t là nh?ng ng??i thích món ?n có ?? dai và h??ng v? ??m ?à.
??c ?i?m v?n hóa: Là món ?n bình d? nh?ng ch?a ??ng nét tinh túy c?a ?m th?c Hu?, th??ng xu?t hi?n trong các gánh hàng rong và nhà hàng ??c s?n.', 
N'??a', N'Hu?'),
 
('SP020', N'Bún bò', 11, 55000.00, 80, 
N'Gi?i thi?u chung: Bún bò Hu? là m?t trong nh?ng món ?n n?i ti?ng nh?t c?a Vi?t Nam, mang h??ng v? ??c tr?ng cay n?ng, ??m ?à. N??c dùng ???c ninh t? x??ng bò, thêm m?m ru?c, s? và ?t. S?i bún to, ?n kèm th?t bò, ch? cua, ti?t heo.
Thành ph?n: Bún, th?t bò (b?p, n?m, gân), ch? cua, ti?t heo, m?m ru?c, s?, ?t, rau s?ng ?n kèm.
Công d?ng: Món ?n chính cung c?p nhi?u n?ng l??ng, làm ?m c? th?.
Phù h?p v?i: Ng??i thích h??ng v? ??m ?à, cay n?ng, du khách mu?n tr?i nghi?m ?m th?c Hu? ?ích th?c.
??c ?i?m v?n hóa: Món ?n bi?u t??ng c?a Hu?, ph?n ánh s? phong phú và c?u k? trong ?m th?c cung ?ình x?a và dân gian.', 
N'Tô', N'Hu?'),

('SP021', N'Trà Cung ?ình', 12, 150000.00, 80, 
N'Gi?i thi?u chung: Trà Cung ?ình Hu? là lo?i trà th?o d??c quý, ???c bào ch? t? nhi?u lo?i th?o m?c thiên nhiên theo công th?c c?a các ng? y x?a trong cung ?ình Hu?. Trà có h??ng th?m d?u, v? ng?t thanh, t?t cho s?c kh?e.
Thành ph?n: Atiso, cúc hoa, hoài s?n, ??ng sâm, ??i táo, h?ng táo, cam th?o b?c, hoa hòe, th?o quy?t minh, kh? qua, k? t?, v?i n?, tim sen và các th?o d??c khác.
Kh?i l??ng: 500g.
Công d?ng: Thanh nhi?t, gi?i ??c, an th?n, giúp ng? ngon, t?t cho tiêu hóa và tim m?ch.
Phù h?p v?i: M?i l?a tu?i, ??c bi?t ng??i l?n tu?i, ng??i quan tâm ??n s?c kh?e.
??c ?i?m v?n hóa: S?n ph?m k? th?a tinh hoa y h?c c? truy?n c?a Cung ?ình Hu?, là th?c u?ng tao nhã và b? d??ng.', 
N'Gói', N'Hu?'),

('SP022', N'Trà hoa atiso', 12, 120000.00, 70, 
N'Gi?i thi?u chung: Trà hoa atiso Hu? ???c làm t? hoa atiso t??i s?y khô, gi? nguyên ???c d??ng ch?t. Trà có v? ng?t nh? t? nhiên, h??ng th?m d? ch?u.
Thành ph?n: 100% hoa atiso.
Kh?i l??ng: 200g
Công d?ng: Mát gan, gi?i ??c, l?i ti?u, t?t cho h? tiêu hóa, gi?m cholesterol.
Phù h?p v?i: Ng??i có v?n ?? v? gan, nóng trong ng??i, ng??i mu?n thanh l?c c? th?.
??c ?i?m v?n hóa: Hu? là m?t trong nh?ng vùng tr?ng atiso, s?n ph?m trà hoa atiso th? hi?n s? ?u ?ãi c?a thiên nhiên và k? thu?t ch? bi?n c?a ng??i dân ??a ph??ng.', 
N'Gói', N'Hu?'),

('SP023', N'Tinh d?u tràm', 13, 180000.00, 60, 
N'Gi?i thi?u chung: Tinh d?u tràm Hu? (??c bi?t là tràm gió) n?i ti?ng v?i ?? tinh khi?t cao, ???c chi?t xu?t t? lá cây tràm t? nhiên. Có mùi th?m ??c tr?ng, tính ?m, nhi?u công d?ng cho s?c kh?e.
Thành ph?n: 100% tinh d?u tràm nguyên ch?t.
Ch?t li?u: L?ng, ??ng trong chai th?y tinh t?i màu.
Kh?i l??ng: 100ml.
Công d?ng: Gi? ?m c? th?, phòng và tr? c?m cúm, ho, s? m?i (??c bi?t cho tr? em và ph? n? mang thai), xua ?u?i côn trùng, gi?m ?au nh?c c? kh?p, làm s?ch không khí.
Phù h?p v?i: M?i gia ?ình, ??c bi?t gia ?ình có tr? nh?, ng??i già.
??c ?i?m v?n hóa: S?n ph?m truy?n th?ng lâu ??i c?a vùng ??t Hu?, g?n li?n v?i vi?c ch?m sóc s?c kh?e c?ng ??ng.', 
N'Chai', N'Hu?'),

('SP024', N'Tinh d?u hoa sen', 13, 350000.00, 40, 
N'Gi?i thi?u chung: Tinh d?u hoa sen Hu? ???c chi?t xu?t t? hoa sen tr?ng t?i các h? quanh Kinh thành Hu?. Mang h??ng th?m thanh khi?t, quý phái, có tác d?ng th? giãn, làm ??p.
Thành ph?n: 100% tinh d?u hoa sen nguyên ch?t.
Ch?t li?u: L?ng, ??ng trong chai th?y tinh.
Kh?i l??ng: 100ml.
Công d?ng: Giúp th? giãn, gi?m c?ng th?ng, d??ng da, t?o h??ng th?m cho c? th? và không gian.
Phù h?p v?i: Ng??i yêu thích h??ng th?m t? nhiên, ng??i làm trong l?nh v?c spa, tr? li?u.
??c ?i?m v?n hóa: Hoa sen là bi?u t??ng c?a Hu?, tinh d?u hoa sen là s?n ph?m cao c?p, th? hi?n s? tinh túy c?a loài hoa này.', 
N'Chai', N'Hu?'),

('SP025', N'H??ng tr?m', 14, 100000.00, 100, 
N'Gi?i thi?u chung: H??ng tr?m Hu? ???c làm t? b?t g? tr?m h??ng t? nhiên ho?c b?t cây dó b?u có tr?m, k?t h?p v?i các lo?i th?o m?c khác theo công th?c truy?n th?ng. H??ng có mùi th?m d?u nh?, thanh khi?t, l?u h??ng lâu.
Thành ph?n: B?t tr?m h??ng, b?t cây bài, keo b?i l?i.
Ch?t li?u: Que h??ng.
S? l??ng: 100 cây.
Công d?ng: Dùng trong th? cúng, thi?n ??nh, t?o không gian tâm linh thanh t?nh, giúp th? giãn.
Phù h?p v?i: Các gia ?ình, ??n chùa, ng??i th?c hành tâm linh.
??c ?i?m v?n hóa: Ngh? làm h??ng ? Hu? có l?ch s? lâu ??i, h??ng tr?m là m?t ph?n không th? thi?u trong ??i s?ng tâm linh c?a ng??i Hu?, ??c bi?t là làng h??ng Th?y Xuân.', 
N'Bó/H?p', N'Hu?'),

('SP026', N'H??ng qu?', 14, 70000.00, 120, 
N'Gi?i thi?u chung: H??ng qu? Hu? ???c làm t? b?t v? qu? t? nhiên, mang mùi th?m n?ng ?m ??c tr?ng c?a qu?.
Thành ph?n: B?t v? qu?, keo b?i l?i.
Ch?t li?u: Que h??ng.
S? l??ng: 100 cây.
Công d?ng: Dùng trong th? cúng, giúp kh? mùi, làm ?m không gian, xua ?u?i côn trùng.
Phù h?p v?i: Các gia ?ình, ??c bi?t trong mùa l?nh ho?c n?i ?m th?p.
??c ?i?m v?n hóa: T?n d?ng ngu?n nguyên li?u qu? s?n có, h??ng qu? mang ??n s? ?m áp cho không gian th? t?.', 
N'Bó', N'Hu?'),

('SP027', N'Tôm khô', 15, 250000.00, 50, 
N'Gi?i thi?u chung: Tôm khô Hu? ???c làm t? tôm t??i ?ánh b?t t? nhiên, qua quá trình ph?i s?y th? công gi? ???c v? ng?t t? nhiên và màu ?? h?ng ??p m?t.
Thành ph?n: 100% tôm ??t t? nhiên.
Kh?i l??ng: 1 kg.
Công d?ng: Dùng ?? n?u canh, làm g?i, rim ho?c ?n li?n. Cung c?p nhi?u ??m và canxi.
Phù h?p v?i: Các bà n?i tr?, ng??i thích ch? bi?n món ?n ngon, làm quà bi?u.
??c ?i?m v?n hóa: S?n ph?m truy?n th?ng c?a vùng ??m phá Tam Giang - C?u Hai, th? hi?n s? trù phú c?a thiên nhiên Hu?.', 
N'Gói', N'Hu?'),

('SP028', N'Cá c?m khô', 15, 180000.00, 60, 
N'Gi?i thi?u chung: Cá c?m khô Hu?, ??c bi?t là cá c?m sông H??ng, có v? ng?t bùi, ???c ph?i khô t? nhiên, gi? nguyên h??ng v?. Có nhi?u lo?i nh? cá c?m m?m, cá c?m s?c.
Thành ph?n: 100% cá c?m t??i.
Kh?i l??ng: 1 kg.
Công d?ng: Dùng ?? kho tiêu, chiên giòn, n?u canh chua, làm g?i ho?c ?n v?t.
Phù h?p v?i: Các gia ?ình, ng??i thích món ?n dân dã, ??m ?à h??ng v?.
??c ?i?m v?n hóa: ??c s?n c?a vùng sông n??c Hu?, g?n li?n v?i b?a c?m gia ?ình truy?n th?ng.', 
N'Gói', N'Hu?'),

('SP029', N'Nón lá bài th? Hu?', 16, 80000.00, 100, 
N'Gi?i thi?u chung: Nón lá Hu?, ??c bi?t là nón bài th?, là bi?u t??ng c?a s? duyên dáng, d?u dàng c?a ng??i ph? n? Hu?. Nón ???c làm th? công t? lá nón (lá c?), vành tre, có ?? m?ng, nh? và thanh thoát. Nón bài th? có hình ?nh ho?c nh?ng câu th? lãng m?n ???c ép gi?a hai l?p lá.
Thành ph?n: Lá nón, tre, ch? c??c.
Ch?t li?u: Lá t? nhiên, tre.
Kích th??c: ???ng kính kho?ng 40 cm.
Công d?ng: Che n?ng, che m?a, ph? ki?n th?i trang, quà l?u ni?m.
Phù h?p v?i: Ph? n? m?i l?a tu?i, du khách.
??c ?i?m v?n hóa: Nón lá là m?t ph?n c?a trang ph?c truy?n th?ng Vi?t Nam, nón lá Hu? mang nét ??c tr?ng riêng, th? hi?n s? tài hoa, khéo léo c?a các ngh? nhân làng nón nh? Tây H?, D? Lê.', 
N'Cái', N'Hu?'),

('SP030', N'Nón lá sen Hu?', 16, 80000.00, 100, 
N'Gi?i thi?u chung: Nón lá sen Hu? là bi?n t?u ??c ?áo c?a nón lá truy?n th?ng, ???c trang trí v?i hình ?nh hoa sen – bi?u t??ng c?a s? thanh cao, tinh khi?t trong v?n hóa Vi?t. M?i chi?c nón ???c làm th? công t? m?, mang ??m h?i th? ngh? thu?t và nét duyên dáng c?a ng??i ph? n? Hu?.
Thành ph?n: Lá nón, tre, ch? c??c, gi?y ngh? thu?t (in hình sen).
Ch?t li?u: Lá t? nhiên, tre, trang trí h?a ti?t sen.
Kích th??c: ???ng kính kho?ng 40 cm.
Công d?ng: Che n?ng, che m?a, ph? ki?n th?i trang, quà t?ng ngh? thu?t mang tính bi?u t??ng.
Phù h?p v?i: Du khách, ng??i yêu thích s?n ph?m th? công truy?n th?ng có tính th?m m? cao.
??c ?i?m v?n hóa: Hoa sen g?n li?n v?i v?n hóa Hu? – c? ?ô c?a Vi?t Nam. Nón lá sen không ch? là s?n ph?m th? công mà còn là bi?u t??ng v?n hóa, ph?n ánh v? ??p m?c m?c mà thanh cao c?a vùng ??t kinh k?.', 
N'Cái', N'Hu?'),

('SP031', N'Áo c? ph?c Hu?', 17, 500000.00, 20, 
N'Gi?i thi?u chung: Áo c? ph?c Hu? (áo dài ng? thân, áo t?c, áo m?nh ph?...) là trang ph?c truy?n th?ng mang ??m d?u ?n l?ch s? và v?n hóa c?a C? ?ô Hu?. ???c may t? các ch?t li?u nh? g?m, l?a v?i ki?u dáng trang tr?ng, màu s?c và hoa v?n tinh t?.
Thành ph?n: V?i g?m, l?a, t? t?m.
Ch?t li?u: V?i.
Kích th??c: May theo size ho?c may ?o.
Công d?ng: M?c trong các d?p l? h?i, s? ki?n v?n hóa, ch?p ?nh, bi?u di?n ngh? thu?t, th? hi?n s? trân tr?ng v?n hóa truy?n th?ng.
Phù h?p v?i: Ng??i yêu v?n hóa Hu?, ng??i tham gia các ho?t ??ng v?n hóa, ngh? s?.
??c ?i?m v?n hóa: Là di s?n trang ph?c cung ?ình và dân gian Hu?, th? hi?n s? trang nghiêm, thanh l?ch và nét ??p c? x?a.', 
N'B?/Cái', N'Hu?'),

('SP032', N'Áo dài Hu?', 17, 200000.00, 20, 
N'Gi?i thi?u chung: Áo dài Hu? là bi?u t??ng c?a nét ??p d?u dàng, thanh thoát và tinh t? c?a ng??i ph? n? x? Hu?. Áo có thi?t k? ôm dáng v?i tà dài, th??ng ???c may t? v?i l?a ho?c voan nh?, t?o c?m giác m?m m?i và thanh l?ch. Áo dài Hu? không ch? là trang ph?c truy?n th?ng mà còn là hi?n thân c?a b?n s?c v?n hóa c? ?ô.
Thành ph?n: V?i l?a, v?i voan, t? t?m.
Ch?t li?u: V?i m?m nh?, thoáng mát.
Kích th??c: May s?n theo size ho?c ??t may theo s? ?o.
Công d?ng: M?c trong d?p l?, T?t, ?i h?c, ?i làm, d? ti?c, bi?u di?n v?n hóa ho?c làm quà t?ng l?u ni?m.
Phù h?p v?i: N? sinh, giáo viên, nhân viên công s?, ng??i yêu trang ph?c truy?n th?ng.
??c ?i?m v?n hóa: Áo dài Hu? mang ??m nét d?u dàng và kín ?áo c?a ng??i con gái c? ?ô, là bi?u t??ng th?i trang mang tính bi?u c?m và ??y t? hào c?a v?n hóa Vi?t Nam.', 
N'B?/Cái', N'Hu?'),

('SP033', N'Tranh thêu tay nón lá hoa sen Hu?', 18, 2500000.00, 15, 
N'Gi?i thi?u chung: Tranh thêu tay "Nón lá hoa sen Hu?" là s? k?t h?p ??c ?áo gi?a hai bi?u t??ng v?n hóa ??c tr?ng c?a C? ?ô – nón lá và hoa sen. T?ng ???ng kim m?i ch? ???c th?c hi?n th? công b?i ngh? nhân Hu?, t?o nên hình ?nh m?m m?i, s?ng ??ng và ??y ý ngh?a.
Thành ph?n: V?i l?a cao c?p, ch? t? t?m ho?c ch? DMC nh?p kh?u.
Ch?t li?u: V?i thêu, ch? màu.
Kích th??c: 70 x 30 cm.
Công d?ng: Là v?t ph?m trang trí n?i th?t cao c?p, quà t?ng ngh? thu?t mang ??m b?n s?c v?n hóa.
Phù h?p v?i: Ng??i yêu v?n hóa Hu?, ng??i c?n quà t?ng sang tr?ng và ý ngh?a.
??c ?i?m v?n hóa: Tranh th? hi?n v? ??p thanh tao c?a ng??i con gái Hu?, k?t h?p gi?a truy?n th?ng ngh? thêu và bi?u t??ng dân t?c – hoa sen và nón lá.', 
N'B?c', N'Hu?'),

('SP034', N'Tranh thêu tay chim công Hu?', 18, 2500000.00, 15, 
N'Gi?i thi?u chung: B?c tranh thêu tay "Chim công Hu?" là tác ph?m ngh? thu?t cao c?p, t??ng tr?ng cho s? quy?n quý, phú quý và thanh cao. Hình ?nh chim công v?i b? lông r?c r? ???c tái hi?n s?ng ??ng qua t?ng m?i thêu công phu c?a ngh? nhân Hu?.
Thành ph?n: V?i l?a t? nhiên, ch? t? t?m/ DMC có ?? b?n và bóng cao.
Ch?t li?u: V?i thêu, ch? màu ngh? thu?t.
Kích th??c: 70 x 30 cm.
Công d?ng: Treo trang trí, quà t?ng ??i tác, quà bi?u t?t, k? ni?m mang ý ngh?a phong th?y.
Phù h?p v?i: Ng??i yêu ngh? thu?t truy?n th?ng, doanh nhân, gia ?ình mong c?u th?nh v??ng.
??c ?i?m v?n hóa: Chim công là hình ?nh quen thu?c trong m? thu?t cung ?ình x?a, t??ng tr?ng cho s? cao quý và hòa h?p, ???c tái hi?n tinh t? qua bàn tay thêu tài hoa c?a ngh? nhân Hu?.', 
N'B?c', N'Hu?'),

('SP035', N'?m trà men lam', 19, 800000.00, 30, 
N'Gi?i thi?u chung: ?m trà men lam Hu? là s?n ph?m g?m s? ??c tr?ng, v?i n??c men lam c? ?i?n, h?a ti?t v? tay tinh t? th??ng là r?ng, ph??ng, hoa lá cách ?i?u. ?m ???c làm t? ??t sét cao c?p, nung ? nhi?t ?? cao.
Thành ph?n: ??t sét, men lam.
Ch?t li?u: G?m s?.
Bao g?m: B? ?m trà th??ng g?m 1 ?m, 6 chén, ??a lót.
Công d?ng: Dùng ?? pha trà, trang trí, làm quà t?ng.
Phù h?p v?i: Ng??i thích trà ??o, s?u t?m ?? g?m, yêu v?n hóa truy?n th?ng.
??c ?i?m v?n hóa: G?m men lam là m?t dòng g?m s? n?i ti?ng c?a Hu?, ph?n ánh nét ??p c? kính, tao nhã trong v?n hóa th??ng trà c?a ng??i Vi?t.', 
N'B?', N'Hu?'),

('SP036', N'Tò he', 20, 25000.00, 200, 
N'Gi?i thi?u chung: Tò he Hu? là ?? ch?i dân gian ???c n?n t? b?t g?o n?p pha màu t? nhiên (t? lá cây, c? qu?). Các ngh? nhân t?o hình thành các con v?t, nhân v?t l?ch s?, hoa lá ng? ngh?nh, ??y màu s?c.
Thành ph?n: B?t g?o n?p, màu th?c ph?m t? nhiên.
Ch?t li?u: B?t n?n.
Kích th??c: Nh?, c?m tay.
Công d?ng: ?? ch?i cho tr? em, quà l?u ni?m dân gian.
Phù h?p v?i: Tr? em, du khách mu?n tìm hi?u v?n hóa truy?n th?ng.
??c ?i?m v?n hóa: Tò he là m?t nét v?n hóa dân gian ??c s?c, th? hi?n s? khéo léo và sáng t?o c?a ng??i th? th? công Hu?, th??ng xu?t hi?n trong các d?p l? h?i.', 
N'Con/Cái', N'Hu?'),

('SP037', N'Móc khóa ??i N?i Hu?', 20, 40000.00, 150, 
N'Gi?i thi?u chung: Móc khóa in hình ho?c t?o hình các bi?u t??ng c?a ??i N?i Hu? nh? Ng? Môn, ?i?n Thái Hòa, C?u ??nh... Là món quà l?u ni?m nh? g?n, ý ngh?a.
Thành ph?n: Kim lo?i, nh?a, mica, g? (tùy lo?i).
Ch?t li?u: Thay ??i theo s?n ph?m.
Kích th??c: Nh? g?n.
Công d?ng: G?n chìa khóa, trang trí túi xách, ba lô, làm quà k? ni?m.
Phù h?p v?i: Du khách, h?c sinh, sinh viên.
??c ?i?m v?n hóa: Mang hình ?nh c?a di s?n v?n hóa th? gi?i ??i N?i Hu?, giúp du khách ghi nh? chuy?n th?m C? ?ô.', 
N'Cái', N'Hu?'),

('SP038', N'R??u Minh M?ng', 21, 350000.00, 50, 
N'Gi?i thi?u chung: R??u Minh M?ng là lo?i r??u thu?c n?i ti?ng c?a Hu?, ???c ngâm t? nhi?u lo?i th?o d??c quý theo bài thu?c gia truy?n c?a vua Minh M?ng. R??u có tác d?ng b?i b? s?c kh?e, t?ng c??ng sinh l?c.
Thành ph?n: G?o n?p, men r??u, các lo?i th?o d??c quý (nhân sâm, dâm d??ng ho?c, ba kích, ?? tr?ng, k? t?...).
Ch?t li?u: R??u ngâm trong bình sành ho?c th?y tinh.
Kh?i l??ng: 750ml.
Công d?ng: B?i b? s?c kh?e, tráng d??ng b? th?n, m?nh gân c?t. Dùng ?i?u ??.
Phù h?p v?i: Nam gi?i tu?i trung niên, ng??i c?n b?i b? s?c kh?e (theo ch? d?n).
??c ?i?m v?n hóa: G?n li?n v?i câu chuy?n l?ch s? v? vua Minh M?ng, là m?t trong nh?ng "Danh t?u" c?a ??t C? ?ô.', 
N'Chai', N'Hu?'),

('SP039', N'R??u g?o Hu?', 21, 90000.00, 70, 
N'Gi?i thi?u chung: R??u g?o Hu? ???c n?u th? công t? g?o n?p ho?c g?o t? theo ph??ng pháp truy?n th?ng. R??u có v? êm, h??ng th?m ??c tr?ng c?a g?o.
Thành ph?n: G?o, men r??u truy?n th?ng.
Ch?t li?u: R??u ??ng trong chai.
Kh?i l??ng: 1 lít.
Công d?ng: Dùng trong các b?a ?n, l? ti?c, ngâm các lo?i thu?c.
Phù h?p v?i: Ng??i tr??ng thành, s? d?ng có ch?ng m?c.
??c ?i?m v?n hóa: R??u g?o là th?c u?ng quen thu?c trong ??i s?ng ng??i dân Hu?, g?n li?n v?i các sinh ho?t c?ng ??ng.', 
N'Chai', N'Hu?'),

--Qu?ng nam
('SP040', N'Mì Qu?ng', 22, 45000.00, 120, 
N'Gi?i thi?u chung: Mì Qu?ng là món ?n ??c tr?ng và linh h?n c?a ?m th?c Qu?ng Nam. S?i mì vàng óng t? b?t g?o và ngh?, n??c dùng (nhân) ??m ?à t? th?t gà, tôm, th?t heo, tr?ng cút, ?n kèm bánh tráng mè n??ng giòn và rau s?ng.
Thành ph?n: S?i mì Qu?ng, th?t gà/heo/tôm, tr?ng cút, l?c rang, bánh tráng mè, rau s?ng (búp chu?i, c?i con, giá...).
Công d?ng: Món ?n chính, no lâu, h??ng v? phong phú.
Phù h?p v?i: M?i l?a tu?i, ng??i mu?n th??ng th?c ??c s?n Qu?ng Nam.
??c ?i?m v?n hóa: Mì Qu?ng không ch? là món ?n mà còn là nét v?n hóa, th? hi?n s? hào s?ng, m?c m?c c?a ng??i dân x? Qu?ng.', 
N'Tô', N'Qu?ng Nam'),

('SP041', N'Cao l?u', 22, 50000.00, 90, 
N'Gi?i thi?u chung: Cao l?u là món mì ??c s?n ch? có ? H?i An, Qu?ng Nam. S?i mì vàng, dai ???c làm t? g?o ngâm n??c tro, n??c dùng ??c bi?t t? gi?ng Bá L?. ?n kèm th?t xá xíu, da heo chiên giòn, rau s?ng.
Thành ph?n: S?i mì cao l?u, th?t xá xíu, da heo chiên giòn, giá tr?ng, rau th?m, n??c t??ng ??c bi?t.
Công d?ng: Món ?n chính, mang h??ng v? ??c ?áo không th? nh?m l?n.
Phù h?p v?i: Du khách ??n H?i An, ng??i mu?n khám phá ?m th?c ??c ?áo.
??c ?i?m v?n hóa: Món ?n g?n li?n v?i l?ch s? và v?n hóa c?a ph? c? H?i An, là s? giao thoa c?a nhi?u n?n v?n hóa.', 
N'Tô', N'Qu?ng Nam'),

('SP042', N'Bánh xèo', 22, 65000.00, 80, 
N'Gi?i thi?u chung: Bánh xèo Qu?ng Nam có kích th??c v?a ph?i, v? bánh vàng giòn r?m nh? b?t g?o pha v?i b?t ngh? và n??c c?t d?a. Nhân bánh g?m tôm, th?t ba ch?, giá ??. ?n kèm rau s?ng và n??c m?m chua ng?t.
Thành ph?n: B?t g?o, b?t ngh?, n??c c?t d?a, tôm, th?t ba ch?, giá ??, hành lá, rau s?ng, n??c m?m.
Công d?ng: Món ?n v?t ho?c món chính, h?p d?n b?i ?? giòn và h??ng v?.
Phù h?p v?i: M?i l?a tu?i, ??c bi?t trong nh?ng ngày se l?nh.
??c ?i?m v?n hóa: Món ?n dân dã, quen thu?c trong ??i s?ng ng??i dân Qu?ng Nam, th??ng ???c làm trong các d?p sum h?p gia ?ình.', 
N'Cái/??a', N'Qu?ng Nam'),

('SP043', N'N??c m?m C?a Khe', 23, 110000.00, 90, 
N'Gi?i thi?u chung: N??c m?m C?a Khe (Th?ng Bình, Qu?ng Nam) c?ng là m?t lo?i n??c m?m truy?n th?ng ???c làm t? cá c?m t??i, có h??ng v? th?m ngon, ?? ??m cao, màu s?c t? nhiên.
Thành ph?n: Cá c?m, mu?i bi?n.
Kh?i l??ng: 1 lít.
Công d?ng: Gia v? không th? thi?u trong b?a ?n, làm t?ng h??ng v? món ?n.
Phù h?p v?i: Các gia ?ình, ng??i trân tr?ng s?n ph?m truy?n th?ng.
??c ?i?m v?n hóa: S?n ph?m ??c tr?ng c?a làng ngh? n??c m?m C?a Khe, góp ph?n làm phong phú ?m th?c Qu?ng Nam.', 
N'Chai', N'Qu?ng Nam'),

('SP044', N'Bánh t? Qu?ng Nam', 24, 80000.00, 90, 
N'Gi?i thi?u chung: Bánh t? là món bánh truy?n th?ng c?a ng??i Qu?ng Nam, th??ng xu?t hi?n trong d?p T?t Nguyên ?án. Bánh có màu nâu s?m, v? ng?t d?u, th?m mùi g?ng, d?o dai t? n?p, t??ng tr?ng cho s? sum v?y, g?n k?t gia ?ình.
Thành ph?n: G?o n?p, ???ng m?t (ho?c ???ng nâu), g?ng t??i.
Kh?i l??ng: 100g.
Công d?ng: Dùng trong mâm c? T?t, làm quà bi?u, ?n ch?i kèm mè rang ho?c chiên lên.
Phù h?p v?i: Ng??i yêu thích ??c s?n truy?n th?ng, gia ?ình trong d?p l? T?t.
??c ?i?m v?n hóa: Là món bánh c? truy?n g?n v?i v?n hóa T?t x? Qu?ng, th? hi?n tinh th?n gìn gi? nét ??p ?m th?c dân gian.', 
N'Chi?c', N'Qu?ng Nam'),

('SP045', N'Trà xanh Qu?ng Nam', 25, 70000.00, 110, 
N'Gi?i thi?u chung: Trà xanh Qu?ng Nam, ??c bi?t t? các vùng trung du nh? Tiên Ph??c, có ch?t l??ng t?t, lá trà ???c sao th? công gi? ???c h??ng v? t? nhiên. N??c trà xanh, v? chát d?u, h?u ng?t.
Thành ph?n: 100% búp trà xanh t? nhiên.
Kh?i l??ng: 200g.
Công d?ng: Ch?ng oxy hóa, giúp t?nh táo, t?t cho tim m?ch, h? tr? gi?m cân.
Phù h?p v?i: Ng??i thích u?ng trà m?c, ng??i quan tâm ??n s?c kh?e.
??c ?i?m v?n hóa: Cây chè là m?t ph?n c?a nông nghi?p truy?n th?ng Qu?ng Nam, u?ng trà là m?t nét v?n hóa ??p.', 
N'Gói', N'Qu?ng Nam'),

('SP046', N'T??ng ?t xào DHFood', 26, 45000.00, 150, 
N'Gi?i thi?u chung: T??ng ?t xào DHFood là s?n ph?m ??m ch?t Qu?ng Nam, mang v? cay ??m, th?m l?ng mùi t?i và v? chua nh? t? cà chua. ???c ch? bi?n theo ph??ng pháp truy?n th?ng, gi? tr?n h??ng v? nguyên b?n.
Thành ph?n: ?t t??i, t?i, cà chua, ???ng, mu?i.
Kh?i l??ng: 200g.
Công d?ng: Dùng làm n??c ch?m cho mì Qu?ng, bánh bèo, cao l?u; có th? pha loãng ?? ??p ho?c nêm món ?n.
Phù h?p v?i: Ng??i yêu thích món cay truy?n th?ng, thích gia v? ??m ?à.
??c ?i?m v?n hóa: G?n li?n v?i ?m th?c mi?n Trung, ??c bi?t là các món ??c s?n x? Qu?ng nh? mì Qu?ng, cao l?u.', 
N'H?', N'Qu?ng Nam'),

('SP047', N'T??ng ?t xào Tri?u Phát', 26, 45000.00, 150, 
N'Gi?i thi?u chung: T??ng ?t xào Tri?u Phát ???c làm t? ?t chín ?? t??i, t?i ta và cà chua chín m?ng, mang ??n v? cay d?u và h?u v? ng?t nh?. S?n ph?m phù h?p v?i nhi?u kh?u v?, k? c? ng??i ?n cay v?a.
Thành ph?n: ?t t??i, t?i, cà chua, ???ng, mu?i.
Kh?i l??ng: 200g.
Công d?ng: Ch?m v?i nem n??ng, bánh tráng cu?n th?t heo, bún m?m nêm; có th? dùng làm n??c s?t tr?n.
Phù h?p v?i: Ng??i ?n cay nh?, yêu thích s? hài hòa gi?a cay và ng?t.
??c ?i?m v?n hóa: Là gia v? bi?n t?u t? t??ng ?t H?i An, phù h?p v?i nhu c?u kh?u v? ?a d?ng trong ?m th?c hi?n ??i.', 
N'H?', N'Qu?ng Nam'),

('SP048', N'Bình g?m Thanh Hà', 27, 450000.00, 35, 
N'Gi?i thi?u chung: Bình g?m Qu?ng Nam, ??c bi?t t? làng g?m Thanh Hà (H?i An) ho?c ?i?n Bàn, mang nét m?c m?c, dân dã. G?m ???c làm th? công t? ??t sét, nung b?ng lò c?i truy?n th?ng, có màu s?c t? nhiên c?a ??t nung.
Thành ph?n: ??t sét.
Ch?t li?u: G?m.
Kích th??c: V?a ph?i.
Công d?ng: C?m hoa, trang trí nhà c?a, s?u t?m.
Phù h?p v?i: Ng??i yêu thích v? ??p m?c m?c, truy?n th?ng, mu?n trang trí không gian theo phong cách vintage.
??c ?i?m v?n hóa: Làng g?m Thanh Hà có tu?i ??i hàng tr?m n?m, s?n ph?m g?m n?i ?ây ph?n ánh ??i s?ng và k? thu?t làm g?m truy?n th?ng c?a ng??i Qu?ng.', 
N'Cái/Bình', N'Qu?ng Nam'),

('SP049', N'L?ng ?èn H?i An', 28, 100000.00, 90, 
N'Gi?i thi?u chung: L?ng ?èn H?i An là bi?u t??ng r?c r? c?a ph? c?, ???c làm t? khung tre và b?c v?i l?a nhi?u màu s?c, ki?u dáng ?a d?ng (tròn, t?i, kim c??ng...).
Thành ph?n: Tre, v?i l?a ho?c g?m.
Ch?t li?u: Tre, v?i.
Công d?ng: Trang trí nhà c?a, quán xá, s? ki?n, l? h?i, quà l?u ni?m ??c tr?ng.
Phù h?p v?i: M?i ng??i, ??c bi?t là nh?ng ai mu?n mang không khí H?i An v? nhà.
??c ?i?m v?n hóa: L?ng ?èn là m?t ph?n không th? thi?u c?a không gian v?n hóa H?i An, ??c bi?t vào nh?ng ?êm r?m. Ngh? làm l?ng ?èn là m?t ngh? th? công truy?n th?ng n?i ti?ng.', 
N'Cái', N'Qu?ng Nam'),

('SP050', N'Móc khóa ph? c?', 29, 30000.00, 200, 
N'Gi?i thi?u chung: Móc khóa có hình ?nh các công trình ki?n trúc ??c tr?ng c?a Ph? c? H?i An nh? Chùa C?u, nhà c?, ho?c các bi?u t??ng v?n hóa H?i An.
Thành ph?n: Kim lo?i, g?, nh?a.
Ch?t li?u: Thay ??i theo s?n ph?m.
Kích th??c: Nh? g?n.
Công d?ng: G?n chìa khóa, quà l?u ni?m nh? xinh.
Phù h?p v?i: Du khách ??n H?i An.
??c ?i?m v?n hóa: L?u gi? hình ?nh c?a Di s?n V?n hóa Th? gi?i H?i An.', 
N'Cái', N'Qu?ng Nam'),

('SP051', N'Qu?t tay', 29, 60000.00, 130, 
N'Gi?i thi?u chung: Qu?t tay làm t? gi?y ho?c l?a, có nan tre, v? các h?a ti?t phong c?nh H?i An, th? pháp ho?c hoa v?n truy?n th?ng.
Thành ph?n: Gi?y dó, l?a, tre.
Ch?t li?u: Gi?y/l?a và tre.
Kích th??c: Tiêu chu?n qu?t x?p.
Công d?ng: Qu?t mát, ph? ki?n ch?p ?nh, trang trí, quà l?u ni?m.
Phù h?p v?i: Du khách, ng??i yêu thích ?? th? công truy?n th?ng.
??c ?i?m v?n hóa: Món ?? mang ??m nét Á ?ông, th? hi?n s? thanh l?ch và là món quà l?u ni?m tinh t? t? H?i An.', 
N'Cái', N'Qu?ng Nam'),

('SP052', N'Nhang qu?', 30, 75000.00, 110, 
N'Gi?i thi?u chung: Nhang qu? Qu?ng Nam, ??c bi?t t? vùng qu? Trà My, có mùi th?m m?nh m?, ??c tr?ng c?a qu? r?ng. ???c làm t? b?t qu? nguyên ch?t.
Thành ph?n: B?t v? qu? Trà My, keo b?i l?i.
Ch?t li?u: Que nhang.
Kh?i l??ng: Th??ng ?óng bó ho?c h?p.
Công d?ng: Th? cúng, làm s?ch không khí, mang l?i c?m giác ?m cúng, có tác d?ng xua ?u?i côn trùng.
Phù h?p v?i: Gia ?ình, ??c bi?t nh?ng ai yêu thích mùi h??ng n?ng ?m c?a qu?.
??c ?i?m v?n hóa: Qu?ng Nam là x? s? c?a qu?, nhang qu? là m?t s?n ph?m th? hi?n giá tr? c?a cây qu? trong ??i s?ng v?n hóa và kinh t?.', 
N'Bó/H?p', N'Qu?ng Nam'),

('SP053', N'Gi? sách mây tre', 31, 280000.00, 60, 
N'Gi?i thi?u chung: Gi? sách, túi xách làm t? mây tre ?an là s?n ph?m th? công m? ngh? thân thi?n v?i môi tr??ng c?a Qu?ng Nam. S?n ph?m ???c ?an lát t? m?, ki?u dáng ?a d?ng, mang tính ?ng d?ng cao và nét ??p t? nhiên.
Thành ph?n: Mây, tre, cói.
Ch?t li?u: Nguyên li?u t? nhiên.
Kích th??c: 30x50x30 cm (D-R-C).
Công d?ng: ??ng ?? dùng cá nhân, ph? ki?n th?i trang, ?i ch?, ?i bi?n.
Phù h?p v?i: Ph? n?, ng??i yêu thích s?n ph?m t? nhiên, th?i trang b?n v?ng.
??c ?i?m v?n hóa: Ngh? ?an lát mây tre là ngh? th? công truy?n th?ng ? nhi?u ??a ph??ng Qu?ng Nam, s?n ph?m th? hi?n s? khéo léo và g?n g?i v?i thiên nhiên.', 
N'Cái', N'Qu?ng Nam');

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
('CASHONDELI', N'Thanh toán khi nh?n hàng (COD)'), -- Using a shorter MaThanhToan for COD as it's very common. CHAR(10) will pad it.
('BANKTRANSF', N'Chuy?n kho?n ngân hàng'), 
('VNPAYQR', N'Thanh toán qua c?ng VNPay (QR Code, Th? n?i ??a, Ví ?i?n t?)'),
('MOMOWALLET', N'Thanh toán qua ví ?i?n t? MoMo'),
('ZALOPAY', N'Thanh toán qua ví ?i?n t? ZaloPay'),
('INTLCARD', N'Thanh toán b?ng th? qu?c t? (Visa, Mastercard, JCB)');

--select * from ThanhToan

-- Inserting into DonHang table
-- Order 1
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (1, '2025-05-01', N'?ã giao hàng', 295000.00, 1, N'123 Lê L?i, Hu?');

-- Order 2
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (2, '2025-05-03', N'?ang giao hàng', 180000.00, 2, N'45 Hùng V??ng, ?à N?ng');

-- Order 3
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (3, '2025-05-05', N'?ang x? lý', 400000.00, 3, N'78 Nguy?n Du, Qu?ng Nam');

-- Order 4
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (4, '2025-05-07', N'?ã ??t hàng', 1700000.00, 4, N'12 Tr?n H?ng ??o, Hu?');

-- Order 5
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (5, '2025-05-09', N'?ã h?y', 245000.00, 1, N'55 Lý Th??ng Ki?t, ?à N?ng');
GO

-- Details for Order 1 (IDDonHang = 1)
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (1, 'SP018', 2); -- Bánh bèo Hu?
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (1, 'SP003', 3); -- Bánh tráng cu?n th?t heo ?à N?ng

-- Details for Order 2 (IDDonHang = 2)
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (2, 'SP010', 1); -- Rong bi?n M? Khê ?à N?ng
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (2, 'SP020', 2); -- Bún bò Hu?

-- Details for Order 3 (IDDonHang = 3)
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (3, 'SP036', 1); -- Tò he Hu?
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (3, 'SP052', 5); -- Nhang qu? Qu?ng Nam

-- Details for Order 4 (IDDonHang = 4)
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (4, 'SP012', 1); -- T??ng ??c M? Non N??c ?à N?ng
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (4, 'SP049', 2); -- L?ng ?èn H?i An

-- Details for Order 5 (IDDonHang = 5)
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (5, 'SP040', 1); -- Mì Qu?ng
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (5, 'SP002', 4); -- Bún ch? cá ?à N?ng
GO

-- Inserting DonHang and ChiTietDonHang for Jan 2025 - Apr 2025 (20 Orders)
-- Using direct INSERT ... VALUES format
-- Assuming IDDonHang starts from 6

-- ==== January 2025 ====

-- Order 1 (IDDonHang: 6)
-- KhachHang: 1, ThanhToan: COD, TrangThai: ?ã giao hàng
-- Product1: SP018 (Bánh bèo, 35000.00), Qty1: 1
-- Product2: SP019 (Bánh b?t l?c, 45000.00), Qty2: 2
-- TongTien: (35000.00 * 1) + (45000.00 * 2) = 35000 + 90000 = 125000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (1, '2025-01-03', N'?ã giao hàng', 125000.00, 1, N'123 Lê L?i, Hu?');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (6, 'SP018', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (6, 'SP019', 2);
GO

-- Order 2 (IDDonHang: 7)
-- KhachHang: 2, ThanhToan: BANKTRANSF, TrangThai: Hoàn thành
-- Product1: SP027 (Tôm khô, 250000.00), Qty1: 2  -- ?ã ??i SP010 (Rong bi?n M? Khê) sang SP027 (Tôm khô) theo ý ?? b?n
-- Product2: SP021 (Trà Cung ?ình, 150000.00), Qty2: 3 -- ?ã ??i SP020 (Bún bò) sang SP021 (Trà Cung ?ình) theo ý ?? b?n
-- TongTien: (250000.00 * 2) + (150000.00 * 3) = 500000 + 450000 = 950000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (2, '2025-01-08', N'Hoàn thành', 950000.00, 2, N'45 Hùng V??ng, ?à N?ng');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (7, 'SP027', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (7, 'SP021', 3);
GO

-- Order 3 (IDDonHang: 8)
-- KhachHang: 3, ThanhToan: VNPAYQR, TrangThai: ?ã giao hàng
-- Product1: SP023 (Tinh d?u tràm, 180000.00), Qty1: 3 -- ?ã ??i SP030 (Tinh d?u qu?) sang SP023 (Tinh d?u tràm)
-- Product2: SP029 (Nón lá bài th? Hu?, 80000.00), Qty2: 1 -- ?ã ??i SP036 (Tò he) sang SP029 (Nón lá bài th? Hu?)
-- TongTien: (180000.00 * 3) + (80000.00 * 1) = 540000 + 80000 = 620000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (3, '2025-01-15', N'?ã giao hàng', 620000.00, 3, N'78 Nguy?n Du, Qu?ng Nam');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (8, 'SP023', 3);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (8, 'SP029', 1);
GO

-- Order 4 (IDDonHang: 9)
-- KhachHang: 4, ThanhToan: MOMOWALLET, TrangThai: Hoàn thành
-- Product1: SP011 (T??ng cá chép Non N??c, 500000.00), Qty1: 1
-- Product2: SP036 (Tò he, 25000.00), Qty2: 2 -- ?ã ??i SP044 (Tò he) sang SP036 (Tò he)
-- TongTien: (500000.00 * 1) + (25000.00 * 2) = 500000 + 50000 = 550000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (4, '2025-01-22', N'Hoàn thành', 550000.00, 4, N'12 Tr?n H?ng ??o, Hu?');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (9, 'SP011', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (9, 'SP036', 2);
GO

-- Order 5 (IDDonHang: 10)
-- KhachHang: 5, ThanhToan: ZALOPAY, TrangThai: ?ã h?y
-- Product1: SP050 (Móc khóa ph? c?, 30000.00), Qty1: 2
-- Product2: SP049 (L?ng ?èn H?i An, 100000.00), Qty2: 3 -- ?ã ??i SP052 (Nhang qu?) sang SP049 (L?ng ?èn H?i An)
-- TongTien: (30000.00 * 2) + (100000.00 * 3) = 60000 + 300000 = 360000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (5, '2025-01-27', N'?ã h?y', 360000.00, 5, N'55 Lý Th??ng Ki?t, ?à N?ng');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (10, 'SP050', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (10, 'SP049', 3);
GO

-- ==== February 2025 ==== (Feb 2025 has 28 days)
-- Order 6 (IDDonHang: 11)
-- KhachHang: 1, ThanhToan: INTLCARD, TrangThai: ?ã giao hàng
-- Product1: SP020 (Bún bò, 55000.00), Qty1: 3 -- ?ã ??i SP003 (Bánh tráng cu?n th?t heo) sang SP020 (Bún bò)
-- Product2: SP028 (Cá c?m khô, 180000.00), Qty2: 1 -- ?ã ??i SP011 (T??ng cá chép) sang SP028 (Cá c?m khô)
-- TongTien: (55000.00 * 3) + (180000.00 * 1) = 165000 + 180000 = 345000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (1, '2025-02-03', N'?ã giao hàng', 345000.00, 6, N'123 Lê L?i, Hu?');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (11, 'SP020', 3);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (11, 'SP028', 1);
GO

-- Order 7 (IDDonHang: 12)
-- KhachHang: 2, ThanhToan: COD, TrangThai: Hoàn thành
-- Product1: SP004 (N??c m?m Nam Ô, 120000.00), Qty1: 1 -- ?ã ??i SP015 (N??c m?m Nam Ô) sang SP004
-- Product2: SP008 (Trà hoa lài, 95000.00), Qty2: 2 -- ?ã ??i SP023 (Tinh d?u tràm) sang SP008 (Trà hoa lài)
-- TongTien: (120000.00 * 1) + (95000.00 * 2) = 120000 + 190000 = 310000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (2, '2025-02-08', N'Hoàn thành', 310000.00, 1, N'45 Hùng V??ng, ?à N?ng');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (12, 'SP004', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (12, 'SP008', 2);
GO

-- Order 8 (IDDonHang: 13)
-- KhachHang: 3, ThanhToan: BANKTRANSF, TrangThai: ?ã giao hàng
-- Product1: SP025 (H??ng tr?m, 100000.00), Qty1: 2 -- ?ã ??i SP032 (Áo dài Hu?) sang SP025 (H??ng tr?m)
-- Product2: SP031 (Áo c? ph?c Hu?, 500000.00), Qty2: 3 -- ?ã ??i SP038 (Tranh thêu tay chim công) sang SP031 (Áo c? ph?c Hu?)
-- TongTien: (100000.00 * 2) + (500000.00 * 3) = 200000 + 1500000 = 1700000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (3, '2025-02-15', N'?ã giao hàng', 1700000.00, 2, N'78 Nguy?n Du, Qu?ng Nam');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (13, 'SP025', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (13, 'SP031', 3);
GO

-- Order 9 (IDDonHang: 14)
-- KhachHang: 4, ThanhToan: VNPAYQR, TrangThai: Hoàn thành
-- Product1: SP029 (Nón lá bài th? Hu?, 80000.00), Qty1: 3 -- ?ã ??i SP046 (Nón bài th? hu?) sang SP029 (Nón lá bài th? Hu?)
-- Product2: SP053 (Gi? sách mây tre, 280000.00), Qty2: 1 -- ?ã ??i SP053 (R??u Minh M?ng) sang SP053 (Gi? sách mây tre)
-- TongTien: (80000.00 * 3) + (280000.00 * 1) = 240000 + 280000 = 520000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (4, '2025-02-22', N'Hoàn thành', 520000.00, 3, N'12 Tr?n H?ng ??o, Hu?');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (14, 'SP029', 3);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (14, 'SP053', 1);
GO

-- Order 10 (IDDonHang: 15)
-- KhachHang: 5, ThanhToan: MOMOWALLET, TrangThai: ?ã h?y
-- Product1: SP012 (T??ng ??c M? Non N??c, 1500000.00), Qty1: 1 -- ?ã ??i SP060 (Chu?i h?t tr?m h??ng) sang SP012 (T??ng ??c M? Non N??c)
-- Product2: SP002 (Bún ch? cá, 50000.00), Qty2: 2 -- ?ã ??i SP063 (Chè h?t sen long nhãn) sang SP002 (Bún ch? cá)
-- TongTien: (1500000.00 * 1) + (50000.00 * 2) = 1500000 + 100000 = 1600000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (5, '2025-02-25', N'?ã h?y', 1600000.00, 4, N'55 Lý Th??ng Ki?t, ?à N?ng');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (15, 'SP012', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (15, 'SP002', 2);
GO

-- ==== March 2025 ====
-- Order 11 (IDDonHang: 16)
-- KhachHang: 1, ThanhToan: ZALOPAY, TrangThai: ?ã giao hàng
-- Product1: SP001 (Ram cu?n c?i, 60000.00), Qty1: 2
-- Product2: SP006 (Cá bò khô, 320000.00), Qty2: 3 -- ?ã ??i SP013 (Móc khóa c?u r?ng) sang SP006 (Cá bò khô)
-- TongTien: (60000.00 * 2) + (320000.00 * 3) = 120000 + 960000 = 1080000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (1, '2025-03-03', N'?ã giao hàng', 1080000.00, 5, N'123 Lê L?i, Hu?');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (16, 'SP001', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (16, 'SP006', 3);
GO

-- Order 12 (IDDonHang: 17)
-- KhachHang: 2, ThanhToan: INTLCARD, TrangThai: Hoàn thành
-- Product1: SP022 (Trà hoa atiso, 120000.00), Qty1: 3 -- ?ã ??i SP021 (Trà Cung ?ình) sang SP022 (Trà hoa atiso)
-- Product2: SP015 (Tinh d?u s? chanh, 150000.00), Qty2: 1 -- ?ã ??i SP028 (Cá c?m khô) sang SP015 (Tinh d?u s? chanh)
-- TongTien: (120000.00 * 3) + (150000.00 * 1) = 360000 + 150000 = 510000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (2, '2025-03-08', N'Hoàn thành', 510000.00, 6, N'45 Hùng V??ng, ?à N?ng');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (17, 'SP022', 3);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (17, 'SP015', 1);
GO

-- Order 13 (IDDonHang: 18)
-- KhachHang: 3, ThanhToan: COD, TrangThai: ?ã giao hàng
-- Product1: SP037 (Móc khóa ??i N?i Hu?, 40000.00), Qty1: 1 -- ?ã ??i SP037 (Áo c? ph?c Hu?) sang SP037 (Móc khóa ??i N?i Hu?)
-- Product2: SP013 (Móc khóa c?u R?ng, 35000.00), Qty2: 2 -- ?ã ??i SP041 (Mô hình c?u r?ng) sang SP013 (Móc khóa c?u R?ng)
-- TongTien: (40000.00 * 1) + (35000.00 * 2) = 40000 + 70000 = 110000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (3, '2025-03-15', N'?ã giao hàng', 110000.00, 1, N'78 Nguy?n Du, Qu?ng Nam');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (18, 'SP037', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (18, 'SP013', 2);
GO

-- Order 14 (IDDonHang: 19)
-- KhachHang: 4, ThanhToan: BANKTRANSF, TrangThai: Hoàn thành
-- Product1: SP017 (R??u g?o ?à N?ng, 85000.00), Qty1: 2 -- ?ã ??i SP054 (R??u g?o Hu?) sang SP017 (R??u g?o ?à N?ng)
-- Product2: SP049 (L?ng ?èn H?i An, 100000.00), Qty2: 3 -- ?ã ??i SP061 (?èn l?ng phong th?y) sang SP049 (L?ng ?èn H?i An)
-- TongTien: (85000.00 * 2) + (100000.00 * 3) = 170000 + 300000 = 470000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (4, '2025-03-22', N'Hoàn thành', 470000.00, 2, N'12 Tr?n H?ng ??o, Hu?');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (19, 'SP017', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (19, 'SP049', 3);
GO

-- Order 15 (IDDonHang: 20)
-- KhachHang: 5, ThanhToan: VNPAYQR, TrangThai: ?ã h?y
-- Product1: SP040 (Mì Qu?ng, 45000.00), Qty1: 3 -- ?ã ??i SP070 (Chè ??u ?en) sang SP040 (Mì Qu?ng)
-- Product2: SP003 (Bánh tráng cu?n th?t heo, 75000.00), Qty2: 1 -- ?ã ??i SP074 (Bánh khô mè C?m L?) sang SP003 (Bánh tráng cu?n th?t heo)
-- TongTien: (45000.00 * 3) + (75000.00 * 1) = 135000 + 75000 = 210000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (5, '2025-03-27', N'?ã h?y', 210000.00, 3, N'55 Lý Th??ng Ki?t, ?à N?ng');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (20, 'SP040', 3);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (20, 'SP003', 1);
GO

-- ==== April 2025 ====
-- Order 16 (IDDonHang: 21)
-- KhachHang: 1, ThanhToan: MOMOWALLET, TrangThai: ?ã giao hàng
-- Product1: SP005 (M?c khô, 650000.00), Qty1: 1 -- ?ã ??i SP005 (Bún ch? cá) sang SP005 (M?c khô)
-- Product2: SP043 (N??c m?m C?a Khe, 110000.00), Qty2: 2
-- TongTien: (650000.00 * 1) + (110000.00 * 2) = 650000 + 220000 = 870000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (1, '2025-04-03', N'?ã giao hàng', 870000.00, 4, N'123 Lê L?i, Hu?');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (21, 'SP005', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (21, 'SP043', 2);
GO

-- Order 17 (IDDonHang: 22)
-- KhachHang: 2, ThanhToan: ZALOPAY, TrangThai: Hoàn thành
-- Product1: SP025 (H??ng tr?m, 100000.00), Qty1: 2 -- ?ã ??i SP025 (Trà th?o m?c) sang SP025 (H??ng tr?m)
-- Product2: SP016 (Tinh d?u b?c hà, 130000.00), Qty2: 3 -- ?ã ??i SP031 (Tinh d?u ng?i c?u) sang SP016 (Tinh d?u b?c hà)
-- TongTien: (100000.00 * 2) + (130000.00 * 3) = 200000 + 390000 = 590000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (2, '2025-04-08', N'Hoàn thành', 590000.00, 5, N'45 Hùng V??ng, ?à N?ng');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (22, 'SP025', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (22, 'SP016', 3);
GO

-- Order 18 (IDDonHang: 23)
-- KhachHang: 3, ThanhToan: INTLCARD, TrangThai: ?ã giao hàng
-- Product1: SP053 (Gi? sách mây tre, 280000.00), Qty1: 3
-- Product2: SP047 (T??ng ?t xào Tri?u Phát, 45000.00), Qty2: 1 -- ?ã ??i SP047 (Móc khóa c?u R?ng) sang SP047 (T??ng ?t xào Tri?u Phát)
-- TongTien: (280000.00 * 3) + (45000.00 * 1) = 840000 + 45000 = 885000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (3, '2025-04-15', N'?ã giao hàng', 885000.00, 6, N'78 Nguy?n Du, Qu?ng Nam');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (23, 'SP053', 3);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (23, 'SP047', 1);
GO

-- Order 19 (IDDonHang: 24)
-- KhachHang: 4, ThanhToan: COD, TrangThai: Hoàn thành
-- Product1: SP017 (R??u g?o ?à N?ng, 85000.00), Qty1: 1 -- ?ã ??i SP057 (R??u g?o l?t) sang SP017 (R??u g?o ?à N?ng)
-- Product2: SP018 (Bánh bèo, 35000.00), Qty2: 2 -- ?ã ??i SP065 (Chè b?t l?c heo quay) sang SP018 (Bánh bèo)
-- TongTien: (85000.00 * 1) + (35000.00 * 2) = 85000 + 70000 = 155000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (4, '2025-04-22', N'Hoàn thành', 155000.00, 1, N'12 Tr?n H?ng ??o, Hu?');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (24, 'SP017', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (24, 'SP018', 2);
GO

-- Order 20 (IDDonHang: 25)
-- KhachHang: 5, ThanhToan: BANKTRANSF, TrangThai: ?ã h?y
-- Product1: SP003 (Bánh tráng cu?n th?t heo, 75000.00), Qty1: 2 -- ?ã ??i SP076 (Bánh thu?n) sang SP003 (Bánh tráng cu?n th?t heo)
-- Product2: SP008 (Trà hoa lài, 95000.00), Qty2: 3 -- ?ã ??i SP008 (Cao l?u) sang SP008 (Trà hoa lài)
-- TongTien: (75000.00 * 2) + (95000.00 * 3) = 150000 + 285000 = 435000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (5, '2025-04-27', N'?ã h?y', 435000.00, 2, N'55 Lý Th??ng Ki?t, ?à N?ng');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (25, 'SP003', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (25, 'SP008', 3);
GO