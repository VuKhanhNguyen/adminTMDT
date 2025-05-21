USE ShopHueDaQua;
GO

--Kh�ch h�ng
INSERT INTO KhachHang (taiKhoan, matKhau, hoTen, email, soDienThoai, DiaChi)
VALUES
('nguyenvanA', '123', N'Nguy?n V?n A', 'nguyenvana@email.com', '0912345678', N'123 L� L?i, Hu?'),
('tranthiB', '123', N'Tr?n Th? B', 'tranthib@email.com', '0987654321', N'45 H�ng V??ng, ?� N?ng'),
('lehoangC', '123', N'L� Ho�ng C', 'lehoangc@email.com', '0905123456', N'78 Nguy?n Du, Qu?ng Nam'),
('phamthid', '123', N'Ph?m Th? D', 'phamthid@email.com', '0911222333', N'12 Tr?n H?ng ??o, Hu?'),
('vuvanE', '123', N'V? V?n E', 'vuvane@email.com', '0977123456', N'55 L� Th??ng Ki?t, ?� N?ng'),
('nguyenthif', '123', N'Nguy?n Th? F', 'nguyenthif@email.com', '0909876543', N'9 H?i Th??ng L�n �ng, Qu?ng Nam'),
('truongquangG', '123', N'Tr??ng Quang G', 'truongquangg@email.com', '0915987654', N'30 B� Tri?u, Hu?'),
('hoangthiH', '123', N'Ho�ng Th? H', 'hoangthih@email.com', '0988999888', N'17 L� Du?n, ?� N?ng'),
('dinhvanI', '123', N'?inh V?n I', 'dinhvani@email.com', '0903123123', N'22 Tr?n Ph�, Qu?ng Nam'),
('lamthiK', '123', N'L�m Th? K', 'lamthik@email.com', '0917123456', N'4 Nguy?n Hu?, Hu?');

--Danh m?c
INSERT INTO DanhMuc (tenDanhMuc, hinhAnh, moTa, tenDacSan) VALUES
(N'??c S?n ?m Th?c ?� N?ng', 'https://statics.vinwonders.com/dac-san-da-nang-1.jpg', N'??c s?n ?m th?c n?i ti?ng c?a ?� N?ng', N'??c s?n ?� N?ng'),
(N'N??c M?m Nam �', 'https://th.bing.com/th/id/OIP.ScMsg8yhO8Q_1sYcqZp7bQHaEU?cb=iwc2&rs=1&pid=ImgDetMain', N'N??c m?m truy?n th?ng n?i ti?ng c?a Nam �, ?� N?ng', N'??c s?n ?� N?ng'),
(N'H?i S?n Kh� ?� N?ng', 'https://th.bing.com/th/id/OIP.-2rw7ZA9xtLMRHc-Isw-BAHaFj?cb=iwc2&rs=1&pid=ImgDetMain', N'H?i s?n kh� ??c s?n v�ng bi?n ?� N?ng', N'??c s?n ?� N?ng'),
(N'Tr� v� Th?o D??c ?� N?ng', 'https://duoclieumientay.com/wp-content/uploads/2022/12/cong-dung-cua-tra-thao-duoc-duoc-lieu-mien-tay-06.png', N'Tr� v� th?o d??c ??c tr?ng c?a ?� N?ng', N'??c s?n ?� N?ng'),
(N'B�nh Tr�ng T�y Loan', 'https://th.bing.com/th/id/OIP.V4QYszUsBhwYXe_rMTguZAHaFi?cb=iwc2&rs=1&pid=ImgDetMain', N'B�nh tr�ng T�y Loan n?i ti?ng ?� N?ng', N'??c s?n ?� N?ng'),
(N'Rong Bi?n M? Kh�', 'https://th.bing.com/th/id/OIP.l6Jv6erc9o_BjN0Pv0ADYQHaFj?cb=iwc2&rs=1&pid=ImgDetMain', N'Rong bi?n M? Kh� � ??c s?n bi?n ?� N?ng', N'??c s?n ?� N?ng'),
(N'?� M? Ngh? Non N??c', 'https://th.bing.com/th/id/OIP.xSas4r2jxrvHplcukqZ9MwHaFh?cb=iwc2&rs=1&pid=ImgDetMain', N'?� m? ngh? Non N??c � s?n ph?m th? c�ng m? ngh?', N'??c s?n ?� N?ng'),
(N'?? L?u Ni?m ?� N?ng', 'https://danangaz.com/wp-content/uploads/2018/10/52-min.jpg', N'?? l?u ni?m ??c tr?ng cho du l?ch ?� N?ng', N'??c s?n ?� N?ng'),
(N'Tinh D?u Th?o M?c ?� N?ng', 'https://th.bing.com/th/id/OIP.FJinsfgjNS-JuX66dBVeMgHaF7?cb=iwc2&rs=1&pid=ImgDetMain', N'Tinh d?u th?o m?c ?� N?ng, s?n ph?m ch?m s�c s?c kh?e', N'??c s?n ?� N?ng'),
(N'R??u Truy?n Th?ng ?� N?ng', 'https://toplist.vn/images/800px/ruou-sam-dinh-lang-da-nang-1238580.jpg', N'R??u truy?n th?ng ??c s?n ?� N?ng', N'??c s?n ?� N?ng');


INSERT INTO DanhMuc (tenDanhMuc, hinhAnh, moTa, tenDacSan) VALUES
(N'??c S?n ?m Th?c Hu?', 'https://statics.vinwonders.com/dac-san-hue-06_1650031359.jpg', N'??c S?n ?m Th?c Hu?', N'??c s?n Hu?'),
(N'Tr� v� Th?o D??c Hu?', 'https://statics.vinwonders.com/tra-cung-dinh-hue-13_1631763887.jpg', N'Tr� v� Th?o D??c Hu?', N'??c s?n Hu?'),
(N'D?u Tr�m v� Tinh D?u Hu?', 'https://th.bing.com/th/id/OIP.xtmTDlcpcC3RhJ094re9uwHaHH?cb=iwc2&rs=1&pid=ImgDetMain', N'D?u Tr�m v� Tinh D?u Hu?', N'??c s?n Hu?'),
(N'H??ng Tr?m Hu?', 'https://bizweb.dktcdn.net/100/448/296/files/huong-tram-xu-hue-3.jpg?v=1647677679787', N'H??ng Tr?m Hu?', N'??c s?n Hu?'),
(N'H?i S?n Kh� Hu?', 'https://th.bing.com/th/id/OIP.Pz9q8WmvqMl4kmvo5VhO4QHaFj?cb=iwc2&rs=1&pid=ImgDetMain', N'H?i S?n Kh� Hu?', N'??c s?n Hu?'),
(N'N�n L� Hu?', 'https://th.bing.com/th/id/R.8d895ebb086458cd5bd1dab3da08fbbe?rik=m3SKft3CXtIxdA&pid=ImgRaw&r=0', N'N�n L� Hu?', N'??c s?n Hu?'),
(N'�o D�i Hu?', 'https://ims.baoyenbai.com.vn/NewsImg/8_2021/216211_23-8-hue.jpg', N'�o D�i Hu?', N'??c s?n Hu?'),
(N'Tranh Th�u Tay Hu?', 'https://th.bing.com/th/id/OIP.RR1wUc50XqG358vaM38zQgHaFY?cb=iwc2&rs=1&pid=ImgDetMain', N'Tranh Th�u Tay Hu?', N'??c s?n Hu?'),
(N'?? G?m Hu?', 'https://th.bing.com/th/id/OIP.tJuLgrhfbs-oZaVj5wMcyAHaEK?cb=iwc2&rs=1&pid=ImgDetMain', N'?? G?m Hu?', N'??c s?n Hu?'),
(N'?? L?u Ni?m Hu?', 'https://th.bing.com/th/id/OIP.VpW0bfMk2awnlUv0gRKg_gAAAA?cb=iwc2&rs=1&pid=ImgDetMain', N'?? L?u Ni?m Hu?', N'??c s?n Hu?'),
(N'R??u Hu?', 'https://toplist.vn/images/800px/royal-wine-ham-ruou-vang-hue-1213528.jpg', N'R??u Hu?', N'??c s?n Hu?');


INSERT INTO DanhMuc (tenDanhMuc, hinhAnh, moTa, tenDacSan) VALUES
(N'??c S?n ?m Th?c Qu?ng Nam', 'https://ik.imagekit.io/tvlk/blog/2022/05/dac-san-quang-nam-1-1024x684.jpeg?tr=dpr-2,w-675', N'??c S?n ?m Th?c Qu?ng Nam', N'??c s?n Qu?ng Nam'),
(N'N??c M?m C?a Khe', 'https://down-vn.img.susercontent.com/file/4b424dc1e1d5c0603bb6429cac4d8154', N'N??c M?m C?a Khe', N'??c s?n Qu?ng Nam'),
(N'B�nh T? Qu?ng Nam', 'https://th.bing.com/th/id/OIP.dVjUa_1BRo0AIlR4MTPfrAHaFB?cb=iwc2&rs=1&pid=ImgDetMain', N'B�nh T? Qu?ng Nam', N'??c s?n Qu?ng Nam'),
(N'Tr� Xanh Qu?ng Nam', 'https://th.bing.com/th/id/OIP.NLQi-eOeC1QwVSe5dnIWIAHaE8?cb=iwc2&rs=1&pid=ImgDetMain', N'Tr� Xanh Qu?ng Nam', N'??c s?n Qu?ng Nam'),
(N'T??ng ?t H?i An', 'https://quangnamfood.com/wp-content/uploads/2020/12/ot-xao-hoi-an-e1666853112370.jpg', N'T??ng ?t H?i An', N'??c s?n Qu?ng Nam'),
(N'?? G?m Thanh H�', 'https://gomsumoc.com/wp-content/uploads/2023/03/59-1368x800.jpg', N'?? G?m Thanh H�', N'??c s?n Qu?ng Nam'),
(N'L?ng ?�n H?i An', 'https://th.bing.com/th/id/OIP.0FN4sQ60YnIHvZH1-xyq2AHaE4?cb=iwc2&rs=1&pid=ImgDetMain', N'L?ng ?�n H?i An', N'??c s?n Qu?ng Nam'),
(N'?? L?u Ni?m Qu?ng Nam', 'https://th.bing.com/th/id/OIP.Z5YW_JV0U5cu-H5RlAqHUAHaE8?cb=iwc2&rs=1&pid=ImgDetMain', N'?? L?u Ni?m Qu?ng Nam', N'??c s?n Qu?ng Nam'),
(N'H??ng Nhang Qu? Qu?ng Nam', 'https://nhangquequangngai.com/wp-content/uploads/2023/06/Nu-que-1.jpg', N'H??ng Nhang Qu? Qu?ng Nam', N'??c s?n Qu?ng Nam'),
(N'Th? C�ng M�y Tre', 'https://gomphuctaman.com/wp-content/uploads/2022/07/san-pham-thu-cong-my-nghe-tu-tre.jpg', N'Th? C�ng M�y Tre', N'??c s?n Qu?ng Nam');


INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
--?� n?ng
('SP001', N'Ram cu?n c?i', 1, 60000.00, 90, 
N'Gi?i thi?u chung: Ram cu?n c?i ?� N?ng l� m�n cu?n ??c ?�o v?i ram (ch? gi�) chi�n gi�n ???c cu?n c�ng b�n, rau s?ng t??i m�t trong l� c?i xanh. M�n ?n c� s? h�a quy?n gi?a v? gi�n c?a ram, v? t??i c?a rau v� v? cay nh? c?a c?i.
Th�nh ph?n: B�nh tr�ng cu?n ram, th?t heo xay, mi?n, m?c nh?, tr?ng, l� c?i xanh, b�n, rau s?ng, n??c ch?m.
C�ng d?ng: M�n khai v? ho?c m�n ch�nh, thanh m�t v� l? mi?ng.
Ph� h?p v?i: Ng??i th�ch c�c m�n cu?n, mu?n th? h??ng v? ??c tr?ng c?a ?� N?ng.
??c ?i?m v?n h�a: M�n ?n th? hi?n s? s�ng t?o trong ?m th?c ?� th�nh, k?t h?p h�i h�a c�c nguy�n li?u ??a ph??ng.', 
N'Ph?n', N'?� N?ng'),

('SP002', N'B�n ch? c�', 1, 50000.00, 100, 
N'Gi?i thi?u chung: B�n ch? c� ?� N?ng n?i ti?ng v?i n??c d�ng thanh ng?t ???c ninh t? x??ng c� v� c�c lo?i rau c?, c�ng v?i ch? c� thu t??i ngon, dai. Ch? c� c� th? ???c chi�n ho?c h?p.
Th�nh ph?n: B�n, ch? c� thu, c� chua, b� ??, m?ng t??i, th?m (d?a), rau s?ng, m?m ru?c.
C�ng d?ng: M�n ?n s�ng ho?c tr?a ph? bi?n, cung c?p dinh d??ng.
Ph� h?p v?i: M?i l?a tu?i, ng??i y�u th�ch h??ng v? bi?n v� c�c m�n b�n n??c.
??c ?i?m v?n h�a: M�n ?n ??c tr?ng c?a v�ng bi?n ?� N?ng, ph?n �nh s? t??i ngon c?a h?i s?n ??a ph??ng.', 
N'T�', N'?� N?ng'),

('SP003', N'B�nh tr�ng cu?n th?t heo', 1, 75000.00, 70, 
N'Gi?i thi?u chung: B�nh tr�ng cu?n th?t heo ?� N?ng l� m�n ?n d�n d� nh?ng h?p d?n. Th?t heo ???c lu?c ho?c h?p gi? ?? ng?t, cu?n c�ng b�nh tr�ng ??i L?c, rau s?ng ?a d?ng v� ch?m m?m n�m ??m ?�.
Th�nh ph?n: Th?t heo (ba ch? ho?c hai ??u da), b�nh tr�ng, rau s?ng (x� l�ch, t�a t�, di?p c�, h�ng qu?, gi� ??, d?a chu?t, chu?i ch�t...), m?m n�m.
C�ng d?ng: M�n ch�nh, th�ch h?p cho c�c bu?i t? h?p b?n b�, gia ?�nh.
Ph� h?p v?i: Nh?ng ng??i th�ch m�n cu?n, h??ng v? m?m n�m ??c tr?ng.
??c ?i?m v?n h�a: M�n ?n th? hi?n s? h�a quy?n c?a nhi?u lo?i rau v� h??ng v?, l� ni?m t? h�o c?a ?m th?c ?� N?ng.', 
N'Ph?n', N'?� N?ng'),

('SP004', N'N??c m?m Nam �', 2, 120000.00, 100, 
N'Gi?i thi?u chung: N??c m?m Nam � l� th??ng hi?u n??c m?m truy?n th?ng n?i ti?ng c?a ?� N?ng, ???c l�m t? c� c?m than t??i ngon v� mu?i h?t tinh khi?t, ? ch??p theo ph??ng ph�p c? truy?n. N??c m?m c� m�u c�nh gi�n, v? ??m ?�, h??ng th?m ??c tr?ng.
Th�nh ph?n: C� c?m than, mu?i bi?n.
Kh?i l??ng: 1 l�t.
C�ng d?ng: D�ng l�m n??c ch?m ho?c gia v? n�m n?m m�n ?n.
Ph� h?p v?i: M?i gia ?�nh, nh� h�ng, ng??i s�nh ?n.
??c ?i?m v?n h�a: Di s?n v?n h�a phi v?t th? qu?c gia, ni?m t? h�o c?a l�ng ngh? n??c m?m Nam � h?n 400 n?m tu?i.', 
N'Chai', N'?� N?ng'),

('SP005', N'M?c kh�', 3, 650000.00, 40, 
N'Gi?i thi?u chung: M?c kh� ?� N?ng n?i ti?ng v?i ch?t l??ng cao, ???c l�m t? m?c ?ng t??i ngon, ph?i kh� t? nhi�n d??i n?ng bi?n. M?c d�y m�nh, th?t ng?t v� th?m.
Th�nh ph?n: 100% m?c ?ng t??i.
Kh?i l??ng: 1 kg.
C�ng d?ng: N??ng, chi�n, x�o, l�m g?i. L� m�n nh?m ph? bi?n.
Ph� h?p v?i: C�c bu?i ti?c, l�m qu� bi?u ??c s?n bi?n.
??c ?i?m v?n h�a: S?n v?t qu� c?a v�ng bi?n ?� N?ng, th? hi?n s? phong ph� c?a h?i s?n ??a ph??ng.', 
N'G�i', N'?� N?ng'),

('SP006', N'C� b� kh�', 3, 320000.00, 50, 
N'Gi?i thi?u chung: C� b� kh� ?� N?ng th??ng ???c t?m gia v? v?a ?n (cay, m?n, ng?t) r?i ph?i kh� ho?c s?y. Th?t c� dai, ng?t, th?m m�i gia v?.
Th�nh ph?n: C� b� t??i, gia v? (???ng, mu?i, ?t, t?i...).
Kh?i l??ng: 1 kg.
C�ng d?ng: ?n li?n, n??ng ho?c chi�n s?. M�n ?n v?t, m?i nh?u h?p d?n.
Ph� h?p v?i: Gi?i tr?, d�n v?n ph�ng, ng??i th�ch ?n v?t.
??c ?i?m v?n h�a: ??c s?n ti?n l?i c?a ?� N?ng, d? d�ng mang theo v� th??ng th?c.', 
N'G�i', N'?� N?ng'),

('SP007', N'Tr� s�m d?a', 4, 80000.00, 100, 
N'Gi?i thi?u chung: Tr� s�m d?a ?� N?ng l� lo?i tr� ph? bi?n, k?t h?p h??ng v? c?a tr� xanh, l� d?a v� ?�i khi c� th�m ch�t h??ng li?u s�m ?? t?o m�i th?m ??c tr?ng. Tr� c� m�u xanh v�ng, v? ch�t nh?, h??ng th?m thoang tho?ng.
Th�nh ph?n: Tr� xanh, l� d?a, h??ng s�m t? nhi�n ho?c t?ng h?p.
Kh?i l??ng: 250g.
C�ng d?ng: Gi?i kh�t, gi�p t?nh t�o, th? gi�n.
Ph� h?p v?i: M?i ng??i, ??c bi?t nh?ng ai th�ch h??ng v? tr� nh? nh�ng, th?m m�t.
??c ?i?m v?n h�a: Th?c u?ng quen thu?c trong ??i s?ng h�ng ng�y c?a ng??i d�n ?� N?ng v� mi?n Trung.', 
N'G�i', N'?� N?ng'),

('SP008', N'Tr� hoa l�i', 4, 95000.00, 90, 
N'Gi?i thi?u chung: Tr� hoa l�i (hoa nh�i) ?� N?ng ???c ??p h??ng t? hoa l�i t??i t? nhi�n v�o tr� xanh ch?t l??ng. Tr� c� h??ng th?m thanh khi?t, quy?n r? c?a hoa l�i, v? tr� ??m ?�.
Th�nh ph?n: Tr� xanh, hoa l�i t??i.
Kh?i l??ng: 200g.
C�ng d?ng: Gi�p th? gi�n tinh th?n, gi?m stress, t?t cho ti�u h�a, l�m ??p da.
Ph� h?p v?i: Ng??i y�u th�ch h??ng th?m t? nhi�n, ph? n?.
??c ?i?m v?n h�a: Vi?c ??p tr� hoa l�i l� m?t ngh? thu?t truy?n th?ng, mang l?i th?c u?ng tinh t?.', 
N'G�i', N'?� N?ng'),

('SP009', N'B�nh tr�ng T�y Loan', 5, 100000.00, 100, 
N'Gi?i thi?u chung: B�nh tr�ng T�y Loan l� ??c s?n n?i ti?ng c?a v�ng ??t T�y Loan, ?� N?ng. ???c l�m th? c�ng t? g?o ngon, b�nh c� ?? d?o v?a ph?i, v? th?m ??c tr?ng v� d? ?n.
Th�nh ph?n: G?o t?, m�, mu?i, n??c s?ch.
Kh?i l??ng: 500g.
C�ng d?ng: D�ng ?? cu?n th?t, rau s?ng, ch?m m?m n�m ho?c n??c t??ng; l� m�n ?n d�n d� v� ti?n l?i trong b?a ?n gia ?�nh.
Ph� h?p v?i: Ng??i y�u th�ch m�n ?n truy?n th?ng, th�ch ?n k�m b�nh tr�ng cu?n.
??c ?i?m v?n h�a: B�nh tr�ng T�y Loan g?n li?n v?i l�ng ngh? truy?n th?ng l�u ??i, l� ni?m t? h�o v?n h�a ?m th?c c?a ng??i d�n ??a ph??ng.',
N'B?ch', N'?� N?ng'),

('SP010', N'Rong bi?n M? Kh�', 6, 70000.00, 170, 
N'Gi?i thi?u chung: Rong bi?n M? Kh� l� ??c s?n n?i ti?ng t?i v�ng bi?n M? Kh�, ?� N?ng. ???c khai th�c t? nhi�n v� ch? bi?n theo ph??ng ph�p truy?n th?ng, rong bi?n gi? ???c h??ng v? thanh m�t v� gi� tr? dinh d??ng cao.  
Th�nh ph?n: Rong bi?n t??i 100%.  
Kh?i l??ng: 200g.  
C�ng d?ng: D�ng ?? ch? bi?n c�c m�n ?n nh? canh rong bi?n, salad, ho?c ?n tr?c ti?p sau khi rang gi�n; t?t cho s?c kh?e v� h? tr? ti�u h�a.  
Ph� h?p v?i: Ng??i ?n chay, ng??i quan t�m ??n s?c kh?e v� dinh d??ng t? nhi�n.  
??c ?i?m v?n h�a: Rong bi?n M? Kh� ph?n �nh n�t ??c tr?ng ?m th?c ven bi?n mi?n Trung, l� m�n qu� � ngh?a cho du kh�ch khi gh� th?m ?� N?ng.', 
N'B?ch', N'?� N?ng'),

('SP011', N'T??ng c� ch�p Non N??c', 7, 500000.00, 40, 
N'Gi?i thi?u chung: T??ng c� ch�p ???c ch? t�c t? ?� c?m th?ch Non N??c (Ng? H�nh S?n, ?� N?ng) b?i c�c ngh? nh�n l�ng ?� m? ngh? Non N??c. C� ch�p h�a r?ng l� bi?u t??ng c?a s? may m?n, ki�n tr� v� th�nh c�ng.
Th�nh ph?n: ?� c?m th?ch t? nhi�n.
Ch?t li?u: ?�.
K�ch th??c: V?a ph?i.
C�ng d?ng: Trang tr�, v?t ph?m phong th?y mang l?i may m?n, t�i l?c.
Ph� h?p v?i: Doanh nh�n, ng??i mu?n c?u may m?n, trang tr� nh� c?a, v?n ph�ng.
??c ?i?m v?n h�a: L�ng ?� Non N??c c� l?ch s? h?n 400 n?m, s?n ph?m ?� m? ngh? l� ni?m t? h�o c?a ?� N?ng. T??ng c� ch�p mang � ngh?a v?n h�a s�u s?c.', 
N'T??ng/C�i', N'?� N?ng'),

('SP012', N'T??ng ??c M? Non N??c', 7, 1500000.00, 40, 
N'Gi?i thi?u chung: T??ng ??c M? Non N??c ???c ch? t�c c�ng phu t? ?� c?m th?ch t? nhi�n t?i l�ng ?� m? ngh? Non N??c, ?� N?ng. T??ng th? hi?n h�nh ?nh ??c M? hi?n t?, mang ??n c?m gi�c an l�nh v� thi�ng li�ng cho kh�ng gian tr?ng b�y.
Th�nh ph?n: ?� c?m th?ch t? nhi�n, ch?t l??ng cao.
Ch?t li?u: ?� nguy�n kh?i.
K�ch th??c: L?n.
C�ng d?ng: L� v?t ph?m trang tr� thi�ng li�ng, th??ng ??t t?i ph�ng th?, nh� th?, tu vi?n, ho?c c�c kh�ng gian t�m linh ?? c?u nguy?n, t?nh t�m.
Ph� h?p v?i: Ng??i theo ??o C�ng gi�o, c�c gia ?�nh mu?n b�i tr� kh�ng gian th? ph??ng trang nghi�m.
??c ?i?m v?n h�a: L� s?n ph?m ?i�u kh?c ??c tr?ng c?a l�ng ngh? Non N??c � n?i l?u gi? v� ph�t tri?n ngh? thu?t ch?m kh?c ?� h?n 400 n?m, g?n li?n v?i ??i s?ng t�m linh v� t�n ng??ng ng??i Vi?t.',
N'T??ng/C�i', N'?� N?ng'),


('SP013', N'M�c kh�a c?u R?ng', 8, 35000.00, 180, 
N'Gi?i thi?u chung: M�c kh�a c� h�nh ?nh ho?c m� h�nh thu nh? c?a C?u R?ng, m?t bi?u t??ng ki?n tr�c hi?n ??i v� ??c ?�o c?a ?� N?ng.
Th�nh ph?n: Kim lo?i, nh?a, mica.
Ch?t li?u: Thay ??i theo s?n ph?m.
K�ch th??c: Nh? g?n.
C�ng d?ng: G?n ch�a kh�a, qu� l?u ni?m.
Ph� h?p v?i: Du kh�ch, ng??i d�n ?� N?ng.
??c ?i?m v?n h�a: Ghi d?u ?n v? m?t c�ng tr�nh bi?u t??ng c?a th�nh ph? ?� N?ng n?ng ??ng v� ph�t tri?n.', 
N'C�i', N'?� N?ng'),

('SP014', N'T�i v?i h�nh c?u V�ng', 8, 95000.00, 100, 
N'Gi?i thi?u chung: T�i v?i canvas ho?c tote in h�nh C?u V�ng (B� N� Hills), m?t ?i?m du l?ch n?i ti?ng th? gi?i c?a ?� N?ng.
Th�nh ph?n: V?i canvas, v?i b?.
Ch?t li?u: V?i.
C�ng d?ng: ??ng ??, ph? ki?n th?i trang, qu� l?u ni?m.
Ph� h?p v?i: Du kh�ch, ng??i y�u th�ch th?i trang ti?n d?ng.
??c ?i?m v?n h�a: C?u V�ng l� m?t k? quan ki?n tr�c, t�i v?i l� m�n qu� l?u ni?m th?i trang v� th?c t?.', 
N'C�i', N'?� N?ng'),

('SP015', N'Tinh d?u s? chanh', 9, 150000.00, 70, 
N'Gi?i thi?u chung: Tinh d?u s? chanh ?� N?ng (th??ng g?i l� s? h??ng) c� m�i th?m n?ng ?m, t??i m�t ??c tr?ng c?a s? v� chanh. ???c s? d?ng r?ng r�i ?? x�ng h??ng, kh? m�i v� ?u?i c�n tr�ng.
Th�nh ph?n: 100% tinh d?u s? chanh nguy�n ch?t.
Ch?t li?u: L?ng, ??ng trong chai th?y tinh.
Kh?i l??ng: 100ml.
C�ng d?ng: Kh? m�i h�i, xua ?u?i mu?i v� c�n tr�ng, l�m s?ch kh�ng kh�, gi?m stress, s�t khu?n.
Ph� h?p v?i: C�c gia ?�nh, v?n ph�ng, spa, nh� h�ng.
??c ?i?m v?n h�a: S? l� c�y gia v? quen thu?c, tinh d?u s? chanh l� ?ng d?ng hi?n ??i mang l?i nhi?u l?i �ch.', 
N'Chai', N'?� N?ng'),

('SP016', N'Tinh d?u b?c h�', 9, 130000.00, 75, 
N'Gi?i thi?u chung: Tinh d?u b?c h� ?� N?ng ???c chi?t xu?t t? l� b?c h� t??i, c� h??ng th?m a cay the m�t, s?ng kho�i.
Th�nh ph?n: 100% tinh d?u b?c h� nguy�n ch?t.
Ch?t li?u: L?ng, ??ng trong chai th?y tinh.
Kh?i l??ng: 100ml.
C�ng d?ng: Gi�p t?nh t�o, t?p trung, gi?m bu?n n�n, say t�u xe, th�ng m?i, gi?m ng?a do c�n tr�ng c?n, xua ?u?i chu?t.
Ph� h?p v?i: Ng??i c?n s? t?nh t�o, ng??i hay b? say xe, gia ?�nh mu?n kh�ng gian th?m m�t.
??c ?i?m v?n h�a: B?c h� l� c�y th?o d??c ph? bi?n, tinh d?u b?c h� mang l?i c?m gi�c t??i m?i, n?ng ??ng c?a th�nh ph? bi?n.', 
N'Chai', N'?� N?ng'),

('SP017', N'R??u g?o', 10, 85000.00, 60, 
N'Gi?i thi?u chung: R??u g?o ?� N?ng c?ng ???c s?n xu?t theo ph??ng ph�p truy?n th?ng, s? d?ng ngu?n n??c v� g?o ??a ph??ng, mang h??ng v? ??c tr?ng c?a v�ng.
Th�nh ph?n: G?o, men r??u.
Ch?t li?u: R??u ??ng trong chai.
Kh?i l??ng: 1 l�t.
C�ng d?ng: D�ng trong ?m th?c, giao ti?p.
Ph� h?p v?i: Ng??i tr??ng th�nh, s? d?ng c� tr�ch nhi?m.
??c ?i?m v?n h�a: R??u g?o l� m?t ph?n c?a v?n h�a ?m th?c ??a ph??ng.', 
N'Chai', N'?� N?ng'),

--Hu?
('SP018', N'B�nh b�o', 11, 35000.00, 100, 
N'Gi?i thi?u chung: B�nh b�o Hu? l� m�n ?n thanh ??m, tinh t?, ??c tr?ng c?a ?m th?c C? ?�. B�nh ???c l�m t? b?t g?o xay m?n, h?p trong nh?ng ch�n nh?, m?t b�nh l�m xu?ng ch?a nh�n t�m ch�y v�ng r?m, th�m ch�t da heo chi�n gi�n v� m? h�nh.
Th�nh ph?n: B?t g?o, t�m t??i, da heo, h�nh l�, gia v? truy?n th?ng.
Kh?i l??ng: Th??ng ph?c v? theo khay.
C�ng d?ng: M�n ?n v?t, m�n khai v? nh? nh�ng, th??ng th?c h??ng v? ??c tr?ng c?a Hu?.
Ph� h?p v?i: M?i l?a tu?i, ng??i y�u th�ch ?m th?c truy?n th?ng, du kh�ch mu?n kh�m ph� v?n h�a Hu?.
??c ?i?m v?n h�a: B�nh b�o th? hi?n s? kh�o l�o, t? m? c?a ng??i ph? n? Hu?, l� m?t ph?n kh�ng th? thi?u trong c�c b?a ?n gia ?�nh v� l? h?i.', 
N'Ph?n', N'Hu?'),

('SP019', N'B�nh b?t l?c', 11, 45000.00, 100, 
N'Gi?i thi?u chung: B�nh b?t l?c Hu? c� hai lo?i ch�nh l� b�nh b?t l?c g�i l� chu?i v� b�nh b?t l?c tr?n. V? b�nh trong veo, dai m?m l�m t? b?t n?ng, nh�n t�m th?t ??m ?�, th??ng k�m theo n??c ch?m chua ng?t ??c tr?ng.
Th�nh ph?n: B?t n?ng, t�m, th?t ba ch?, m?c nh?, gia v?, l� chu?i (??i v?i lo?i g�i).
C�ng d?ng: M�n ?n v?t, m�n ch�nh, d? ?n v� ???c nhi?u ng??i y�u th�ch.
Ph� h?p v?i: M?i l?a tu?i, ??c bi?t l� nh?ng ng??i th�ch m�n ?n c� ?? dai v� h??ng v? ??m ?�.
??c ?i?m v?n h�a: L� m�n ?n b�nh d? nh?ng ch?a ??ng n�t tinh t�y c?a ?m th?c Hu?, th??ng xu?t hi?n trong c�c g�nh h�ng rong v� nh� h�ng ??c s?n.', 
N'??a', N'Hu?'),
 
('SP020', N'B�n b�', 11, 55000.00, 80, 
N'Gi?i thi?u chung: B�n b� Hu? l� m?t trong nh?ng m�n ?n n?i ti?ng nh?t c?a Vi?t Nam, mang h??ng v? ??c tr?ng cay n?ng, ??m ?�. N??c d�ng ???c ninh t? x??ng b�, th�m m?m ru?c, s? v� ?t. S?i b�n to, ?n k�m th?t b�, ch? cua, ti?t heo.
Th�nh ph?n: B�n, th?t b� (b?p, n?m, g�n), ch? cua, ti?t heo, m?m ru?c, s?, ?t, rau s?ng ?n k�m.
C�ng d?ng: M�n ?n ch�nh cung c?p nhi?u n?ng l??ng, l�m ?m c? th?.
Ph� h?p v?i: Ng??i th�ch h??ng v? ??m ?�, cay n?ng, du kh�ch mu?n tr?i nghi?m ?m th?c Hu? ?�ch th?c.
??c ?i?m v?n h�a: M�n ?n bi?u t??ng c?a Hu?, ph?n �nh s? phong ph� v� c?u k? trong ?m th?c cung ?�nh x?a v� d�n gian.', 
N'T�', N'Hu?'),

('SP021', N'Tr� Cung ?�nh', 12, 150000.00, 80, 
N'Gi?i thi?u chung: Tr� Cung ?�nh Hu? l� lo?i tr� th?o d??c qu�, ???c b�o ch? t? nhi?u lo?i th?o m?c thi�n nhi�n theo c�ng th?c c?a c�c ng? y x?a trong cung ?�nh Hu?. Tr� c� h??ng th?m d?u, v? ng?t thanh, t?t cho s?c kh?e.
Th�nh ph?n: Atiso, c�c hoa, ho�i s?n, ??ng s�m, ??i t�o, h?ng t�o, cam th?o b?c, hoa h�e, th?o quy?t minh, kh? qua, k? t?, v?i n?, tim sen v� c�c th?o d??c kh�c.
Kh?i l??ng: 500g.
C�ng d?ng: Thanh nhi?t, gi?i ??c, an th?n, gi�p ng? ngon, t?t cho ti�u h�a v� tim m?ch.
Ph� h?p v?i: M?i l?a tu?i, ??c bi?t ng??i l?n tu?i, ng??i quan t�m ??n s?c kh?e.
??c ?i?m v?n h�a: S?n ph?m k? th?a tinh hoa y h?c c? truy?n c?a Cung ?�nh Hu?, l� th?c u?ng tao nh� v� b? d??ng.', 
N'G�i', N'Hu?'),

('SP022', N'Tr� hoa atiso', 12, 120000.00, 70, 
N'Gi?i thi?u chung: Tr� hoa atiso Hu? ???c l�m t? hoa atiso t??i s?y kh�, gi? nguy�n ???c d??ng ch?t. Tr� c� v? ng?t nh? t? nhi�n, h??ng th?m d? ch?u.
Th�nh ph?n: 100% hoa atiso.
Kh?i l??ng: 200g
C�ng d?ng: M�t gan, gi?i ??c, l?i ti?u, t?t cho h? ti�u h�a, gi?m cholesterol.
Ph� h?p v?i: Ng??i c� v?n ?? v? gan, n�ng trong ng??i, ng??i mu?n thanh l?c c? th?.
??c ?i?m v?n h�a: Hu? l� m?t trong nh?ng v�ng tr?ng atiso, s?n ph?m tr� hoa atiso th? hi?n s? ?u ?�i c?a thi�n nhi�n v� k? thu?t ch? bi?n c?a ng??i d�n ??a ph??ng.', 
N'G�i', N'Hu?'),

('SP023', N'Tinh d?u tr�m', 13, 180000.00, 60, 
N'Gi?i thi?u chung: Tinh d?u tr�m Hu? (??c bi?t l� tr�m gi�) n?i ti?ng v?i ?? tinh khi?t cao, ???c chi?t xu?t t? l� c�y tr�m t? nhi�n. C� m�i th?m ??c tr?ng, t�nh ?m, nhi?u c�ng d?ng cho s?c kh?e.
Th�nh ph?n: 100% tinh d?u tr�m nguy�n ch?t.
Ch?t li?u: L?ng, ??ng trong chai th?y tinh t?i m�u.
Kh?i l??ng: 100ml.
C�ng d?ng: Gi? ?m c? th?, ph�ng v� tr? c?m c�m, ho, s? m?i (??c bi?t cho tr? em v� ph? n? mang thai), xua ?u?i c�n tr�ng, gi?m ?au nh?c c? kh?p, l�m s?ch kh�ng kh�.
Ph� h?p v?i: M?i gia ?�nh, ??c bi?t gia ?�nh c� tr? nh?, ng??i gi�.
??c ?i?m v?n h�a: S?n ph?m truy?n th?ng l�u ??i c?a v�ng ??t Hu?, g?n li?n v?i vi?c ch?m s�c s?c kh?e c?ng ??ng.', 
N'Chai', N'Hu?'),

('SP024', N'Tinh d?u hoa sen', 13, 350000.00, 40, 
N'Gi?i thi?u chung: Tinh d?u hoa sen Hu? ???c chi?t xu?t t? hoa sen tr?ng t?i c�c h? quanh Kinh th�nh Hu?. Mang h??ng th?m thanh khi?t, qu� ph�i, c� t�c d?ng th? gi�n, l�m ??p.
Th�nh ph?n: 100% tinh d?u hoa sen nguy�n ch?t.
Ch?t li?u: L?ng, ??ng trong chai th?y tinh.
Kh?i l??ng: 100ml.
C�ng d?ng: Gi�p th? gi�n, gi?m c?ng th?ng, d??ng da, t?o h??ng th?m cho c? th? v� kh�ng gian.
Ph� h?p v?i: Ng??i y�u th�ch h??ng th?m t? nhi�n, ng??i l�m trong l?nh v?c spa, tr? li?u.
??c ?i?m v?n h�a: Hoa sen l� bi?u t??ng c?a Hu?, tinh d?u hoa sen l� s?n ph?m cao c?p, th? hi?n s? tinh t�y c?a lo�i hoa n�y.', 
N'Chai', N'Hu?'),

('SP025', N'H??ng tr?m', 14, 100000.00, 100, 
N'Gi?i thi?u chung: H??ng tr?m Hu? ???c l�m t? b?t g? tr?m h??ng t? nhi�n ho?c b?t c�y d� b?u c� tr?m, k?t h?p v?i c�c lo?i th?o m?c kh�c theo c�ng th?c truy?n th?ng. H??ng c� m�i th?m d?u nh?, thanh khi?t, l?u h??ng l�u.
Th�nh ph?n: B?t tr?m h??ng, b?t c�y b�i, keo b?i l?i.
Ch?t li?u: Que h??ng.
S? l??ng: 100 c�y.
C�ng d?ng: D�ng trong th? c�ng, thi?n ??nh, t?o kh�ng gian t�m linh thanh t?nh, gi�p th? gi�n.
Ph� h?p v?i: C�c gia ?�nh, ??n ch�a, ng??i th?c h�nh t�m linh.
??c ?i?m v?n h�a: Ngh? l�m h??ng ? Hu? c� l?ch s? l�u ??i, h??ng tr?m l� m?t ph?n kh�ng th? thi?u trong ??i s?ng t�m linh c?a ng??i Hu?, ??c bi?t l� l�ng h??ng Th?y Xu�n.', 
N'B�/H?p', N'Hu?'),

('SP026', N'H??ng qu?', 14, 70000.00, 120, 
N'Gi?i thi?u chung: H??ng qu? Hu? ???c l�m t? b?t v? qu? t? nhi�n, mang m�i th?m n?ng ?m ??c tr?ng c?a qu?.
Th�nh ph?n: B?t v? qu?, keo b?i l?i.
Ch?t li?u: Que h??ng.
S? l??ng: 100 c�y.
C�ng d?ng: D�ng trong th? c�ng, gi�p kh? m�i, l�m ?m kh�ng gian, xua ?u?i c�n tr�ng.
Ph� h?p v?i: C�c gia ?�nh, ??c bi?t trong m�a l?nh ho?c n?i ?m th?p.
??c ?i?m v?n h�a: T?n d?ng ngu?n nguy�n li?u qu? s?n c�, h??ng qu? mang ??n s? ?m �p cho kh�ng gian th? t?.', 
N'B�', N'Hu?'),

('SP027', N'T�m kh�', 15, 250000.00, 50, 
N'Gi?i thi?u chung: T�m kh� Hu? ???c l�m t? t�m t??i ?�nh b?t t? nhi�n, qua qu� tr�nh ph?i s?y th? c�ng gi? ???c v? ng?t t? nhi�n v� m�u ?? h?ng ??p m?t.
Th�nh ph?n: 100% t�m ??t t? nhi�n.
Kh?i l??ng: 1 kg.
C�ng d?ng: D�ng ?? n?u canh, l�m g?i, rim ho?c ?n li?n. Cung c?p nhi?u ??m v� canxi.
Ph� h?p v?i: C�c b� n?i tr?, ng??i th�ch ch? bi?n m�n ?n ngon, l�m qu� bi?u.
??c ?i?m v?n h�a: S?n ph?m truy?n th?ng c?a v�ng ??m ph� Tam Giang - C?u Hai, th? hi?n s? tr� ph� c?a thi�n nhi�n Hu?.', 
N'G�i', N'Hu?'),

('SP028', N'C� c?m kh�', 15, 180000.00, 60, 
N'Gi?i thi?u chung: C� c?m kh� Hu?, ??c bi?t l� c� c?m s�ng H??ng, c� v? ng?t b�i, ???c ph?i kh� t? nhi�n, gi? nguy�n h??ng v?. C� nhi?u lo?i nh? c� c?m m?m, c� c?m s?c.
Th�nh ph?n: 100% c� c?m t??i.
Kh?i l??ng: 1 kg.
C�ng d?ng: D�ng ?? kho ti�u, chi�n gi�n, n?u canh chua, l�m g?i ho?c ?n v?t.
Ph� h?p v?i: C�c gia ?�nh, ng??i th�ch m�n ?n d�n d�, ??m ?� h??ng v?.
??c ?i?m v?n h�a: ??c s?n c?a v�ng s�ng n??c Hu?, g?n li?n v?i b?a c?m gia ?�nh truy?n th?ng.', 
N'G�i', N'Hu?'),

('SP029', N'N�n l� b�i th? Hu?', 16, 80000.00, 100, 
N'Gi?i thi?u chung: N�n l� Hu?, ??c bi?t l� n�n b�i th?, l� bi?u t??ng c?a s? duy�n d�ng, d?u d�ng c?a ng??i ph? n? Hu?. N�n ???c l�m th? c�ng t? l� n�n (l� c?), v�nh tre, c� ?? m?ng, nh? v� thanh tho�t. N�n b�i th? c� h�nh ?nh ho?c nh?ng c�u th? l�ng m?n ???c �p gi?a hai l?p l�.
Th�nh ph?n: L� n�n, tre, ch? c??c.
Ch?t li?u: L� t? nhi�n, tre.
K�ch th??c: ???ng k�nh kho?ng 40 cm.
C�ng d?ng: Che n?ng, che m?a, ph? ki?n th?i trang, qu� l?u ni?m.
Ph� h?p v?i: Ph? n? m?i l?a tu?i, du kh�ch.
??c ?i?m v?n h�a: N�n l� l� m?t ph?n c?a trang ph?c truy?n th?ng Vi?t Nam, n�n l� Hu? mang n�t ??c tr?ng ri�ng, th? hi?n s? t�i hoa, kh�o l�o c?a c�c ngh? nh�n l�ng n�n nh? T�y H?, D? L�.', 
N'C�i', N'Hu?'),

('SP030', N'N�n l� sen Hu?', 16, 80000.00, 100, 
N'Gi?i thi?u chung: N�n l� sen Hu? l� bi?n t?u ??c ?�o c?a n�n l� truy?n th?ng, ???c trang tr� v?i h�nh ?nh hoa sen � bi?u t??ng c?a s? thanh cao, tinh khi?t trong v?n h�a Vi?t. M?i chi?c n�n ???c l�m th? c�ng t? m?, mang ??m h?i th? ngh? thu?t v� n�t duy�n d�ng c?a ng??i ph? n? Hu?.
Th�nh ph?n: L� n�n, tre, ch? c??c, gi?y ngh? thu?t (in h�nh sen).
Ch?t li?u: L� t? nhi�n, tre, trang tr� h?a ti?t sen.
K�ch th??c: ???ng k�nh kho?ng 40 cm.
C�ng d?ng: Che n?ng, che m?a, ph? ki?n th?i trang, qu� t?ng ngh? thu?t mang t�nh bi?u t??ng.
Ph� h?p v?i: Du kh�ch, ng??i y�u th�ch s?n ph?m th? c�ng truy?n th?ng c� t�nh th?m m? cao.
??c ?i?m v?n h�a: Hoa sen g?n li?n v?i v?n h�a Hu? � c? ?� c?a Vi?t Nam. N�n l� sen kh�ng ch? l� s?n ph?m th? c�ng m� c�n l� bi?u t??ng v?n h�a, ph?n �nh v? ??p m?c m?c m� thanh cao c?a v�ng ??t kinh k?.', 
N'C�i', N'Hu?'),

('SP031', N'�o c? ph?c Hu?', 17, 500000.00, 20, 
N'Gi?i thi?u chung: �o c? ph?c Hu? (�o d�i ng? th�n, �o t?c, �o m?nh ph?...) l� trang ph?c truy?n th?ng mang ??m d?u ?n l?ch s? v� v?n h�a c?a C? ?� Hu?. ???c may t? c�c ch?t li?u nh? g?m, l?a v?i ki?u d�ng trang tr?ng, m�u s?c v� hoa v?n tinh t?.
Th�nh ph?n: V?i g?m, l?a, t? t?m.
Ch?t li?u: V?i.
K�ch th??c: May theo size ho?c may ?o.
C�ng d?ng: M?c trong c�c d?p l? h?i, s? ki?n v?n h�a, ch?p ?nh, bi?u di?n ngh? thu?t, th? hi?n s? tr�n tr?ng v?n h�a truy?n th?ng.
Ph� h?p v?i: Ng??i y�u v?n h�a Hu?, ng??i tham gia c�c ho?t ??ng v?n h�a, ngh? s?.
??c ?i?m v?n h�a: L� di s?n trang ph?c cung ?�nh v� d�n gian Hu?, th? hi?n s? trang nghi�m, thanh l?ch v� n�t ??p c? x?a.', 
N'B?/C�i', N'Hu?'),

('SP032', N'�o d�i Hu?', 17, 200000.00, 20, 
N'Gi?i thi?u chung: �o d�i Hu? l� bi?u t??ng c?a n�t ??p d?u d�ng, thanh tho�t v� tinh t? c?a ng??i ph? n? x? Hu?. �o c� thi?t k? �m d�ng v?i t� d�i, th??ng ???c may t? v?i l?a ho?c voan nh?, t?o c?m gi�c m?m m?i v� thanh l?ch. �o d�i Hu? kh�ng ch? l� trang ph?c truy?n th?ng m� c�n l� hi?n th�n c?a b?n s?c v?n h�a c? ?�.
Th�nh ph?n: V?i l?a, v?i voan, t? t?m.
Ch?t li?u: V?i m?m nh?, tho�ng m�t.
K�ch th??c: May s?n theo size ho?c ??t may theo s? ?o.
C�ng d?ng: M?c trong d?p l?, T?t, ?i h?c, ?i l�m, d? ti?c, bi?u di?n v?n h�a ho?c l�m qu� t?ng l?u ni?m.
Ph� h?p v?i: N? sinh, gi�o vi�n, nh�n vi�n c�ng s?, ng??i y�u trang ph?c truy?n th?ng.
??c ?i?m v?n h�a: �o d�i Hu? mang ??m n�t d?u d�ng v� k�n ?�o c?a ng??i con g�i c? ?�, l� bi?u t??ng th?i trang mang t�nh bi?u c?m v� ??y t? h�o c?a v?n h�a Vi?t Nam.', 
N'B?/C�i', N'Hu?'),

('SP033', N'Tranh th�u tay n�n l� hoa sen Hu?', 18, 2500000.00, 15, 
N'Gi?i thi?u chung: Tranh th�u tay "N�n l� hoa sen Hu?" l� s? k?t h?p ??c ?�o gi?a hai bi?u t??ng v?n h�a ??c tr?ng c?a C? ?� � n�n l� v� hoa sen. T?ng ???ng kim m?i ch? ???c th?c hi?n th? c�ng b?i ngh? nh�n Hu?, t?o n�n h�nh ?nh m?m m?i, s?ng ??ng v� ??y � ngh?a.
Th�nh ph?n: V?i l?a cao c?p, ch? t? t?m ho?c ch? DMC nh?p kh?u.
Ch?t li?u: V?i th�u, ch? m�u.
K�ch th??c: 70 x 30 cm.
C�ng d?ng: L� v?t ph?m trang tr� n?i th?t cao c?p, qu� t?ng ngh? thu?t mang ??m b?n s?c v?n h�a.
Ph� h?p v?i: Ng??i y�u v?n h�a Hu?, ng??i c?n qu� t?ng sang tr?ng v� � ngh?a.
??c ?i?m v?n h�a: Tranh th? hi?n v? ??p thanh tao c?a ng??i con g�i Hu?, k?t h?p gi?a truy?n th?ng ngh? th�u v� bi?u t??ng d�n t?c � hoa sen v� n�n l�.', 
N'B?c', N'Hu?'),

('SP034', N'Tranh th�u tay chim c�ng Hu?', 18, 2500000.00, 15, 
N'Gi?i thi?u chung: B?c tranh th�u tay "Chim c�ng Hu?" l� t�c ph?m ngh? thu?t cao c?p, t??ng tr?ng cho s? quy?n qu�, ph� qu� v� thanh cao. H�nh ?nh chim c�ng v?i b? l�ng r?c r? ???c t�i hi?n s?ng ??ng qua t?ng m?i th�u c�ng phu c?a ngh? nh�n Hu?.
Th�nh ph?n: V?i l?a t? nhi�n, ch? t? t?m/ DMC c� ?? b?n v� b�ng cao.
Ch?t li?u: V?i th�u, ch? m�u ngh? thu?t.
K�ch th??c: 70 x 30 cm.
C�ng d?ng: Treo trang tr�, qu� t?ng ??i t�c, qu� bi?u t?t, k? ni?m mang � ngh?a phong th?y.
Ph� h?p v?i: Ng??i y�u ngh? thu?t truy?n th?ng, doanh nh�n, gia ?�nh mong c?u th?nh v??ng.
??c ?i?m v?n h�a: Chim c�ng l� h�nh ?nh quen thu?c trong m? thu?t cung ?�nh x?a, t??ng tr?ng cho s? cao qu� v� h�a h?p, ???c t�i hi?n tinh t? qua b�n tay th�u t�i hoa c?a ngh? nh�n Hu?.', 
N'B?c', N'Hu?'),

('SP035', N'?m tr� men lam', 19, 800000.00, 30, 
N'Gi?i thi?u chung: ?m tr� men lam Hu? l� s?n ph?m g?m s? ??c tr?ng, v?i n??c men lam c? ?i?n, h?a ti?t v? tay tinh t? th??ng l� r?ng, ph??ng, hoa l� c�ch ?i?u. ?m ???c l�m t? ??t s�t cao c?p, nung ? nhi?t ?? cao.
Th�nh ph?n: ??t s�t, men lam.
Ch?t li?u: G?m s?.
Bao g?m: B? ?m tr� th??ng g?m 1 ?m, 6 ch�n, ??a l�t.
C�ng d?ng: D�ng ?? pha tr�, trang tr�, l�m qu� t?ng.
Ph� h?p v?i: Ng??i th�ch tr� ??o, s?u t?m ?? g?m, y�u v?n h�a truy?n th?ng.
??c ?i?m v?n h�a: G?m men lam l� m?t d�ng g?m s? n?i ti?ng c?a Hu?, ph?n �nh n�t ??p c? k�nh, tao nh� trong v?n h�a th??ng tr� c?a ng??i Vi?t.', 
N'B?', N'Hu?'),

('SP036', N'T� he', 20, 25000.00, 200, 
N'Gi?i thi?u chung: T� he Hu? l� ?? ch?i d�n gian ???c n?n t? b?t g?o n?p pha m�u t? nhi�n (t? l� c�y, c? qu?). C�c ngh? nh�n t?o h�nh th�nh c�c con v?t, nh�n v?t l?ch s?, hoa l� ng? ngh?nh, ??y m�u s?c.
Th�nh ph?n: B?t g?o n?p, m�u th?c ph?m t? nhi�n.
Ch?t li?u: B?t n?n.
K�ch th??c: Nh?, c?m tay.
C�ng d?ng: ?? ch?i cho tr? em, qu� l?u ni?m d�n gian.
Ph� h?p v?i: Tr? em, du kh�ch mu?n t�m hi?u v?n h�a truy?n th?ng.
??c ?i?m v?n h�a: T� he l� m?t n�t v?n h�a d�n gian ??c s?c, th? hi?n s? kh�o l�o v� s�ng t?o c?a ng??i th? th? c�ng Hu?, th??ng xu?t hi?n trong c�c d?p l? h?i.', 
N'Con/C�i', N'Hu?'),

('SP037', N'M�c kh�a ??i N?i Hu?', 20, 40000.00, 150, 
N'Gi?i thi?u chung: M�c kh�a in h�nh ho?c t?o h�nh c�c bi?u t??ng c?a ??i N?i Hu? nh? Ng? M�n, ?i?n Th�i H�a, C?u ??nh... L� m�n qu� l?u ni?m nh? g?n, � ngh?a.
Th�nh ph?n: Kim lo?i, nh?a, mica, g? (t�y lo?i).
Ch?t li?u: Thay ??i theo s?n ph?m.
K�ch th??c: Nh? g?n.
C�ng d?ng: G?n ch�a kh�a, trang tr� t�i x�ch, ba l�, l�m qu� k? ni?m.
Ph� h?p v?i: Du kh�ch, h?c sinh, sinh vi�n.
??c ?i?m v?n h�a: Mang h�nh ?nh c?a di s?n v?n h�a th? gi?i ??i N?i Hu?, gi�p du kh�ch ghi nh? chuy?n th?m C? ?�.', 
N'C�i', N'Hu?'),

('SP038', N'R??u Minh M?ng', 21, 350000.00, 50, 
N'Gi?i thi?u chung: R??u Minh M?ng l� lo?i r??u thu?c n?i ti?ng c?a Hu?, ???c ng�m t? nhi?u lo?i th?o d??c qu� theo b�i thu?c gia truy?n c?a vua Minh M?ng. R??u c� t�c d?ng b?i b? s?c kh?e, t?ng c??ng sinh l?c.
Th�nh ph?n: G?o n?p, men r??u, c�c lo?i th?o d??c qu� (nh�n s�m, d�m d??ng ho?c, ba k�ch, ?? tr?ng, k? t?...).
Ch?t li?u: R??u ng�m trong b�nh s�nh ho?c th?y tinh.
Kh?i l??ng: 750ml.
C�ng d?ng: B?i b? s?c kh?e, tr�ng d??ng b? th?n, m?nh g�n c?t. D�ng ?i?u ??.
Ph� h?p v?i: Nam gi?i tu?i trung ni�n, ng??i c?n b?i b? s?c kh?e (theo ch? d?n).
??c ?i?m v?n h�a: G?n li?n v?i c�u chuy?n l?ch s? v? vua Minh M?ng, l� m?t trong nh?ng "Danh t?u" c?a ??t C? ?�.', 
N'Chai', N'Hu?'),

('SP039', N'R??u g?o Hu?', 21, 90000.00, 70, 
N'Gi?i thi?u chung: R??u g?o Hu? ???c n?u th? c�ng t? g?o n?p ho?c g?o t? theo ph??ng ph�p truy?n th?ng. R??u c� v? �m, h??ng th?m ??c tr?ng c?a g?o.
Th�nh ph?n: G?o, men r??u truy?n th?ng.
Ch?t li?u: R??u ??ng trong chai.
Kh?i l??ng: 1 l�t.
C�ng d?ng: D�ng trong c�c b?a ?n, l? ti?c, ng�m c�c lo?i thu?c.
Ph� h?p v?i: Ng??i tr??ng th�nh, s? d?ng c� ch?ng m?c.
??c ?i?m v?n h�a: R??u g?o l� th?c u?ng quen thu?c trong ??i s?ng ng??i d�n Hu?, g?n li?n v?i c�c sinh ho?t c?ng ??ng.', 
N'Chai', N'Hu?'),

--Qu?ng nam
('SP040', N'M� Qu?ng', 22, 45000.00, 120, 
N'Gi?i thi?u chung: M� Qu?ng l� m�n ?n ??c tr?ng v� linh h?n c?a ?m th?c Qu?ng Nam. S?i m� v�ng �ng t? b?t g?o v� ngh?, n??c d�ng (nh�n) ??m ?� t? th?t g�, t�m, th?t heo, tr?ng c�t, ?n k�m b�nh tr�ng m� n??ng gi�n v� rau s?ng.
Th�nh ph?n: S?i m� Qu?ng, th?t g�/heo/t�m, tr?ng c�t, l?c rang, b�nh tr�ng m�, rau s?ng (b�p chu?i, c?i con, gi�...).
C�ng d?ng: M�n ?n ch�nh, no l�u, h??ng v? phong ph�.
Ph� h?p v?i: M?i l?a tu?i, ng??i mu?n th??ng th?c ??c s?n Qu?ng Nam.
??c ?i?m v?n h�a: M� Qu?ng kh�ng ch? l� m�n ?n m� c�n l� n�t v?n h�a, th? hi?n s? h�o s?ng, m?c m?c c?a ng??i d�n x? Qu?ng.', 
N'T�', N'Qu?ng Nam'),

('SP041', N'Cao l?u', 22, 50000.00, 90, 
N'Gi?i thi?u chung: Cao l?u l� m�n m� ??c s?n ch? c� ? H?i An, Qu?ng Nam. S?i m� v�ng, dai ???c l�m t? g?o ng�m n??c tro, n??c d�ng ??c bi?t t? gi?ng B� L?. ?n k�m th?t x� x�u, da heo chi�n gi�n, rau s?ng.
Th�nh ph?n: S?i m� cao l?u, th?t x� x�u, da heo chi�n gi�n, gi� tr?ng, rau th?m, n??c t??ng ??c bi?t.
C�ng d?ng: M�n ?n ch�nh, mang h??ng v? ??c ?�o kh�ng th? nh?m l?n.
Ph� h?p v?i: Du kh�ch ??n H?i An, ng??i mu?n kh�m ph� ?m th?c ??c ?�o.
??c ?i?m v?n h�a: M�n ?n g?n li?n v?i l?ch s? v� v?n h�a c?a ph? c? H?i An, l� s? giao thoa c?a nhi?u n?n v?n h�a.', 
N'T�', N'Qu?ng Nam'),

('SP042', N'B�nh x�o', 22, 65000.00, 80, 
N'Gi?i thi?u chung: B�nh x�o Qu?ng Nam c� k�ch th??c v?a ph?i, v? b�nh v�ng gi�n r?m nh? b?t g?o pha v?i b?t ngh? v� n??c c?t d?a. Nh�n b�nh g?m t�m, th?t ba ch?, gi� ??. ?n k�m rau s?ng v� n??c m?m chua ng?t.
Th�nh ph?n: B?t g?o, b?t ngh?, n??c c?t d?a, t�m, th?t ba ch?, gi� ??, h�nh l�, rau s?ng, n??c m?m.
C�ng d?ng: M�n ?n v?t ho?c m�n ch�nh, h?p d?n b?i ?? gi�n v� h??ng v?.
Ph� h?p v?i: M?i l?a tu?i, ??c bi?t trong nh?ng ng�y se l?nh.
??c ?i?m v?n h�a: M�n ?n d�n d�, quen thu?c trong ??i s?ng ng??i d�n Qu?ng Nam, th??ng ???c l�m trong c�c d?p sum h?p gia ?�nh.', 
N'C�i/??a', N'Qu?ng Nam'),

('SP043', N'N??c m?m C?a Khe', 23, 110000.00, 90, 
N'Gi?i thi?u chung: N??c m?m C?a Khe (Th?ng B�nh, Qu?ng Nam) c?ng l� m?t lo?i n??c m?m truy?n th?ng ???c l�m t? c� c?m t??i, c� h??ng v? th?m ngon, ?? ??m cao, m�u s?c t? nhi�n.
Th�nh ph?n: C� c?m, mu?i bi?n.
Kh?i l??ng: 1 l�t.
C�ng d?ng: Gia v? kh�ng th? thi?u trong b?a ?n, l�m t?ng h??ng v? m�n ?n.
Ph� h?p v?i: C�c gia ?�nh, ng??i tr�n tr?ng s?n ph?m truy?n th?ng.
??c ?i?m v?n h�a: S?n ph?m ??c tr?ng c?a l�ng ngh? n??c m?m C?a Khe, g�p ph?n l�m phong ph� ?m th?c Qu?ng Nam.', 
N'Chai', N'Qu?ng Nam'),

('SP044', N'B�nh t? Qu?ng Nam', 24, 80000.00, 90, 
N'Gi?i thi?u chung: B�nh t? l� m�n b�nh truy?n th?ng c?a ng??i Qu?ng Nam, th??ng xu?t hi?n trong d?p T?t Nguy�n ?�n. B�nh c� m�u n�u s?m, v? ng?t d?u, th?m m�i g?ng, d?o dai t? n?p, t??ng tr?ng cho s? sum v?y, g?n k?t gia ?�nh.
Th�nh ph?n: G?o n?p, ???ng m?t (ho?c ???ng n�u), g?ng t??i.
Kh?i l??ng: 100g.
C�ng d?ng: D�ng trong m�m c? T?t, l�m qu� bi?u, ?n ch?i k�m m� rang ho?c chi�n l�n.
Ph� h?p v?i: Ng??i y�u th�ch ??c s?n truy?n th?ng, gia ?�nh trong d?p l? T?t.
??c ?i?m v?n h�a: L� m�n b�nh c? truy?n g?n v?i v?n h�a T?t x? Qu?ng, th? hi?n tinh th?n g�n gi? n�t ??p ?m th?c d�n gian.', 
N'Chi?c', N'Qu?ng Nam'),

('SP045', N'Tr� xanh Qu?ng Nam', 25, 70000.00, 110, 
N'Gi?i thi?u chung: Tr� xanh Qu?ng Nam, ??c bi?t t? c�c v�ng trung du nh? Ti�n Ph??c, c� ch?t l??ng t?t, l� tr� ???c sao th? c�ng gi? ???c h??ng v? t? nhi�n. N??c tr� xanh, v? ch�t d?u, h?u ng?t.
Th�nh ph?n: 100% b�p tr� xanh t? nhi�n.
Kh?i l??ng: 200g.
C�ng d?ng: Ch?ng oxy h�a, gi�p t?nh t�o, t?t cho tim m?ch, h? tr? gi?m c�n.
Ph� h?p v?i: Ng??i th�ch u?ng tr� m?c, ng??i quan t�m ??n s?c kh?e.
??c ?i?m v?n h�a: C�y ch� l� m?t ph?n c?a n�ng nghi?p truy?n th?ng Qu?ng Nam, u?ng tr� l� m?t n�t v?n h�a ??p.', 
N'G�i', N'Qu?ng Nam'),

('SP046', N'T??ng ?t x�o DHFood', 26, 45000.00, 150, 
N'Gi?i thi?u chung: T??ng ?t x�o DHFood l� s?n ph?m ??m ch?t Qu?ng Nam, mang v? cay ??m, th?m l?ng m�i t?i v� v? chua nh? t? c� chua. ???c ch? bi?n theo ph??ng ph�p truy?n th?ng, gi? tr?n h??ng v? nguy�n b?n.
Th�nh ph?n: ?t t??i, t?i, c� chua, ???ng, mu?i.
Kh?i l??ng: 200g.
C�ng d?ng: D�ng l�m n??c ch?m cho m� Qu?ng, b�nh b�o, cao l?u; c� th? pha lo�ng ?? ??p ho?c n�m m�n ?n.
Ph� h?p v?i: Ng??i y�u th�ch m�n cay truy?n th?ng, th�ch gia v? ??m ?�.
??c ?i?m v?n h�a: G?n li?n v?i ?m th?c mi?n Trung, ??c bi?t l� c�c m�n ??c s?n x? Qu?ng nh? m� Qu?ng, cao l?u.', 
N'H?', N'Qu?ng Nam'),

('SP047', N'T??ng ?t x�o Tri?u Ph�t', 26, 45000.00, 150, 
N'Gi?i thi?u chung: T??ng ?t x�o Tri?u Ph�t ???c l�m t? ?t ch�n ?? t??i, t?i ta v� c� chua ch�n m?ng, mang ??n v? cay d?u v� h?u v? ng?t nh?. S?n ph?m ph� h?p v?i nhi?u kh?u v?, k? c? ng??i ?n cay v?a.
Th�nh ph?n: ?t t??i, t?i, c� chua, ???ng, mu?i.
Kh?i l??ng: 200g.
C�ng d?ng: Ch?m v?i nem n??ng, b�nh tr�ng cu?n th?t heo, b�n m?m n�m; c� th? d�ng l�m n??c s?t tr?n.
Ph� h?p v?i: Ng??i ?n cay nh?, y�u th�ch s? h�i h�a gi?a cay v� ng?t.
??c ?i?m v?n h�a: L� gia v? bi?n t?u t? t??ng ?t H?i An, ph� h?p v?i nhu c?u kh?u v? ?a d?ng trong ?m th?c hi?n ??i.', 
N'H?', N'Qu?ng Nam'),

('SP048', N'B�nh g?m Thanh H�', 27, 450000.00, 35, 
N'Gi?i thi?u chung: B�nh g?m Qu?ng Nam, ??c bi?t t? l�ng g?m Thanh H� (H?i An) ho?c ?i?n B�n, mang n�t m?c m?c, d�n d�. G?m ???c l�m th? c�ng t? ??t s�t, nung b?ng l� c?i truy?n th?ng, c� m�u s?c t? nhi�n c?a ??t nung.
Th�nh ph?n: ??t s�t.
Ch?t li?u: G?m.
K�ch th??c: V?a ph?i.
C�ng d?ng: C?m hoa, trang tr� nh� c?a, s?u t?m.
Ph� h?p v?i: Ng??i y�u th�ch v? ??p m?c m?c, truy?n th?ng, mu?n trang tr� kh�ng gian theo phong c�ch vintage.
??c ?i?m v?n h�a: L�ng g?m Thanh H� c� tu?i ??i h�ng tr?m n?m, s?n ph?m g?m n?i ?�y ph?n �nh ??i s?ng v� k? thu?t l�m g?m truy?n th?ng c?a ng??i Qu?ng.', 
N'C�i/B�nh', N'Qu?ng Nam'),

('SP049', N'L?ng ?�n H?i An', 28, 100000.00, 90, 
N'Gi?i thi?u chung: L?ng ?�n H?i An l� bi?u t??ng r?c r? c?a ph? c?, ???c l�m t? khung tre v� b?c v?i l?a nhi?u m�u s?c, ki?u d�ng ?a d?ng (tr�n, t?i, kim c??ng...).
Th�nh ph?n: Tre, v?i l?a ho?c g?m.
Ch?t li?u: Tre, v?i.
C�ng d?ng: Trang tr� nh� c?a, qu�n x�, s? ki?n, l? h?i, qu� l?u ni?m ??c tr?ng.
Ph� h?p v?i: M?i ng??i, ??c bi?t l� nh?ng ai mu?n mang kh�ng kh� H?i An v? nh�.
??c ?i?m v?n h�a: L?ng ?�n l� m?t ph?n kh�ng th? thi?u c?a kh�ng gian v?n h�a H?i An, ??c bi?t v�o nh?ng ?�m r?m. Ngh? l�m l?ng ?�n l� m?t ngh? th? c�ng truy?n th?ng n?i ti?ng.', 
N'C�i', N'Qu?ng Nam'),

('SP050', N'M�c kh�a ph? c?', 29, 30000.00, 200, 
N'Gi?i thi?u chung: M�c kh�a c� h�nh ?nh c�c c�ng tr�nh ki?n tr�c ??c tr?ng c?a Ph? c? H?i An nh? Ch�a C?u, nh� c?, ho?c c�c bi?u t??ng v?n h�a H?i An.
Th�nh ph?n: Kim lo?i, g?, nh?a.
Ch?t li?u: Thay ??i theo s?n ph?m.
K�ch th??c: Nh? g?n.
C�ng d?ng: G?n ch�a kh�a, qu� l?u ni?m nh? xinh.
Ph� h?p v?i: Du kh�ch ??n H?i An.
??c ?i?m v?n h�a: L?u gi? h�nh ?nh c?a Di s?n V?n h�a Th? gi?i H?i An.', 
N'C�i', N'Qu?ng Nam'),

('SP051', N'Qu?t tay', 29, 60000.00, 130, 
N'Gi?i thi?u chung: Qu?t tay l�m t? gi?y ho?c l?a, c� nan tre, v? c�c h?a ti?t phong c?nh H?i An, th? ph�p ho?c hoa v?n truy?n th?ng.
Th�nh ph?n: Gi?y d�, l?a, tre.
Ch?t li?u: Gi?y/l?a v� tre.
K�ch th??c: Ti�u chu?n qu?t x?p.
C�ng d?ng: Qu?t m�t, ph? ki?n ch?p ?nh, trang tr�, qu� l?u ni?m.
Ph� h?p v?i: Du kh�ch, ng??i y�u th�ch ?? th? c�ng truy?n th?ng.
??c ?i?m v?n h�a: M�n ?? mang ??m n�t � ?�ng, th? hi?n s? thanh l?ch v� l� m�n qu� l?u ni?m tinh t? t? H?i An.', 
N'C�i', N'Qu?ng Nam'),

('SP052', N'Nhang qu?', 30, 75000.00, 110, 
N'Gi?i thi?u chung: Nhang qu? Qu?ng Nam, ??c bi?t t? v�ng qu? Tr� My, c� m�i th?m m?nh m?, ??c tr?ng c?a qu? r?ng. ???c l�m t? b?t qu? nguy�n ch?t.
Th�nh ph?n: B?t v? qu? Tr� My, keo b?i l?i.
Ch?t li?u: Que nhang.
Kh?i l??ng: Th??ng ?�ng b� ho?c h?p.
C�ng d?ng: Th? c�ng, l�m s?ch kh�ng kh�, mang l?i c?m gi�c ?m c�ng, c� t�c d?ng xua ?u?i c�n tr�ng.
Ph� h?p v?i: Gia ?�nh, ??c bi?t nh?ng ai y�u th�ch m�i h??ng n?ng ?m c?a qu?.
??c ?i?m v?n h�a: Qu?ng Nam l� x? s? c?a qu?, nhang qu? l� m?t s?n ph?m th? hi?n gi� tr? c?a c�y qu? trong ??i s?ng v?n h�a v� kinh t?.', 
N'B�/H?p', N'Qu?ng Nam'),

('SP053', N'Gi? s�ch m�y tre', 31, 280000.00, 60, 
N'Gi?i thi?u chung: Gi? s�ch, t�i x�ch l�m t? m�y tre ?an l� s?n ph?m th? c�ng m? ngh? th�n thi?n v?i m�i tr??ng c?a Qu?ng Nam. S?n ph?m ???c ?an l�t t? m?, ki?u d�ng ?a d?ng, mang t�nh ?ng d?ng cao v� n�t ??p t? nhi�n.
Th�nh ph?n: M�y, tre, c�i.
Ch?t li?u: Nguy�n li?u t? nhi�n.
K�ch th??c: 30x50x30 cm (D-R-C).
C�ng d?ng: ??ng ?? d�ng c� nh�n, ph? ki?n th?i trang, ?i ch?, ?i bi?n.
Ph� h?p v?i: Ph? n?, ng??i y�u th�ch s?n ph?m t? nhi�n, th?i trang b?n v?ng.
??c ?i?m v?n h�a: Ngh? ?an l�t m�y tre l� ngh? th? c�ng truy?n th?ng ? nhi?u ??a ph??ng Qu?ng Nam, s?n ph?m th? hi?n s? kh�o l�o v� g?n g?i v?i thi�n nhi�n.', 
N'C�i', N'Qu?ng Nam');

-------------H�nh ?nh
--?� n?ng
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
('CASHONDELI', N'Thanh to�n khi nh?n h�ng (COD)'), -- Using a shorter MaThanhToan for COD as it's very common. CHAR(10) will pad it.
('BANKTRANSF', N'Chuy?n kho?n ng�n h�ng'), 
('VNPAYQR', N'Thanh to�n qua c?ng VNPay (QR Code, Th? n?i ??a, V� ?i?n t?)'),
('MOMOWALLET', N'Thanh to�n qua v� ?i?n t? MoMo'),
('ZALOPAY', N'Thanh to�n qua v� ?i?n t? ZaloPay'),
('INTLCARD', N'Thanh to�n b?ng th? qu?c t? (Visa, Mastercard, JCB)');

--select * from ThanhToan

-- Inserting into DonHang table
-- Order 1
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (1, '2025-05-01', N'?� giao h�ng', 295000.00, 1, N'123 L� L?i, Hu?');

-- Order 2
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (2, '2025-05-03', N'?ang giao h�ng', 180000.00, 2, N'45 H�ng V??ng, ?� N?ng');

-- Order 3
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (3, '2025-05-05', N'?ang x? l�', 400000.00, 3, N'78 Nguy?n Du, Qu?ng Nam');

-- Order 4
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (4, '2025-05-07', N'?� ??t h�ng', 1700000.00, 4, N'12 Tr?n H?ng ??o, Hu?');

-- Order 5
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (5, '2025-05-09', N'?� h?y', 245000.00, 1, N'55 L� Th??ng Ki?t, ?� N?ng');
GO

-- Details for Order 1 (IDDonHang = 1)
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (1, 'SP018', 2); -- B�nh b�o Hu?
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (1, 'SP003', 3); -- B�nh tr�ng cu?n th?t heo ?� N?ng

-- Details for Order 2 (IDDonHang = 2)
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (2, 'SP010', 1); -- Rong bi?n M? Kh� ?� N?ng
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (2, 'SP020', 2); -- B�n b� Hu?

-- Details for Order 3 (IDDonHang = 3)
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (3, 'SP036', 1); -- T� he Hu?
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (3, 'SP052', 5); -- Nhang qu? Qu?ng Nam

-- Details for Order 4 (IDDonHang = 4)
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (4, 'SP012', 1); -- T??ng ??c M? Non N??c ?� N?ng
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (4, 'SP049', 2); -- L?ng ?�n H?i An

-- Details for Order 5 (IDDonHang = 5)
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (5, 'SP040', 1); -- M� Qu?ng
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (5, 'SP002', 4); -- B�n ch? c� ?� N?ng
GO

-- Inserting DonHang and ChiTietDonHang for Jan 2025 - Apr 2025 (20 Orders)
-- Using direct INSERT ... VALUES format
-- Assuming IDDonHang starts from 6

-- ==== January 2025 ====

-- Order 1 (IDDonHang: 6)
-- KhachHang: 1, ThanhToan: COD, TrangThai: ?� giao h�ng
-- Product1: SP018 (B�nh b�o, 35000.00), Qty1: 1
-- Product2: SP019 (B�nh b?t l?c, 45000.00), Qty2: 2
-- TongTien: (35000.00 * 1) + (45000.00 * 2) = 35000 + 90000 = 125000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (1, '2025-01-03', N'?� giao h�ng', 125000.00, 1, N'123 L� L?i, Hu?');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (6, 'SP018', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (6, 'SP019', 2);
GO

-- Order 2 (IDDonHang: 7)
-- KhachHang: 2, ThanhToan: BANKTRANSF, TrangThai: Ho�n th�nh
-- Product1: SP027 (T�m kh�, 250000.00), Qty1: 2  -- ?� ??i SP010 (Rong bi?n M? Kh�) sang SP027 (T�m kh�) theo � ?? b?n
-- Product2: SP021 (Tr� Cung ?�nh, 150000.00), Qty2: 3 -- ?� ??i SP020 (B�n b�) sang SP021 (Tr� Cung ?�nh) theo � ?? b?n
-- TongTien: (250000.00 * 2) + (150000.00 * 3) = 500000 + 450000 = 950000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (2, '2025-01-08', N'Ho�n th�nh', 950000.00, 2, N'45 H�ng V??ng, ?� N?ng');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (7, 'SP027', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (7, 'SP021', 3);
GO

-- Order 3 (IDDonHang: 8)
-- KhachHang: 3, ThanhToan: VNPAYQR, TrangThai: ?� giao h�ng
-- Product1: SP023 (Tinh d?u tr�m, 180000.00), Qty1: 3 -- ?� ??i SP030 (Tinh d?u qu?) sang SP023 (Tinh d?u tr�m)
-- Product2: SP029 (N�n l� b�i th? Hu?, 80000.00), Qty2: 1 -- ?� ??i SP036 (T� he) sang SP029 (N�n l� b�i th? Hu?)
-- TongTien: (180000.00 * 3) + (80000.00 * 1) = 540000 + 80000 = 620000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (3, '2025-01-15', N'?� giao h�ng', 620000.00, 3, N'78 Nguy?n Du, Qu?ng Nam');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (8, 'SP023', 3);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (8, 'SP029', 1);
GO

-- Order 4 (IDDonHang: 9)
-- KhachHang: 4, ThanhToan: MOMOWALLET, TrangThai: Ho�n th�nh
-- Product1: SP011 (T??ng c� ch�p Non N??c, 500000.00), Qty1: 1
-- Product2: SP036 (T� he, 25000.00), Qty2: 2 -- ?� ??i SP044 (T� he) sang SP036 (T� he)
-- TongTien: (500000.00 * 1) + (25000.00 * 2) = 500000 + 50000 = 550000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (4, '2025-01-22', N'Ho�n th�nh', 550000.00, 4, N'12 Tr?n H?ng ??o, Hu?');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (9, 'SP011', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (9, 'SP036', 2);
GO

-- Order 5 (IDDonHang: 10)
-- KhachHang: 5, ThanhToan: ZALOPAY, TrangThai: ?� h?y
-- Product1: SP050 (M�c kh�a ph? c?, 30000.00), Qty1: 2
-- Product2: SP049 (L?ng ?�n H?i An, 100000.00), Qty2: 3 -- ?� ??i SP052 (Nhang qu?) sang SP049 (L?ng ?�n H?i An)
-- TongTien: (30000.00 * 2) + (100000.00 * 3) = 60000 + 300000 = 360000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (5, '2025-01-27', N'?� h?y', 360000.00, 5, N'55 L� Th??ng Ki?t, ?� N?ng');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (10, 'SP050', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (10, 'SP049', 3);
GO

-- ==== February 2025 ==== (Feb 2025 has 28 days)
-- Order 6 (IDDonHang: 11)
-- KhachHang: 1, ThanhToan: INTLCARD, TrangThai: ?� giao h�ng
-- Product1: SP020 (B�n b�, 55000.00), Qty1: 3 -- ?� ??i SP003 (B�nh tr�ng cu?n th?t heo) sang SP020 (B�n b�)
-- Product2: SP028 (C� c?m kh�, 180000.00), Qty2: 1 -- ?� ??i SP011 (T??ng c� ch�p) sang SP028 (C� c?m kh�)
-- TongTien: (55000.00 * 3) + (180000.00 * 1) = 165000 + 180000 = 345000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (1, '2025-02-03', N'?� giao h�ng', 345000.00, 6, N'123 L� L?i, Hu?');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (11, 'SP020', 3);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (11, 'SP028', 1);
GO

-- Order 7 (IDDonHang: 12)
-- KhachHang: 2, ThanhToan: COD, TrangThai: Ho�n th�nh
-- Product1: SP004 (N??c m?m Nam �, 120000.00), Qty1: 1 -- ?� ??i SP015 (N??c m?m Nam �) sang SP004
-- Product2: SP008 (Tr� hoa l�i, 95000.00), Qty2: 2 -- ?� ??i SP023 (Tinh d?u tr�m) sang SP008 (Tr� hoa l�i)
-- TongTien: (120000.00 * 1) + (95000.00 * 2) = 120000 + 190000 = 310000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (2, '2025-02-08', N'Ho�n th�nh', 310000.00, 1, N'45 H�ng V??ng, ?� N?ng');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (12, 'SP004', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (12, 'SP008', 2);
GO

-- Order 8 (IDDonHang: 13)
-- KhachHang: 3, ThanhToan: BANKTRANSF, TrangThai: ?� giao h�ng
-- Product1: SP025 (H??ng tr?m, 100000.00), Qty1: 2 -- ?� ??i SP032 (�o d�i Hu?) sang SP025 (H??ng tr?m)
-- Product2: SP031 (�o c? ph?c Hu?, 500000.00), Qty2: 3 -- ?� ??i SP038 (Tranh th�u tay chim c�ng) sang SP031 (�o c? ph?c Hu?)
-- TongTien: (100000.00 * 2) + (500000.00 * 3) = 200000 + 1500000 = 1700000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (3, '2025-02-15', N'?� giao h�ng', 1700000.00, 2, N'78 Nguy?n Du, Qu?ng Nam');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (13, 'SP025', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (13, 'SP031', 3);
GO

-- Order 9 (IDDonHang: 14)
-- KhachHang: 4, ThanhToan: VNPAYQR, TrangThai: Ho�n th�nh
-- Product1: SP029 (N�n l� b�i th? Hu?, 80000.00), Qty1: 3 -- ?� ??i SP046 (N�n b�i th? hu?) sang SP029 (N�n l� b�i th? Hu?)
-- Product2: SP053 (Gi? s�ch m�y tre, 280000.00), Qty2: 1 -- ?� ??i SP053 (R??u Minh M?ng) sang SP053 (Gi? s�ch m�y tre)
-- TongTien: (80000.00 * 3) + (280000.00 * 1) = 240000 + 280000 = 520000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (4, '2025-02-22', N'Ho�n th�nh', 520000.00, 3, N'12 Tr?n H?ng ??o, Hu?');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (14, 'SP029', 3);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (14, 'SP053', 1);
GO

-- Order 10 (IDDonHang: 15)
-- KhachHang: 5, ThanhToan: MOMOWALLET, TrangThai: ?� h?y
-- Product1: SP012 (T??ng ??c M? Non N??c, 1500000.00), Qty1: 1 -- ?� ??i SP060 (Chu?i h?t tr?m h??ng) sang SP012 (T??ng ??c M? Non N??c)
-- Product2: SP002 (B�n ch? c�, 50000.00), Qty2: 2 -- ?� ??i SP063 (Ch� h?t sen long nh�n) sang SP002 (B�n ch? c�)
-- TongTien: (1500000.00 * 1) + (50000.00 * 2) = 1500000 + 100000 = 1600000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (5, '2025-02-25', N'?� h?y', 1600000.00, 4, N'55 L� Th??ng Ki?t, ?� N?ng');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (15, 'SP012', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (15, 'SP002', 2);
GO

-- ==== March 2025 ====
-- Order 11 (IDDonHang: 16)
-- KhachHang: 1, ThanhToan: ZALOPAY, TrangThai: ?� giao h�ng
-- Product1: SP001 (Ram cu?n c?i, 60000.00), Qty1: 2
-- Product2: SP006 (C� b� kh�, 320000.00), Qty2: 3 -- ?� ??i SP013 (M�c kh�a c?u r?ng) sang SP006 (C� b� kh�)
-- TongTien: (60000.00 * 2) + (320000.00 * 3) = 120000 + 960000 = 1080000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (1, '2025-03-03', N'?� giao h�ng', 1080000.00, 5, N'123 L� L?i, Hu?');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (16, 'SP001', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (16, 'SP006', 3);
GO

-- Order 12 (IDDonHang: 17)
-- KhachHang: 2, ThanhToan: INTLCARD, TrangThai: Ho�n th�nh
-- Product1: SP022 (Tr� hoa atiso, 120000.00), Qty1: 3 -- ?� ??i SP021 (Tr� Cung ?�nh) sang SP022 (Tr� hoa atiso)
-- Product2: SP015 (Tinh d?u s? chanh, 150000.00), Qty2: 1 -- ?� ??i SP028 (C� c?m kh�) sang SP015 (Tinh d?u s? chanh)
-- TongTien: (120000.00 * 3) + (150000.00 * 1) = 360000 + 150000 = 510000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (2, '2025-03-08', N'Ho�n th�nh', 510000.00, 6, N'45 H�ng V??ng, ?� N?ng');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (17, 'SP022', 3);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (17, 'SP015', 1);
GO

-- Order 13 (IDDonHang: 18)
-- KhachHang: 3, ThanhToan: COD, TrangThai: ?� giao h�ng
-- Product1: SP037 (M�c kh�a ??i N?i Hu?, 40000.00), Qty1: 1 -- ?� ??i SP037 (�o c? ph?c Hu?) sang SP037 (M�c kh�a ??i N?i Hu?)
-- Product2: SP013 (M�c kh�a c?u R?ng, 35000.00), Qty2: 2 -- ?� ??i SP041 (M� h�nh c?u r?ng) sang SP013 (M�c kh�a c?u R?ng)
-- TongTien: (40000.00 * 1) + (35000.00 * 2) = 40000 + 70000 = 110000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (3, '2025-03-15', N'?� giao h�ng', 110000.00, 1, N'78 Nguy?n Du, Qu?ng Nam');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (18, 'SP037', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (18, 'SP013', 2);
GO

-- Order 14 (IDDonHang: 19)
-- KhachHang: 4, ThanhToan: BANKTRANSF, TrangThai: Ho�n th�nh
-- Product1: SP017 (R??u g?o ?� N?ng, 85000.00), Qty1: 2 -- ?� ??i SP054 (R??u g?o Hu?) sang SP017 (R??u g?o ?� N?ng)
-- Product2: SP049 (L?ng ?�n H?i An, 100000.00), Qty2: 3 -- ?� ??i SP061 (?�n l?ng phong th?y) sang SP049 (L?ng ?�n H?i An)
-- TongTien: (85000.00 * 2) + (100000.00 * 3) = 170000 + 300000 = 470000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (4, '2025-03-22', N'Ho�n th�nh', 470000.00, 2, N'12 Tr?n H?ng ??o, Hu?');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (19, 'SP017', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (19, 'SP049', 3);
GO

-- Order 15 (IDDonHang: 20)
-- KhachHang: 5, ThanhToan: VNPAYQR, TrangThai: ?� h?y
-- Product1: SP040 (M� Qu?ng, 45000.00), Qty1: 3 -- ?� ??i SP070 (Ch� ??u ?en) sang SP040 (M� Qu?ng)
-- Product2: SP003 (B�nh tr�ng cu?n th?t heo, 75000.00), Qty2: 1 -- ?� ??i SP074 (B�nh kh� m� C?m L?) sang SP003 (B�nh tr�ng cu?n th?t heo)
-- TongTien: (45000.00 * 3) + (75000.00 * 1) = 135000 + 75000 = 210000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (5, '2025-03-27', N'?� h?y', 210000.00, 3, N'55 L� Th??ng Ki?t, ?� N?ng');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (20, 'SP040', 3);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (20, 'SP003', 1);
GO

-- ==== April 2025 ====
-- Order 16 (IDDonHang: 21)
-- KhachHang: 1, ThanhToan: MOMOWALLET, TrangThai: ?� giao h�ng
-- Product1: SP005 (M?c kh�, 650000.00), Qty1: 1 -- ?� ??i SP005 (B�n ch? c�) sang SP005 (M?c kh�)
-- Product2: SP043 (N??c m?m C?a Khe, 110000.00), Qty2: 2
-- TongTien: (650000.00 * 1) + (110000.00 * 2) = 650000 + 220000 = 870000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (1, '2025-04-03', N'?� giao h�ng', 870000.00, 4, N'123 L� L?i, Hu?');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (21, 'SP005', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (21, 'SP043', 2);
GO

-- Order 17 (IDDonHang: 22)
-- KhachHang: 2, ThanhToan: ZALOPAY, TrangThai: Ho�n th�nh
-- Product1: SP025 (H??ng tr?m, 100000.00), Qty1: 2 -- ?� ??i SP025 (Tr� th?o m?c) sang SP025 (H??ng tr?m)
-- Product2: SP016 (Tinh d?u b?c h�, 130000.00), Qty2: 3 -- ?� ??i SP031 (Tinh d?u ng?i c?u) sang SP016 (Tinh d?u b?c h�)
-- TongTien: (100000.00 * 2) + (130000.00 * 3) = 200000 + 390000 = 590000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (2, '2025-04-08', N'Ho�n th�nh', 590000.00, 5, N'45 H�ng V??ng, ?� N?ng');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (22, 'SP025', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (22, 'SP016', 3);
GO

-- Order 18 (IDDonHang: 23)
-- KhachHang: 3, ThanhToan: INTLCARD, TrangThai: ?� giao h�ng
-- Product1: SP053 (Gi? s�ch m�y tre, 280000.00), Qty1: 3
-- Product2: SP047 (T??ng ?t x�o Tri?u Ph�t, 45000.00), Qty2: 1 -- ?� ??i SP047 (M�c kh�a c?u R?ng) sang SP047 (T??ng ?t x�o Tri?u Ph�t)
-- TongTien: (280000.00 * 3) + (45000.00 * 1) = 840000 + 45000 = 885000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (3, '2025-04-15', N'?� giao h�ng', 885000.00, 6, N'78 Nguy?n Du, Qu?ng Nam');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (23, 'SP053', 3);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (23, 'SP047', 1);
GO

-- Order 19 (IDDonHang: 24)
-- KhachHang: 4, ThanhToan: COD, TrangThai: Ho�n th�nh
-- Product1: SP017 (R??u g?o ?� N?ng, 85000.00), Qty1: 1 -- ?� ??i SP057 (R??u g?o l?t) sang SP017 (R??u g?o ?� N?ng)
-- Product2: SP018 (B�nh b�o, 35000.00), Qty2: 2 -- ?� ??i SP065 (Ch� b?t l?c heo quay) sang SP018 (B�nh b�o)
-- TongTien: (85000.00 * 1) + (35000.00 * 2) = 85000 + 70000 = 155000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (4, '2025-04-22', N'Ho�n th�nh', 155000.00, 1, N'12 Tr?n H?ng ??o, Hu?');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (24, 'SP017', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (24, 'SP018', 2);
GO

-- Order 20 (IDDonHang: 25)
-- KhachHang: 5, ThanhToan: BANKTRANSF, TrangThai: ?� h?y
-- Product1: SP003 (B�nh tr�ng cu?n th?t heo, 75000.00), Qty1: 2 -- ?� ??i SP076 (B�nh thu?n) sang SP003 (B�nh tr�ng cu?n th?t heo)
-- Product2: SP008 (Tr� hoa l�i, 95000.00), Qty2: 3 -- ?� ??i SP008 (Cao l?u) sang SP008 (Tr� hoa l�i)
-- TongTien: (75000.00 * 2) + (95000.00 * 3) = 150000 + 285000 = 435000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan, diaChi)
VALUES (5, '2025-04-27', N'?� h?y', 435000.00, 2, N'55 L� Th??ng Ki?t, ?� N?ng');
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (25, 'SP003', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (25, 'SP008', 3);
GO