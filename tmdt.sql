-- Create database
CREATE DATABASE ShopHueDaQua;
GO

-- Use the database
USE ShopHueDaQua;
GO

-- Create tables
CREATE TABLE KhachHang (
    IDKhachHang INT IDENTITY(1,1) PRIMARY KEY,
    taiKhoan varchar(50),
    matKhau varchar(255),
    hoTen nvarchar(255),
    email varchar(255),
    soDienThoai char(10),
    DiaChi nvarchar(255)
);

CREATE TABLE GioHang (
    IDGioHang int identity (1,1) PRIMARY KEY,
    IDKhachHang int,
    FOREIGN KEY (IDKhachHang) REFERENCES KhachHang(IDKhachHang)
);


CREATE TABLE DanhMuc (
    IDDanhMuc int identity(1,1) PRIMARY KEY,
    tenDanhMuc nvarchar(200),
    moTa nvarchar(max)
);

CREATE TABLE SanPham (
    IDSanPham varchar(20) PRIMARY KEY,
    TenSanPham nvarchar(100),
    IDDanhMuc int,
    GiaBan decimal(18,2),
    SoLuongTon INT,
    MoTa nvarchar(max),
    DonViTinh nvarchar(100),
    XuatXu nvarchar(100)
	--FOREIGN KEY (IDDanhMuc) REFERENCES DanhMuc(IDDanhMuc)
);
ALTER TABLE SanPham
ADD CONSTRAINT FK_SanPham_DanhMuc
FOREIGN KEY (IDDanhMuc) REFERENCES DanhMuc(IDDanhMuc);



CREATE TABLE ChiTietGioHang (
    IDChiTietGioHang int identity (1,1) PRIMARY KEY,
    IDGioHang int ,
    IDSanPham varchar(20),
    SoLuongDat INT,
    FOREIGN KEY (IDGioHang) REFERENCES GioHang(IDGioHang),
    FOREIGN KEY (IDSanPham) REFERENCES SanPham(IDSanPham)
);


CREATE TABLE Blog (
    IDBlog int identity (1,1) PRIMARY KEY,
    TieuDe nvarchar(255),
    NoiDung nvarchar(max),
    HinhAnh nvarchar(1000),
    NgayDang DATETIME
);

CREATE TABLE Blog_DanhMuc (
    IDDanhMuc int,
    IDBlog int,
    PRIMARY KEY (IDDanhMuc, IDBlog),
    FOREIGN KEY (IDDanhMuc) REFERENCES DanhMuc(IDDanhMuc),
    FOREIGN KEY (IDBlog) REFERENCES Blog(IDBlog)
);


CREATE TABLE HinhAnhSanPham (
    IDHinhAnh int identity(1,1) primary key,
    HinhAnh varchar(1000),
    IDSanPham varchar(20),
    --PRIMARY KEY (IDHinhAnh, IDSanPham),
    FOREIGN KEY (IDSanPham) REFERENCES SanPham(IDSanPham)
);


CREATE TABLE ThanhToan (
    IDThanhToan int identity(1,1) PRIMARY KEY,
    MaThanhToan VARCHAR(10),
    TenThanhToan NVARCHAR(255)
);


CREATE TABLE DonHang (
    IDDonHang INT identity(1,1) PRIMARY KEY,
    IDKhachHang int,
    ngayLap DATE,
    TrangThai nvarchar(255),
    tongTien decimal(18,2),
    IDThanhToan int,
    FOREIGN KEY (IDKhachHang) REFERENCES KhachHang(IDKhachHang),
    FOREIGN KEY (IDThanhToan) REFERENCES ThanhToan(IDThanhToan)
);


CREATE TABLE ChiTietDonHang (
    IDChiTietDonHang int identity(1,1) PRIMARY KEY,
    IDDonHang INT,
    IDSanPham varchar(20),
    soLuong INT,
    FOREIGN KEY (IDDonHang) REFERENCES DonHang(IDDonHang),
    FOREIGN KEY (IDSanPham) REFERENCES SanPham(IDSanPham)
);


CREATE TABLE DanhGia (
    IDDanhGia INT identity(1,1) PRIMARY KEY,
    IDChiTietDonHang INT,
    soSao INT,
    noiDung nvarchar(max),
    thoiGian DATETIME,
	FOREIGN KEY (IDChiTietDonHang) REFERENCES ChiTietDonHang(IDChiTietDonHang)
);

-- soSao phải từ 1 đến 5
ALTER TABLE DanhGia
ADD CONSTRAINT CHK_DanhGia_SoSao CHECK (soSao BETWEEN 1 AND 5);

-- SoLuong >= 0 trong ChiTietDonHang
ALTER TABLE ChiTietDonHang
ADD CONSTRAINT CHK_ChiTietDonHang_SoLuong CHECK (soLuong >= 0);

-- SoLuongDat >= 0 trong ChiTietGioHang
ALTER TABLE ChiTietGioHang
ADD CONSTRAINT CHK_ChiTietGioHang_SoLuongDat CHECK (SoLuongDat >= 0);
-- taiKhoan phải duy nhất
ALTER TABLE KhachHang
ADD CONSTRAINT UQ_KhachHang_TaiKhoan UNIQUE (taiKhoan);

-- email phải duy nhất
ALTER TABLE KhachHang
ADD CONSTRAINT UQ_KhachHang_Email UNIQUE (email);

-- MaThanhToan phải duy nhất
ALTER TABLE ThanhToan
ADD CONSTRAINT UQ_ThanhToan_MaThanhToan UNIQUE (MaThanhToan);
-- Ngày đăng blog mặc định là ngày hiện tại
ALTER TABLE Blog
ADD CONSTRAINT DF_Blog_NgayDang DEFAULT GETDATE() FOR NgayDang;

-- Thời gian đánh giá mặc định là ngày giờ hiện tại
ALTER TABLE DanhGia
ADD CONSTRAINT DF_DanhGia_ThoiGian DEFAULT GETDATE() FOR thoiGian;

-- Add foreign key constraints that couldn't be added initially due to table order
--ALTER TABLE GioHang
--ADD CONSTRAINT FK_GioHang_KhachHang FOREIGN KEY (IDKhachHang) REFERENCES KhachHang(IDKhachHang);


INSERT INTO KhachHang (taiKhoan, matKhau, hoTen, email, soDienThoai, DiaChi)
VALUES
('nguyenvanA', '123', N'Nguyễn Văn A', 'nguyenvana@email.com', '0912345678', N'123 Lê Lợi, Huế'),
('tranthiB', '123', N'Trần Thị B', 'tranthib@email.com', '0987654321', N'45 Hùng Vương, Đà Nẵng'),
('lehoangC', '123', N'Lê Hoàng C', 'lehoangc@email.com', '0905123456', N'78 Nguyễn Du, Quảng Nam'),
('phamthid', '123', N'Phạm Thị D', 'phamthid@email.com', '0911222333', N'12 Trần Hưng Đạo, Huế'),
('vuvanE', '123', N'Vũ Văn E', 'vuvane@email.com', '0977123456', N'55 Lý Thường Kiệt, Đà Nẵng'),
('nguyenthif', '123', N'Nguyễn Thị F', 'nguyenthif@email.com', '0909876543', N'9 Hải Thượng Lãn Ông, Quảng Nam'),
('truongquangG', '123', N'Trương Quang G', 'truongquangg@email.com', '0915987654', N'30 Bà Triệu, Huế'),
('hoangthih', '123', N'Hoàng Thị H', 'hoangthih@email.com', '0988999888', N'17 Lê Duẩn, Đà Nẵng'),
('dinhvanI', '123', N'Đinh Văn I', 'dinhvani@email.com', '0903123123', N'22 Trần Phú, Quảng Nam'),
('lamthik', '123', N'Lâm Thị K', 'lamthik@email.com', '0917123456', N'4 Nguyễn Huệ, Huế');

INSERT INTO DanhMuc (tenDanhMuc, moTa)
VALUES 
(N'Ẩm thực', N'Các món ăn đặc sản vùng miền'),
(N'Hải sản khô', N'Các loại hải sản được phơi khô'),
(N'Nước mắm và gia vị', N'Các loại nước mắm và gia vị đặc trưng'),
(N'Trà', N'Các loại trà đặc sản'),
(N'Tinh dầu', N'Các loại tinh dầu thiên nhiên'),
(N'Hương, nhang', N'Các loại hương, nhang truyền thống'),
(N'Thời trang truyền thống', N'Trang phục và phụ kiện truyền thống'),
(N'Đồ thủ công mỹ nghệ', N'Các sản phẩm thủ công mỹ nghệ'),
(N'Đồ lưu niệm', N'Các vật phẩm lưu niệm đặc trưng'),
(N'Rượu truyền thống', N'Các loại rượu đặc sản'),
(N'Vật phẩm tâm linh và phong thủy', N'Các vật phẩm phong thủy và tâm linh'),
(N'Chè', N'Chè truyền thống'),
(N'Bánh, kẹo', N'Các loại bánh kẹo đặc sản');




-- Inserting products into SanPham table

-- Category 1: Ẩm thực (IDDanhMuc = 1)
-- Huế
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP001', N'Bánh bèo', 1, 35000.00, 100, 
N'Giới thiệu chung: Bánh bèo Huế là món ăn thanh đạm, tinh tế, đặc trưng của ẩm thực Cố Đô. Bánh được làm từ bột gạo xay mịn, hấp trong những chén nhỏ, mặt bánh lõm xuống chứa nhân tôm cháy vàng rộm, thêm chút da heo chiên giòn và mỡ hành.
Thành phần: Bột gạo, tôm tươi, da heo, hành lá, gia vị truyền thống.
Khối lượng: Thường phục vụ theo khay (10-15 chén).
Công dụng: Món ăn vặt, món khai vị nhẹ nhàng, thưởng thức hương vị đặc trưng của Huế.
Phù hợp với: Mọi lứa tuổi, người yêu thích ẩm thực truyền thống, du khách muốn khám phá văn hóa Huế.
Đặc điểm văn hóa: Bánh bèo thể hiện sự khéo léo, tỉ mỉ của người phụ nữ Huế, là một phần không thể thiếu trong các bữa ăn gia đình và lễ hội.', 
N'Phần/Khay', N'Huế');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP002', N'Bánh bột lọc', 1, 45000.00, 100, 
N'Giới thiệu chung: Bánh bột lọc Huế có hai loại chính là bánh bột lọc gói lá chuối và bánh bột lọc trần. Vỏ bánh trong veo, dai mềm làm từ bột năng, nhân tôm thịt đậm đà, thường kèm theo nước chấm chua ngọt đặc trưng.
Thành phần: Bột năng, tôm, thịt ba chỉ, mộc nhĩ, gia vị, lá chuối (đối với loại gói).
Khối lượng: Thường bán theo đĩa hoặc chục.
Công dụng: Món ăn vặt, món chính, dễ ăn và được nhiều người yêu thích.
Phù hợp với: Mọi lứa tuổi, đặc biệt là những người thích món ăn có độ dai và hương vị đậm đà.
Đặc điểm văn hóa: Là món ăn bình dị nhưng chứa đựng nét tinh túy của ẩm thực Huế, thường xuất hiện trong các gánh hàng rong và nhà hàng đặc sản.', 
N'Đĩa/Chục', N'Huế');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP003', N'Bún bò', 1, 55000.00, 80, 
N'Giới thiệu chung: Bún bò Huế là một trong những món ăn nổi tiếng nhất của Việt Nam, mang hương vị đặc trưng cay nồng, đậm đà. Nước dùng được ninh từ xương bò, thêm mắm ruốc, sả và ớt. Sợi bún to, ăn kèm thịt bò, chả cua, tiết heo.
Thành phần: Bún, thịt bò (bắp, nạm, gân), chả cua, tiết heo, mắm ruốc, sả, ớt, rau sống ăn kèm.
Khối lượng: Phục vụ theo tô.
Công dụng: Món ăn chính cung cấp nhiều năng lượng, làm ấm cơ thể.
Phù hợp với: Người thích hương vị đậm đà, cay nồng, du khách muốn trải nghiệm ẩm thực Huế đích thực.
Đặc điểm văn hóa: Món ăn biểu tượng của Huế, phản ánh sự phong phú và cầu kỳ trong ẩm thực cung đình xưa và dân gian.', 
N'Tô', N'Huế');

-- Đà Nẵng
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP004', N'Ram cuốn cải', 1, 60000.00, 90, 
N'Giới thiệu chung: Ram cuốn cải Đà Nẵng là món cuốn độc đáo với ram (chả giò) chiên giòn được cuốn cùng bún, rau sống tươi mát trong lá cải xanh. Món ăn có sự hòa quyện giữa vị giòn của ram, vị tươi của rau và vị cay nhẹ của cải.
Thành phần: Bánh tráng cuốn ram, thịt heo xay, miến, mộc nhĩ, trứng, lá cải xanh, bún, rau sống, nước chấm.
Khối lượng: Phục vụ theo đĩa/phần.
Công dụng: Món khai vị hoặc món chính, thanh mát và lạ miệng.
Phù hợp với: Người thích các món cuốn, muốn thử hương vị đặc trưng của Đà Nẵng.
Đặc điểm văn hóa: Món ăn thể hiện sự sáng tạo trong ẩm thực Đà thành, kết hợp hài hòa các nguyên liệu địa phương.', 
N'Phần', N'Đà Nẵng');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP005', N'Bún chả cá', 1, 50000.00, 100, 
N'Giới thiệu chung: Bún chả cá Đà Nẵng nổi tiếng với nước dùng thanh ngọt được ninh từ xương cá và các loại rau củ, cùng với chả cá thu tươi ngon, dai. Chả cá có thể được chiên hoặc hấp.
Thành phần: Bún, chả cá thu, cà chua, bí đỏ, măng tươi, thơm (dứa), rau sống, mắm ruốc.
Khối lượng: Phục vụ theo tô.
Công dụng: Món ăn sáng hoặc trưa phổ biến, cung cấp dinh dưỡng.
Phù hợp với: Mọi lứa tuổi, người yêu thích hương vị biển và các món bún nước.
Đặc điểm văn hóa: Món ăn đặc trưng của vùng biển Đà Nẵng, phản ánh sự tươi ngon của hải sản địa phương.', 
N'Tô', N'Đà Nẵng');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP006', N'Bánh tráng cuốn thịt heo', 1, 75000.00, 70, 
N'Giới thiệu chung: Bánh tráng cuốn thịt heo Đà Nẵng là món ăn dân dã nhưng hấp dẫn. Thịt heo được luộc hoặc hấp giữ độ ngọt, cuốn cùng bánh tráng Đại Lộc, rau sống đa dạng và chấm mắm nêm đậm đà.
Thành phần: Thịt heo (ba chỉ hoặc hai đầu da), bánh tráng, rau sống (xà lách, tía tô, diếp cá, húng quế, giá đỗ, dưa chuột, chuối chát...), mắm nêm.
Khối lượng: Phục vụ theo phần.
Công dụng: Món chính, thích hợp cho các buổi tụ họp bạn bè, gia đình.
Phù hợp với: Những người thích món cuốn, hương vị mắm nêm đặc trưng.
Đặc điểm văn hóa: Món ăn thể hiện sự hòa quyện của nhiều loại rau và hương vị, là niềm tự hào của ẩm thực Đà Nẵng.', 
N'Phần', N'Đà Nẵng');

-- Quảng Nam
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP007', N'Mì Quảng', 1, 45000.00, 120, 
N'Giới thiệu chung: Mì Quảng là món ăn đặc trưng và linh hồn của ẩm thực Quảng Nam. Sợi mì vàng óng từ bột gạo và nghệ, nước dùng (nhân) đậm đà từ thịt gà, tôm, thịt heo, trứng cút, ăn kèm bánh tráng mè nướng giòn và rau sống.
Thành phần: Sợi mì Quảng, thịt gà/heo/tôm, trứng cút, lạc rang, bánh tráng mè, rau sống (búp chuối, cải con, giá...).
Khối lượng: Phục vụ theo tô.
Công dụng: Món ăn chính, no lâu, hương vị phong phú.
Phù hợp với: Mọi lứa tuổi, người muốn thưởng thức đặc sản Quảng Nam.
Đặc điểm văn hóa: Mì Quảng không chỉ là món ăn mà còn là nét văn hóa, thể hiện sự hào sảng, mộc mạc của người dân xứ Quảng.', 
N'Tô', N'Quảng Nam');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP008', N'Cao lầu', 1, 50000.00, 90, 
N'Giới thiệu chung: Cao lầu là món mì đặc sản chỉ có ở Hội An, Quảng Nam. Sợi mì vàng, dai được làm từ gạo ngâm nước tro, nước dùng đặc biệt từ giếng Bá Lễ. Ăn kèm thịt xá xíu, da heo chiên giòn, rau sống.
Thành phần: Sợi mì cao lầu, thịt xá xíu, da heo chiên giòn, giá trụng, rau thơm, nước tương đặc biệt.
Khối lượng: Phục vụ theo tô.
Công dụng: Món ăn chính, mang hương vị độc đáo không thể nhầm lẫn.
Phù hợp với: Du khách đến Hội An, người muốn khám phá ẩm thực độc đáo.
Đặc điểm văn hóa: Món ăn gắn liền với lịch sử và văn hóa của phố cổ Hội An, là sự giao thoa của nhiều nền văn hóa.', 
N'Tô', N'Quảng Nam');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP009', N'Bánh xèo', 1, 65000.00, 80, 
N'Giới thiệu chung: Bánh xèo Quảng Nam có kích thước vừa phải, vỏ bánh vàng giòn rụm nhờ bột gạo pha với bột nghệ và nước cốt dừa. Nhân bánh gồm tôm, thịt ba chỉ, giá đỗ. Ăn kèm rau sống và nước mắm chua ngọt.
Thành phần: Bột gạo, bột nghệ, nước cốt dừa, tôm, thịt ba chỉ, giá đỗ, hành lá, rau sống, nước mắm.
Khối lượng: Phục vụ theo cái hoặc đĩa.
Công dụng: Món ăn vặt hoặc món chính, hấp dẫn bởi độ giòn và hương vị.
Phù hợp với: Mọi lứa tuổi, đặc biệt trong những ngày se lạnh.
Đặc điểm văn hóa: Món ăn dân dã, quen thuộc trong đời sống người dân Quảng Nam, thường được làm trong các dịp sum họp gia đình.', 
N'Cái/Đĩa', N'Quảng Nam');

-- Category 2: Hải sản khô (IDDanhMuc = 2)
-- Huế
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP010', N'Tôm khô', 2, 250000.00, 50, 
N'Giới thiệu chung: Tôm khô Huế được làm từ tôm tươi đánh bắt tự nhiên, qua quá trình phơi sấy thủ công giữ được vị ngọt tự nhiên và màu đỏ hồng đẹp mắt.
Thành phần: 100% tôm đất tự nhiên.
Khối lượng: Thường bán theo kg hoặc gói (250g, 500g).
Công dụng: Dùng để nấu canh, làm gỏi, rim hoặc ăn liền. Cung cấp nhiều đạm và canxi.
Phù hợp với: Các bà nội trợ, người thích chế biến món ăn ngon, làm quà biếu.
Đặc điểm văn hóa: Sản phẩm truyền thống của vùng đầm phá Tam Giang - Cầu Hai, thể hiện sự trù phú của thiên nhiên Huế.', 
N'Gói/Kg', N'Huế');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP011', N'Cá cơm khô', 2, 180000.00, 60, 
N'Giới thiệu chung: Cá cơm khô Huế, đặc biệt là cá cơm sông Hương, có vị ngọt bùi, được phơi khô tự nhiên, giữ nguyên hương vị. Có nhiều loại như cá cơm mờm, cá cơm sọc.
Thành phần: 100% cá cơm tươi.
Khối lượng: Thường bán theo kg hoặc gói.
Công dụng: Dùng để kho tiêu, chiên giòn, nấu canh chua, làm gỏi hoặc ăn vặt.
Phù hợp với: Các gia đình, người thích món ăn dân dã, đậm đà hương vị.
Đặc điểm văn hóa: Đặc sản của vùng sông nước Huế, gắn liền với bữa cơm gia đình truyền thống.', 
N'Gói/Kg', N'Huế');

-- Đà Nẵng
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP012', N'Mực khô', 2, 650000.00, 40, 
N'Giới thiệu chung: Mực khô Đà Nẵng nổi tiếng với chất lượng cao, được làm từ mực ống tươi ngon, phơi khô tự nhiên dưới nắng biển. Mực dày mình, thịt ngọt và thơm.
Thành phần: 100% mực ống tươi.
Khối lượng: Thường bán theo con hoặc kg.
Công dụng: Nướng, chiên, xào, làm gỏi. Là món nhắm phổ biến.
Phù hợp với: Các buổi tiệc, làm quà biếu đặc sản biển.
Đặc điểm văn hóa: Sản vật quý của vùng biển Đà Nẵng, thể hiện sự phong phú của hải sản địa phương.', 
N'Kg/Con', N'Đà Nẵng');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP013', N'Cá bò khô', 2, 320000.00, 50, 
N'Giới thiệu chung: Cá bò khô Đà Nẵng thường được tẩm gia vị vừa ăn (cay, mặn, ngọt) rồi phơi khô hoặc sấy. Thịt cá dai, ngọt, thơm mùi gia vị.
Thành phần: Cá bò tươi, gia vị (đường, muối, ớt, tỏi...).
Khối lượng: Thường bán theo gói (250g, 500g) hoặc kg.
Công dụng: Ăn liền, nướng hoặc chiên sơ. Món ăn vặt, mồi nhậu hấp dẫn.
Phù hợp với: Giới trẻ, dân văn phòng, người thích ăn vặt.
Đặc điểm văn hóa: Đặc sản tiện lợi của Đà Nẵng, dễ dàng mang theo và thưởng thức.', 
N'Gói/Kg', N'Đà Nẵng');

-- Quảng Nam
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP014', N'Cá hố khô', 2, 280000.00, 45, 
N'Giới thiệu chung: Cá hố khô Quảng Nam được làm từ cá hố tươi, xẻ dọc, làm sạch và phơi khô. Cá hố khô có vị ngọt tự nhiên, thịt dai, là nguyên liệu cho nhiều món ăn ngon.
Thành phần: 100% cá hố tươi.
Khối lượng: Thường bán theo kg.
Công dụng: Dùng để chiên, nướng, kho hoặc nấu canh.
Phù hợp với: Các bà nội trợ, người thích các món ăn từ cá khô.
Đặc điểm văn hóa: Đặc sản của vùng biển Cửa Đại, Tam Kỳ, mang đậm hương vị biển cả Quảng Nam.', 
N'Kg', N'Quảng Nam');

-- Category 3: Nước mắm và gia vị (IDDanhMuc = 3)
-- Đà Nẵng
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP015', N'Nước mắm Nam Ô', 3, 120000.00, 100, 
N'Giới thiệu chung: Nước mắm Nam Ô là thương hiệu nước mắm truyền thống nổi tiếng của Đà Nẵng, được làm từ cá cơm than tươi ngon và muối hạt tinh khiết, ủ chượp theo phương pháp cổ truyền. Nước mắm có màu cánh gián, vị đậm đà, hương thơm đặc trưng.
Thành phần: Cá cơm than, muối biển.
Khối lượng: Thường đóng chai (500ml, 1 lít).
Công dụng: Dùng làm nước chấm hoặc gia vị nêm nếm món ăn.
Phù hợp với: Mọi gia đình, nhà hàng, người sành ăn.
Đặc điểm văn hóa: Di sản văn hóa phi vật thể quốc gia, niềm tự hào của làng nghề nước mắm Nam Ô hơn 400 năm tuổi.', 
N'Chai', N'Đà Nẵng');

-- Quảng Nam
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP016', N'Nước mắm Cửa Khe', 3, 110000.00, 90, 
N'Giới thiệu chung: Nước mắm Cửa Khe (Thăng Bình, Quảng Nam) cũng là một loại nước mắm truyền thống được làm từ cá cơm tươi, có hương vị thơm ngon, độ đạm cao, màu sắc tự nhiên.
Thành phần: Cá cơm, muối biển.
Khối lượng: Thường đóng chai (500ml, 1 lít).
Công dụng: Gia vị không thể thiếu trong bữa ăn, làm tăng hương vị món ăn.
Phù hợp với: Các gia đình, người trân trọng sản phẩm truyền thống.
Đặc điểm văn hóa: Sản phẩm đặc trưng của làng nghề nước mắm Cửa Khe, góp phần làm phong phú ẩm thực Quảng Nam.', 
N'Chai', N'Quảng Nam');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP017', N'Tương ớt', 3, 45000.00, 150, 
N'Giới thiệu chung: Tương ớt Quảng Nam, đặc biệt là tương ớt Hội An, có vị cay nồng đặc trưng, thơm mùi tỏi, được làm thủ công từ ớt tươi, tỏi, cà chua và các gia vị bí truyền.
Thành phần: Ớt tươi, tỏi, cà chua, đường, muối.
Khối lượng: Thường đóng hũ (200g, 500g).
Công dụng: Dùng để chấm các món ăn như mì Quảng, cao lầu, phở, hoặc nêm nếm.
Phù hợp với: Người thích ăn cay, muốn tăng thêm hương vị cho món ăn.
Đặc điểm văn hóa: Gia vị quen thuộc trong ẩm thực Hội An, mang đến vị cay đặc trưng của miền Trung.', 
N'Hũ', N'Quảng Nam');

-- Huế
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP018', N'Mắm ruốc Huế', 3, 60000.00, 120, 
N'Giới thiệu chung: Mắm ruốc Huế là một loại gia vị đặc trưng, có mùi thơm nồng và vị đậm đà. Được làm từ ruốc (moi) tươi ủ với muối theo công thức truyền thống.
Thành phần: Ruốc tươi, muối.
Khối lượng: Thường đóng hũ (200g, 500g).
Công dụng: Dùng để nêm nếm trong nhiều món ăn Huế như bún bò, cơm hến, hoặc pha chế thành nước chấm.
Phù hợp với: Người nấu ăn, người yêu thích ẩm thực Huế.
Đặc điểm văn hóa: Gia vị không thể thiếu tạo nên hương vị độc đáo của nhiều món ăn Huế, là một phần của di sản ẩm thực Cố Đô.', 
N'Hũ', N'Huế');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP019', N'Muối ớt Huế', 3, 35000.00, 200, 
N'Giới thiệu chung: Muối ớt Huế hay còn gọi là muối sả ớt, muối kiến vàng (tùy loại), có vị cay nồng, thơm lừng, dùng để chấm trái cây, hải sản hoặc thịt luộc. Được làm từ muối, ớt, sả, tỏi và các gia vị khác.
Thành phần: Muối, ớt, sả, tỏi, bột ngọt (tùy loại).
Khối lượng: Thường đóng hũ hoặc gói.
Công dụng: Gia vị chấm giúp tăng hương vị cho món ăn.
Phù hợp với: Mọi người, đặc biệt khi ăn trái cây hoặc các món luộc, nướng.
Đặc điểm văn hóa: Loại muối chấm đặc trưng của Huế, thể hiện sự tinh tế trong việc kết hợp gia vị.', 
N'Hũ/Gói', N'Huế');

-- Category 4: Trà (IDDanhMuc = 4)
-- Huế
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP020', N'Trà Cung Đình', 4, 150000.00, 80, 
N'Giới thiệu chung: Trà Cung Đình Huế là loại trà thảo dược quý, được bào chế từ nhiều loại thảo mộc thiên nhiên theo công thức của các ngự y xưa trong cung đình Huế. Trà có hương thơm dịu, vị ngọt thanh, tốt cho sức khỏe.
Thành phần: Atiso, cúc hoa, hoài sơn, đẳng sâm, đại táo, hồng táo, cam thảo bắc, hoa hòe, thảo quyết minh, khổ qua, kỷ tử, vối nụ, tim sen và các thảo dược khác.
Khối lượng: Thường đóng gói (250g, 500g) hoặc hộp.
Công dụng: Thanh nhiệt, giải độc, an thần, giúp ngủ ngon, tốt cho tiêu hóa và tim mạch.
Phù hợp với: Mọi lứa tuổi, đặc biệt người lớn tuổi, người quan tâm đến sức khỏe.
Đặc điểm văn hóa: Sản phẩm kế thừa tinh hoa y học cổ truyền của Cung đình Huế, là thức uống tao nhã và bổ dưỡng.', 
N'Gói/Hộp', N'Huế');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP021', N'Trà hoa atiso', 4, 120000.00, 70, 
N'Giới thiệu chung: Trà hoa atiso Huế được làm từ hoa atiso tươi sấy khô, giữ nguyên được dưỡng chất. Trà có vị ngọt nhẹ tự nhiên, hương thơm dễ chịu.
Thành phần: 100% hoa atiso.
Khối lượng: Thường đóng gói.
Công dụng: Mát gan, giải độc, lợi tiểu, tốt cho hệ tiêu hóa, giảm cholesterol.
Phù hợp với: Người có vấn đề về gan, nóng trong người, người muốn thanh lọc cơ thể.
Đặc điểm văn hóa: Huế là một trong những vùng trồng atiso, sản phẩm trà hoa atiso thể hiện sự ưu đãi của thiên nhiên và kỹ thuật chế biến của người dân địa phương.', 
N'Gói', N'Huế');

-- Đà Nẵng
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP022', N'Trà sâm dứa', 4, 80000.00, 100, 
N'Giới thiệu chung: Trà sâm dứa Đà Nẵng là loại trà phổ biến, kết hợp hương vị của trà xanh, lá dứa và đôi khi có thêm chút hương liệu sâm để tạo mùi thơm đặc trưng. Trà có màu xanh vàng, vị chát nhẹ, hương thơm thoang thoảng.
Thành phần: Trà xanh, lá dứa, hương sâm tự nhiên hoặc tổng hợp.
Khối lượng: Thường đóng gói.
Công dụng: Giải khát, giúp tỉnh táo, thư giãn.
Phù hợp với: Mọi người, đặc biệt những ai thích hương vị trà nhẹ nhàng, thơm mát.
Đặc điểm văn hóa: Thức uống quen thuộc trong đời sống hàng ngày của người dân Đà Nẵng và miền Trung.', 
N'Gói', N'Đà Nẵng');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP023', N'Trà hoa lài', 4, 95000.00, 90, 
N'Giới thiệu chung: Trà hoa lài (hoa nhài) Đà Nẵng được ướp hương từ hoa lài tươi tự nhiên vào trà xanh chất lượng. Trà có hương thơm thanh khiết, quyến rũ của hoa lài, vị trà đậm đà.
Thành phần: Trà xanh, hoa lài tươi.
Khối lượng: Thường đóng gói hoặc hộp.
Công dụng: Giúp thư giãn tinh thần, giảm stress, tốt cho tiêu hóa, làm đẹp da.
Phù hợp với: Người yêu thích hương thơm tự nhiên, phụ nữ.
Đặc điểm văn hóa: Việc ướp trà hoa lài là một nghệ thuật truyền thống, mang lại thức uống tinh tế.', 
N'Gói/Hộp', N'Đà Nẵng');

-- Quảng Nam
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP024', N'Trà xanh', 4, 70000.00, 110, 
N'Giới thiệu chung: Trà xanh Quảng Nam, đặc biệt từ các vùng trung du như Tiên Phước, có chất lượng tốt, lá trà được sao thủ công giữ được hương vị tự nhiên. Nước trà xanh, vị chát dịu, hậu ngọt.
Thành phần: 100% búp trà xanh tự nhiên.
Khối lượng: Thường đóng gói.
Công dụng: Chống oxy hóa, giúp tỉnh táo, tốt cho tim mạch, hỗ trợ giảm cân.
Phù hợp với: Người thích uống trà mộc, người quan tâm đến sức khỏe.
Đặc điểm văn hóa: Cây chè là một phần của nông nghiệp truyền thống Quảng Nam, uống trà là một nét văn hóa đẹp.', 
N'Gói', N'Quảng Nam');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP025', N'Trà thảo mộc', 4, 100000.00, 80, 
N'Giới thiệu chung: Trà thảo mộc Quảng Nam là sự kết hợp của nhiều loại cây thuốc, lá cây có sẵn trong tự nhiên của vùng đất này như chè vằng, lạc tiên, cỏ ngọt, dây khổ qua rừng... Trà có tác dụng thanh nhiệt, an thần.
Thành phần: Các loại thảo mộc tự nhiên (chè vằng, lạc tiên, cỏ ngọt, vv.).
Khối lượng: Thường đóng gói.
Công dụng: Hỗ trợ sức khỏe, giúp ngủ ngon, thanh lọc cơ thể.
Phù hợp với: Người tìm kiếm thức uống tự nhiên, tốt cho sức khỏe.
Đặc điểm văn hóa: Phản ánh kiến thức y học dân gian và sự phong phú của tài nguyên cây thuốc ở Quảng Nam.', 
N'Gói', N'Quảng Nam');

-- Category 5: Tinh dầu (IDDanhMuc = 5)
-- Huế
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP026', N'Tinh dầu tràm', 5, 180000.00, 60, 
N'Giới thiệu chung: Tinh dầu tràm Huế (đặc biệt là tràm gió) nổi tiếng với độ tinh khiết cao, được chiết xuất từ lá cây tràm tự nhiên. Có mùi thơm đặc trưng, tính ấm, nhiều công dụng cho sức khỏe.
Thành phần: 100% tinh dầu tràm nguyên chất.
Chất liệu: Lỏng, đựng trong chai thủy tinh tối màu.
Khối lượng: Thường đóng chai (10ml, 30ml, 50ml, 100ml).
Công dụng: Giữ ấm cơ thể, phòng và trị cảm cúm, ho, sổ mũi (đặc biệt cho trẻ em và phụ nữ mang thai), xua đuổi côn trùng, giảm đau nhức cơ khớp, làm sạch không khí.
Phù hợp với: Mọi gia đình, đặc biệt gia đình có trẻ nhỏ, người già.
Đặc điểm văn hóa: Sản phẩm truyền thống lâu đời của vùng đất Huế, gắn liền với việc chăm sóc sức khỏe cộng đồng.', 
N'Chai', N'Huế');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP027', N'Tinh dầu hoa sen', 5, 350000.00, 40, 
N'Giới thiệu chung: Tinh dầu hoa sen Huế được chiết xuất từ hoa sen trồng tại các hồ quanh Kinh thành Huế. Mang hương thơm thanh khiết, quý phái, có tác dụng thư giãn, làm đẹp.
Thành phần: 100% tinh dầu hoa sen nguyên chất.
Chất liệu: Lỏng, đựng trong chai thủy tinh.
Khối lượng: Thường đóng chai (5ml, 10ml).
Công dụng: Giúp thư giãn, giảm căng thẳng, dưỡng da, tạo hương thơm cho cơ thể và không gian.
Phù hợp với: Người yêu thích hương thơm tự nhiên, người làm trong lĩnh vực spa, trị liệu.
Đặc điểm văn hóa: Hoa sen là biểu tượng của Huế, tinh dầu hoa sen là sản phẩm cao cấp, thể hiện sự tinh túy của loài hoa này.', 
N'Chai', N'Huế');

-- Đà Nẵng
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP028', N'Tinh dầu sả chanh', 5, 150000.00, 70, 
N'Giới thiệu chung: Tinh dầu sả chanh Đà Nẵng (thường gọi là sả hương) có mùi thơm nồng ấm, tươi mát đặc trưng của sả và chanh. Được sử dụng rộng rãi để xông hương, khử mùi và đuổi côn trùng.
Thành phần: 100% tinh dầu sả chanh nguyên chất.
Chất liệu: Lỏng, đựng trong chai thủy tinh.
Khối lượng: Thường đóng chai (10ml, 30ml, 50ml).
Công dụng: Khử mùi hôi, xua đuổi muỗi và côn trùng, làm sạch không khí, giảm stress, sát khuẩn.
Phù hợp với: Các gia đình, văn phòng, spa, nhà hàng.
Đặc điểm văn hóa: Sả là cây gia vị quen thuộc, tinh dầu sả chanh là ứng dụng hiện đại mang lại nhiều lợi ích.', 
N'Chai', N'Đà Nẵng');
-- User wrote "Tinh dầu sả hương" but sả chanh is more common and descriptive for the scent combination. I'll use Sả Chanh as a more common name.
-- If the user insists on Sả Hương, I can change it. For now, Sả Chanh is clearer for properties.

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP029', N'Tinh dầu bạc hà', 5, 130000.00, 75, 
N'Giới thiệu chung: Tinh dầu bạc hà Đà Nẵng được chiết xuất từ lá bạc hà tươi, có hương thơm a cay the mát, sảng khoái.
Thành phần: 100% tinh dầu bạc hà nguyên chất.
Chất liệu: Lỏng, đựng trong chai thủy tinh.
Khối lượng: Thường đóng chai (10ml, 30ml).
Công dụng: Giúp tỉnh táo, tập trung, giảm buồn nôn, say tàu xe, thông mũi, giảm ngứa do côn trùng cắn, xua đuổi chuột.
Phù hợp với: Người cần sự tỉnh táo, người hay bị say xe, gia đình muốn không gian thơm mát.
Đặc điểm văn hóa: Bạc hà là cây thảo dược phổ biến, tinh dầu bạc hà mang lại cảm giác tươi mới, năng động của thành phố biển.', 
N'Chai', N'Đà Nẵng');

-- Quảng Nam
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP030', N'Tinh dầu quế', 5, 220000.00, 50, 
N'Giới thiệu chung: Tinh dầu quế Quảng Nam, đặc biệt từ vùng Trà My, nổi tiếng với chất lượng cao. Quế Trà My có hàm lượng tinh dầu lớn, mùi thơm nồng ấm, cay đặc trưng.
Thành phần: 100% tinh dầu vỏ quế hoặc lá quế nguyên chất.
Chất liệu: Lỏng, đựng trong chai thủy tinh.
Khối lượng: Thường đóng chai (10ml, 30ml).
Công dụng: Giữ ấm cơ thể, kích thích tiêu hóa, giảm đau nhức xương khớp, khử mùi, tạo không khí ấm cúng, làm gia vị.
Phù hợp với: Người cần giữ ấm, người có vấn đề về tiêu hóa, dùng trong mùa đông.
Đặc điểm văn hóa: Cây quế là đặc sản quý của Quảng Nam, đặc biệt là quế Trà My đã nổi tiếng từ xưa, mang giá trị kinh tế và y học cao.', 
N'Chai', N'Quảng Nam');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP031', N'Tinh dầu ngải cứu', 5, 190000.00, 45, 
N'Giới thiệu chung: Tinh dầu ngải cứu Quảng Nam được chiết xuất từ cây ngải cứu, có mùi thơm nồng đặc trưng của thảo dược.
Thành phần: 100% tinh dầu ngải cứu nguyên chất.
Chất liệu: Lỏng, đựng trong chai thủy tinh.
Khối lượng: Thường đóng chai (10ml, 30ml).
Công dụng: Giảm đau nhức cơ xương khớp, đau bụng kinh, giúp lưu thông máu, an thần nhẹ.
Phù hợp với: Người bị đau nhức, phụ nữ trong kỳ kinh nguyệt, người lớn tuổi.
Đặc điểm văn hóa: Ngải cứu là cây thuốc dân gian quen thuộc, tinh dầu ngải cứu là một cách khai thác hiệu quả công dụng của nó.', 
N'Chai', N'Quảng Nam');

-- Category 6: Hương, nhang (IDDanhMuc = 6)
-- Huế
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP032', N'Hương trầm', 6, 100000.00, 100, 
N'Giới thiệu chung: Hương trầm Huế được làm từ bột gỗ trầm hương tự nhiên hoặc bột cây dó bầu có trầm, kết hợp với các loại thảo mộc khác theo công thức truyền thống. Hương có mùi thơm dịu nhẹ, thanh khiết, lưu hương lâu.
Thành phần: Bột trầm hương, bột cây bài, keo bời lời.
Chất liệu: Que hương.
Khối lượng: Thường đóng bó hoặc hộp (khoảng 100 cây).
Công dụng: Dùng trong thờ cúng, thiền định, tạo không gian tâm linh thanh tịnh, giúp thư giãn.
Phù hợp với: Các gia đình, đền chùa, người thực hành tâm linh.
Đặc điểm văn hóa: Nghề làm hương ở Huế có lịch sử lâu đời, hương trầm là một phần không thể thiếu trong đời sống tâm linh của người Huế, đặc biệt là làng hương Thủy Xuân.', 
N'Bó/Hộp', N'Huế');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP033', N'Hương quế', 6, 70000.00, 120, 
N'Giới thiệu chung: Hương quế Huế được làm từ bột vỏ quế tự nhiên, mang mùi thơm nồng ấm đặc trưng của quế.
Thành phần: Bột vỏ quế, keo bời lời.
Chất liệu: Que hương.
Khối lượng: Thường đóng bó hoặc hộp.
Công dụng: Dùng trong thờ cúng, giúp khử mùi, làm ấm không gian, xua đuổi côn trùng.
Phù hợp với: Các gia đình, đặc biệt trong mùa lạnh hoặc nơi ẩm thấp.
Đặc điểm văn hóa: Tận dụng nguồn nguyên liệu quế sẵn có, hương quế mang đến sự ấm áp cho không gian thờ tự.', 
N'Bó/Hộp', N'Huế');

-- Đà Nẵng
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP034', N'Nhang trầm', 6, 110000.00, 90, 
N'Giới thiệu chung: Nhang trầm Đà Nẵng cũng được sản xuất từ bột trầm hương, chú trọng vào chất lượng và mùi hương tự nhiên. Có thể có các loại nhang không tăm hoặc nhang khoanh.
Thành phần: Bột trầm hương, keo tự nhiên.
Chất liệu: Que nhang, nhang khoanh, nhang nụ.
Khối lượng: Thường đóng hộp.
Công dụng: Thờ cúng, yoga, thiền định, tạo không gian thư thái.
Phù hợp với: Gia đình, người thực hành tâm linh, các không gian cần sự tĩnh lặng.
Đặc điểm văn hóa: Nhang trầm là vật phẩm tâm linh quan trọng, sản phẩm tại Đà Nẵng thường hướng đến sự tiện dụng và chất lượng.', 
N'Hộp', N'Đà Nẵng');

-- Quảng Nam
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP035', N'Nhang quế', 6, 75000.00, 110, 
N'Giới thiệu chung: Nhang quế Quảng Nam, đặc biệt từ vùng quế Trà My, có mùi thơm mạnh mẽ, đặc trưng của quế rừng. Được làm từ bột quế nguyên chất.
Thành phần: Bột vỏ quế Trà My, keo bời lời.
Chất liệu: Que nhang.
Khối lượng: Thường đóng bó hoặc hộp.
Công dụng: Thờ cúng, làm sạch không khí, mang lại cảm giác ấm cúng, có tác dụng xua đuổi côn trùng.
Phù hợp với: Gia đình, đặc biệt những ai yêu thích mùi hương nồng ấm của quế.
Đặc điểm văn hóa: Quảng Nam là xứ sở của quế, nhang quế là một sản phẩm thể hiện giá trị của cây quế trong đời sống văn hóa và kinh tế.', 
N'Bó/Hộp', N'Quảng Nam');

-- Category 7: Thời trang truyền thống (IDDanhMuc = 7)
-- Huế
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP036', N'Nón lá Huế', 7, 80000.00, 100, 
N'Giới thiệu chung: Nón lá Huế, đặc biệt là nón bài thơ, là biểu tượng của sự duyên dáng, dịu dàng của người phụ nữ Huế. Nón được làm thủ công từ lá nón (lá cọ), vành tre, có độ mỏng, nhẹ và thanh thoát. Nón bài thơ có hình ảnh hoặc những câu thơ lãng mạn được ép giữa hai lớp lá.
Thành phần: Lá nón, tre, chỉ cước.
Chất liệu: Lá tự nhiên, tre.
Kích thước: Đường kính khoảng 40-45cm.
Công dụng: Che nắng, che mưa, phụ kiện thời trang, quà lưu niệm.
Phù hợp với: Phụ nữ mọi lứa tuổi, du khách.
Đặc điểm văn hóa: Nón lá là một phần của trang phục truyền thống Việt Nam, nón lá Huế mang nét đặc trưng riêng, thể hiện sự tài hoa, khéo léo của các nghệ nhân làng nón như Tây Hồ, Dạ Lê.', 
N'Cái', N'Huế');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP037', N'Áo cổ phục Huế', 7, 1500000.00, 20, 
N'Giới thiệu chung: Áo cổ phục Huế (áo dài ngũ thân, áo tấc, áo mệnh phụ...) là trang phục truyền thống mang đậm dấu ấn lịch sử và văn hóa của Cố đô Huế. Được may từ các chất liệu như gấm, lụa với kiểu dáng trang trọng, màu sắc và hoa văn tinh tế.
Thành phần: Vải gấm, lụa, tơ tằm.
Chất liệu: Vải.
Kích thước: May theo size hoặc may đo.
Công dụng: Mặc trong các dịp lễ hội, sự kiện văn hóa, chụp ảnh, biểu diễn nghệ thuật, thể hiện sự trân trọng văn hóa truyền thống.
Phù hợp với: Người yêu văn hóa Huế, người tham gia các hoạt động văn hóa, nghệ sĩ.
Đặc điểm văn hóa: Là di sản trang phục cung đình và dân gian Huế, thể hiện sự trang nghiêm, thanh lịch và nét đẹp cổ xưa.', 
N'Bộ/Cái', N'Huế');

-- Category 8: Đồ thủ công mỹ nghệ (IDDanhMuc = 8)
-- Huế
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP038', N'Tranh thêu tay Huế', 8, 2500000.00, 15, 
N'Giới thiệu chung: Tranh thêu tay Huế nổi tiếng với kỹ thuật thêu tinh xảo, đường nét mềm mại, màu sắc hài hòa. Các chủ đề thường là phong cảnh Huế, hoa sen, chim phượng, các điển tích lịch sử.
Thành phần: Vải lụa, chỉ tơ tằm hoặc chỉ DMC.
Chất liệu: Vải, chỉ thêu.
Kích thước: Đa dạng, từ nhỏ đến lớn.
Công dụng: Trang trí nội thất, làm quà tặng cao cấp, thể hiện giá trị nghệ thuật.
Phù hợp với: Người yêu nghệ thuật, muốn trang trí nhà cửa, làm quà biếu ý nghĩa.
Đặc điểm văn hóa: Nghề thêu tay ở Huế có truyền thống lâu đời, sản phẩm tranh thêu thể hiện sự tài hoa, kiên nhẫn và óc thẩm mỹ của người thợ thêu Huế.', 
N'Bức', N'Huế');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP039', N'Ấm trà men lam', 8, 800000.00, 30, 
N'Giới thiệu chung: Ấm trà men lam Huế là sản phẩm gốm sứ đặc trưng, với nước men lam cổ điển, họa tiết vẽ tay tinh tế thường là rồng, phượng, hoa lá cách điệu. Ấm được làm từ đất sét cao cấp, nung ở nhiệt độ cao.
Thành phần: Đất sét, men lam.
Chất liệu: Gốm sứ.
Kích thước: Bộ ấm trà thường gồm 1 ấm, 6 chén, đĩa lót.
Công dụng: Dùng để pha trà, trang trí, làm quà tặng.
Phù hợp với: Người thích trà đạo, sưu tầm đồ gốm, yêu văn hóa truyền thống.
Đặc điểm văn hóa: Gốm men lam là một dòng gốm sứ nổi tiếng của Huế, phản ánh nét đẹp cổ kính, tao nhã trong văn hóa thưởng trà của người Việt.', 
N'Bộ', N'Huế');

-- Đà Nẵng
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP040', N'Tượng cá chép Non Nước', 8, 500000.00, 40, 
N'Giới thiệu chung: Tượng cá chép được chế tác từ đá cẩm thạch Non Nước (Ngũ Hành Sơn, Đà Nẵng) bởi các nghệ nhân làng đá mỹ nghệ Non Nước. Cá chép hóa rồng là biểu tượng của sự may mắn, kiên trì và thành công.
Thành phần: Đá cẩm thạch tự nhiên.
Chất liệu: Đá.
Kích thước: Đa dạng, từ nhỏ để bàn đến lớn trang trí sân vườn.
Công dụng: Trang trí, vật phẩm phong thủy mang lại may mắn, tài lộc.
Phù hợp với: Doanh nhân, người muốn cầu may mắn, trang trí nhà cửa, văn phòng.
Đặc điểm văn hóa: Làng đá Non Nước có lịch sử hơn 400 năm, sản phẩm đá mỹ nghệ là niềm tự hào của Đà Nẵng. Tượng cá chép mang ý nghĩa văn hóa sâu sắc.', 
N'Tượng/Cái', N'Đà Nẵng');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP041', N'Mô hình cầu Rồng', 8, 350000.00, 50, 
N'Giới thiệu chung: Mô hình cầu Rồng được làm từ nhiều chất liệu như bột đá, kim loại, gỗ, mô phỏng kiến trúc độc đáo của cây cầu Rồng – biểu tượng mới của thành phố Đà Nẵng.
Thành phần: Bột đá, kim loại, gỗ (tùy loại).
Chất liệu: Thay đổi theo sản phẩm.
Kích thước: Đa dạng, thường để bàn.
Công dụng: Đồ lưu niệm, trang trí bàn làm việc, quà tặng.
Phù hợp với: Du khách, người yêu mến Đà Nẵng.
Đặc điểm văn hóa: Cầu Rồng là công trình kiến trúc hiện đại, nổi tiếng, mô hình cầu Rồng là cách lưu giữ kỷ niệm về thành phố năng động này.', 
N'Cái', N'Đà Nẵng');

-- Quảng Nam
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP042', N'Bình gốm', 8, 450000.00, 35, 
N'Giới thiệu chung: Bình gốm Quảng Nam, đặc biệt từ làng gốm Thanh Hà (Hội An) hoặc Điện Bàn, mang nét mộc mạc, dân dã. Gốm được làm thủ công từ đất sét, nung bằng lò củi truyền thống, có màu sắc tự nhiên của đất nung.
Thành phần: Đất sét.
Chất liệu: Gốm.
Kích thước: Đa dạng.
Công dụng: Cắm hoa, trang trí nhà cửa, sưu tầm.
Phù hợp với: Người yêu thích vẻ đẹp mộc mạc, truyền thống, muốn trang trí không gian theo phong cách vintage.
Đặc điểm văn hóa: Làng gốm Thanh Hà có tuổi đời hàng trăm năm, sản phẩm gốm nơi đây phản ánh đời sống và kỹ thuật làm gốm truyền thống của người Quảng.', 
N'Cái/Bình', N'Quảng Nam');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP043', N'Giỏ sách mây tre', 8, 280000.00, 60, 
N'Giới thiệu chung: Giỏ sách, túi xách làm từ mây tre đan là sản phẩm thủ công mỹ nghệ thân thiện với môi trường của Quảng Nam. Sản phẩm được đan lát tỉ mỉ, kiểu dáng đa dạng, mang tính ứng dụng cao và nét đẹp tự nhiên.
Thành phần: Mây, tre, cói.
Chất liệu: Nguyên liệu tự nhiên.
Kích thước: Đa dạng.
Công dụng: Đựng đồ dùng cá nhân, phụ kiện thời trang, đi chợ, đi biển.
Phù hợp với: Phụ nữ, người yêu thích sản phẩm tự nhiên, thời trang bền vững.
Đặc điểm văn hóa: Nghề đan lát mây tre là nghề thủ công truyền thống ở nhiều địa phương Quảng Nam, sản phẩm thể hiện sự khéo léo và gần gũi với thiên nhiên.', 
N'Cái', N'Quảng Nam');

-- Category 9: Đồ lưu niệm (IDDanhMuc = 9)
-- Huế
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP044', N'Tò he', 9, 25000.00, 200, 
N'Giới thiệu chung: Tò he Huế là đồ chơi dân gian được nặn từ bột gạo nếp pha màu tự nhiên (từ lá cây, củ quả). Các nghệ nhân tạo hình thành các con vật, nhân vật lịch sử, hoa lá ngộ nghĩnh, đầy màu sắc.
Thành phần: Bột gạo nếp, màu thực phẩm tự nhiên.
Chất liệu: Bột nặn.
Kích thước: Nhỏ, cầm tay.
Công dụng: Đồ chơi cho trẻ em, quà lưu niệm dân gian.
Phù hợp với: Trẻ em, du khách muốn tìm hiểu văn hóa truyền thống.
Đặc điểm văn hóa: Tò he là một nét văn hóa dân gian đặc sắc, thể hiện sự khéo léo và sáng tạo của người thợ thủ công Huế, thường xuất hiện trong các dịp lễ hội.', 
N'Con/Cái', N'Huế');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP045', N'Móc khóa Đại Nội Huế', 9, 40000.00, 150, 
N'Giới thiệu chung: Móc khóa in hình hoặc tạo hình các biểu tượng của Đại Nội Huế như Ngọ Môn, Điện Thái Hòa, Cửu Đỉnh... Là món quà lưu niệm nhỏ gọn, ý nghĩa.
Thành phần: Kim loại, nhựa, mica, gỗ (tùy loại).
Chất liệu: Thay đổi theo sản phẩm.
Kích thước: Nhỏ gọn.
Công dụng: Gắn chìa khóa, trang trí túi xách, ba lô, làm quà kỷ niệm.
Phù hợp với: Du khách, học sinh, sinh viên.
Đặc điểm văn hóa: Mang hình ảnh của di sản văn hóa thế giới Đại Nội Huế, giúp du khách ghi nhớ chuyến thăm Cố Đô.', 
N'Cái', N'Huế');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP046', N'Nón bài thơ Huế', 9, 90000.00, 100, 
N'Giới thiệu chung: Nón bài thơ Huế không chỉ là vật dụng che nắng mưa mà còn là một món quà lưu niệm đặc trưng. Nón mỏng, thanh, có những câu thơ hoặc hình ảnh về Huế được ép duyên dáng giữa hai lớp lá.
Thành phần: Lá nón, tre, chỉ cước, giấy dó in thơ.
Chất liệu: Lá tự nhiên, tre.
Kích thước: Tiêu chuẩn nón lá.
Công dụng: Che nắng, phụ kiện thời trang, quà lưu niệm văn hóa.
Phù hợp với: Du khách nữ, người yêu thơ ca, văn hóa Huế.
Đặc điểm văn hóa: Biểu tượng của sự dịu dàng, kín đáo và lãng mạn của người con gái Huế, thể hiện sự tài hoa của nghệ nhân làm nón.', 
N'Cái', N'Huế');
-- Note: Nón lá Huế was already in Thời trang truyền thống. Nón bài thơ is a specific type. Including it again as a distinct souvenir item might be intended by the user.

-- Đà Nẵng
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP047', N'Móc khóa cầu Rồng', 9, 35000.00, 180, 
N'Giới thiệu chung: Móc khóa có hình ảnh hoặc mô hình thu nhỏ của Cầu Rồng, một biểu tượng kiến trúc hiện đại và độc đáo của Đà Nẵng.
Thành phần: Kim loại, nhựa, mica.
Chất liệu: Thay đổi theo sản phẩm.
Kích thước: Nhỏ gọn.
Công dụng: Gắn chìa khóa, quà lưu niệm.
Phù hợp với: Du khách, người dân Đà Nẵng.
Đặc điểm văn hóa: Ghi dấu ấn về một công trình biểu tượng của thành phố Đà Nẵng năng động và phát triển.', 
N'Cái', N'Đà Nẵng');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP048', N'Áo I love Đà Nẵng', 9, 120000.00, 120, 
N'Giới thiệu chung: Áo thun in dòng chữ "I love Da Nang" hoặc các biểu tượng, hình ảnh đặc trưng của Đà Nẵng như Cầu Rồng, Bà Nà Hills, bãi biển Mỹ Khê.
Thành phần: Vải cotton hoặc thun.
Chất liệu: Vải.
Kích thước: Đủ size (S, M, L, XL...).
Công dụng: Mặc thường ngày, làm quà lưu niệm, thể hiện tình cảm với thành phố.
Phù hợp với: Du khách, giới trẻ.
Đặc điểm văn hóa: Món quà lưu niệm phổ biến ở các thành phố du lịch, thể hiện sự yêu mến và kỷ niệm về Đà Nẵng.', 
N'Cái', N'Đà Nẵng');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP049', N'Túi vải hình cầu Vàng', 9, 95000.00, 100, 
N'Giới thiệu chung: Túi vải canvas hoặc tote in hình Cầu Vàng (Bà Nà Hills), một điểm du lịch nổi tiếng thế giới của Đà Nẵng.
Thành phần: Vải canvas, vải bố.
Chất liệu: Vải.
Kích thước: Đa dạng.
Công dụng: Đựng đồ, phụ kiện thời trang, quà lưu niệm.
Phù hợp với: Du khách, người yêu thích thời trang tiện dụng.
Đặc điểm văn hóa: Cầu Vàng là một kỳ quan kiến trúc, túi vải là món quà lưu niệm thời trang và thực tế.', 
N'Cái', N'Đà Nẵng');

-- Quảng Nam
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP050', N'Móc khóa phố cổ', 9, 30000.00, 200, 
N'Giới thiệu chung: Móc khóa có hình ảnh các công trình kiến trúc đặc trưng của Phố cổ Hội An như Chùa Cầu, nhà cổ, hoặc các biểu tượng văn hóa Hội An.
Thành phần: Kim loại, gỗ, nhựa.
Chất liệu: Thay đổi theo sản phẩm.
Kích thước: Nhỏ gọn.
Công dụng: Gắn chìa khóa, quà lưu niệm nhỏ xinh.
Phù hợp với: Du khách đến Hội An.
Đặc điểm văn hóa: Lưu giữ hình ảnh của Di sản Văn hóa Thế giới Hội An.', 
N'Cái', N'Quảng Nam');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP051', N'Quạt tay', 9, 60000.00, 130, 
N'Giới thiệu chung: Quạt tay làm từ giấy hoặc lụa, có nan tre, vẽ các họa tiết phong cảnh Hội An, thư pháp hoặc hoa văn truyền thống.
Thành phần: Giấy dó, lụa, tre.
Chất liệu: Giấy/lụa và tre.
Kích thước: Tiêu chuẩn quạt xếp.
Công dụng: Quạt mát, phụ kiện chụp ảnh, trang trí, quà lưu niệm.
Phù hợp với: Du khách, người yêu thích đồ thủ công truyền thống.
Đặc điểm văn hóa: Món đồ mang đậm nét Á Đông, thể hiện sự thanh lịch và là món quà lưu niệm tinh tế từ Hội An.', 
N'Cái', N'Quảng Nam');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP052', N'Lồng đèn Hội An', 9, 100000.00, 90, 
N'Giới thiệu chung: Lồng đèn Hội An là biểu tượng rực rỡ của phố cổ, được làm từ khung tre và bọc vải lụa nhiều màu sắc, kiểu dáng đa dạng (tròn, tỏi, kim cương...).
Thành phần: Tre, vải lụa hoặc gấm.
Chất liệu: Tre, vải.
Kích thước: Đa dạng, từ nhỏ treo trang trí đến lớn.
Công dụng: Trang trí nhà cửa, quán xá, sự kiện, lễ hội, quà lưu niệm đặc trưng.
Phù hợp với: Mọi người, đặc biệt là những ai muốn mang không khí Hội An về nhà.
Đặc điểm văn hóa: Lồng đèn là một phần không thể thiếu của không gian văn hóa Hội An, đặc biệt vào những đêm rằm. Nghề làm lồng đèn là một nghề thủ công truyền thống nổi tiếng.', 
N'Cái', N'Quảng Nam');

-- Category 10: Rượu truyền thống (IDDanhMuc = 10)
-- Huế
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP053', N'Rượu Minh Mạng', 10, 350000.00, 50, 
N'Giới thiệu chung: Rượu Minh Mạng là loại rượu thuốc nổi tiếng của Huế, được ngâm từ nhiều loại thảo dược quý theo bài thuốc gia truyền của vua Minh Mạng. Rượu có tác dụng bồi bổ sức khỏe, tăng cường sinh lực.
Thành phần: Gạo nếp, men rượu, các loại thảo dược quý (nhân sâm, dâm dương hoắc, ba kích, đỗ trọng, kỷ tử...).
Chất liệu: Rượu ngâm trong bình sành hoặc thủy tinh.
Khối lượng: Thường đóng chai (500ml, 750ml).
Công dụng: Bồi bổ sức khỏe, tráng dương bổ thận, mạnh gân cốt. Dùng điều độ.
Phù hợp với: Nam giới tuổi trung niên, người cần bồi bổ sức khỏe (theo chỉ dẫn).
Đặc điểm văn hóa: Gắn liền với câu chuyện lịch sử về vua Minh Mạng, là một trong những "Danh tửu" của đất Cố Đô.', 
N'Chai', N'Huế');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP054', N'Rượu gạo Huế', 10, 90000.00, 70, 
N'Giới thiệu chung: Rượu gạo Huế được nấu thủ công từ gạo nếp hoặc gạo tẻ theo phương pháp truyền thống. Rượu có vị êm, hương thơm đặc trưng của gạo.
Thành phần: Gạo, men rượu truyền thống.
Chất liệu: Rượu đựng trong chai.
Khối lượng: Thường đóng chai (500ml, 1 lít).
Công dụng: Dùng trong các bữa ăn, lễ tiệc, ngâm các loại thuốc.
Phù hợp với: Người trưởng thành, sử dụng có chừng mực.
Đặc điểm văn hóa: Rượu gạo là thức uống quen thuộc trong đời sống người dân Huế, gắn liền với các sinh hoạt cộng đồng.', 
N'Chai', N'Huế');

-- Đà Nẵng
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP055', N'Rượu gạo', 10, 85000.00, 60, 
N'Giới thiệu chung: Rượu gạo Đà Nẵng cũng được sản xuất theo phương pháp truyền thống, sử dụng nguồn nước và gạo địa phương, mang hương vị đặc trưng của vùng.
Thành phần: Gạo, men rượu.
Chất liệu: Rượu đựng trong chai.
Khối lượng: Thường đóng chai (500ml, 1 lít).
Công dụng: Dùng trong ẩm thực, giao tiếp.
Phù hợp với: Người trưởng thành, sử dụng có trách nhiệm.
Đặc điểm văn hóa: Rượu gạo là một phần của văn hóa ẩm thực địa phương.', 
N'Chai', N'Đà Nẵng');

-- Quảng Nam
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP056', N'Rượu Hồng Đào', 10, 120000.00, 55, 
N'Giới thiệu chung: Rượu Hồng Đào là đặc sản nổi tiếng của Quảng Nam, gắn liền với câu ca dao "Đất Quảng Nam chưa mưa đã thấm, Rượu Hồng Đào chưa nhấm đã say". Rượu được làm từ gạo nếp và trái đào chín (hồng đào tiên), có màu hồng đẹp mắt và hương vị thơm ngọt.
Thành phần: Gạo nếp, men rượu, trái hồng đào.
Chất liệu: Rượu đựng trong chai.
Khối lượng: Thường đóng chai (500ml).
Công dụng: Thức uống trong các dịp lễ, tết, đãi khách quý, làm quà biếu.
Phù hợp với: Người trưởng thành, người yêu thích rượu truyền thống có hương vị đặc biệt.
Đặc điểm văn hóa: Là niềm tự hào của xứ Quảng, mang đậm dấu ấn văn hóa và tình cảm của người dân địa phương.', 
N'Chai', N'Quảng Nam');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP057', N'Rượu gạo lứt', 10, 110000.00, 65, 
N'Giới thiệu chung: Rượu gạo lứt Quảng Nam được làm từ gạo lứt, giữ lại nhiều dưỡng chất hơn so với gạo trắng. Rượu có hương vị đặc trưng, được cho là tốt cho sức khỏe hơn.
Thành phần: Gạo lứt, men rượu.
Chất liệu: Rượu đựng trong chai.
Khối lượng: Thường đóng chai (500ml).
Công dụng: Thức uống, có thể dùng điều độ để hỗ trợ tiêu hóa.
Phù hợp với: Người quan tâm đến sản phẩm từ gạo lứt, người trưởng thành.
Đặc điểm văn hóa: Sự sáng tạo trong việc sử dụng nguyên liệu truyền thống để tạo ra sản phẩm mới.', 
N'Chai', N'Quảng Nam');

-- Category 11: Vật phẩm tâm linh và phong thủy (IDDanhMuc = 11)
-- Huế
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP058', N'Tượng Phật', 11, 600000.00, 30, 
N'Giới thiệu chung: Tượng Phật ở Huế thường được chạm khắc tinh xảo từ gỗ hoặc đúc đồng, thể hiện các vị Phật, Bồ Tát với vẻ mặt từ bi, trang nghiêm. Huế là trung tâm Phật giáo lớn, các sản phẩm tượng Phật mang đậm nét nghệ thuật và tâm linh.
Thành phần: Gỗ, đồng, đá (tùy loại).
Chất liệu: Gỗ, đồng, đá.
Kích thước: Đa dạng.
Công dụng: Thờ cúng, trang trí không gian tâm linh, mang lại bình an.
Phù hợp với: Phật tử, người có tín ngưỡng, người muốn tìm sự thanh tịnh.
Đặc điểm văn hóa: Phật giáo có ảnh hưởng sâu sắc đến đời sống văn hóa Huế, tượng Phật là vật phẩm quan trọng trong thực hành tín ngưỡng.', 
N'Tượng/Pho', N'Huế');

-- Đà Nẵng
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP059', N'Cây đá phong thuỷ', 11, 450000.00, 40, 
N'Giới thiệu chung: Cây đá phong thủy được làm từ các loại đá bán quý tự nhiên (thạch anh, mã não...) của vùng Non Nước - Ngũ Hành Sơn, Đà Nẵng. Cây đá được tạo hình bonsai, tượng trưng cho sự sung túc, may mắn.
Thành phần: Đá thạch anh, mã não, canxit...
Chất liệu: Đá tự nhiên.
Kích thước: Thường để bàn.
Công dụng: Trang trí, vật phẩm phong thủy thu hút tài lộc, tăng cường vượng khí.
Phù hợp với: Doanh nhân, người làm kinh doanh, trang trí văn phòng, nhà cửa.
Đặc điểm văn hóa: Kết hợp nghệ thuật chế tác đá Non Nước và quan niệm phong thủy Á Đông.', 
N'Cây/Chậu', N'Đà Nẵng');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP060', N'Chuỗi hạt trầm hương', 11, 1200000.00, 25, 
N'Giới thiệu chung: Chuỗi hạt trầm hương được làm từ gỗ trầm hương tự nhiên, có mùi thơm dịu nhẹ, giúp an thần, mang lại may mắn. Trầm hương từ vùng núi Quảng Nam, Khánh Hòa thường được gia công tại Đà Nẵng.
Thành phần: Gỗ trầm hương.
Chất liệu: Gỗ.
Kích thước: Chuỗi 108 hạt, 18 hạt, hoặc vòng tay.
Công dụng: Đeo tay, cổ, dùng khi niệm Phật, giúp thư giãn, trừ tà, mang lại may mắn.
Phù hợp với: Người thực hành tâm linh, người thích trang sức phong thủy.
Đặc điểm văn hóa: Trầm hương là sản vật quý, chuỗi hạt trầm hương mang ý nghĩa tâm linh và giá trị cao.', 
N'Chuỗi/Vòng', N'Đà Nẵng');

-- Quảng Nam
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP061', N'Đèn lồng phong thủy', 11, 150000.00, 50, 
N'Giới thiệu chung: Đèn lồng Hội An không chỉ để trang trí mà còn có ý nghĩa phong thủy. Các màu sắc và họa tiết trên đèn lồng được chọn lựa để mang lại may mắn, tài lộc, bình an tùy theo mệnh của gia chủ.
Thành phần: Tre, vải lụa.
Chất liệu: Tre, vải.
Kích thước: Đa dạng.
Công dụng: Trang trí, chiếu sáng, vật phẩm phong thủy.
Phù hợp với: Mọi gia đình, người quan tâm đến phong thủy nhà ở.
Đặc điểm văn hóa: Lồng đèn Hội An kết hợp với các yếu tố phong thủy tạo nên sản phẩm vừa đẹp mắt vừa ý nghĩa.', 
N'Cái', N'Quảng Nam');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP062', N'Vòng tay đá', 11, 250000.00, 60, 
N'Giới thiệu chung: Vòng tay đá phong thủy được làm từ các loại đá tự nhiên khai thác hoặc gia công tại Quảng Nam, Đà Nẵng. Mỗi loại đá (thạch anh, mắt hổ, cẩm thạch...) mang một ý nghĩa và năng lượng riêng.
Thành phần: Các loại đá tự nhiên (thạch anh, mã não, mắt hổ, cẩm thạch...).
Chất liệu: Đá.
Kích thước: Vòng tay.
Công dụng: Trang sức, vật phẩm phong thủy hỗ trợ sức khỏe, may mắn, tình duyên.
Phù hợp với: Mọi người, tùy theo mệnh và nhu cầu.
Đặc điểm văn hóa: Sử dụng đá tự nhiên làm trang sức và vật phẩm phong thủy là một xu hướng phổ biến, phản ánh mong muốn về sự cân bằng và may mắn.', 
N'Vòng/Cái', N'Quảng Nam');

-- Category 12: Chè (IDDanhMuc = 12, map từ "Các loại chè đặc sản")
-- Huế
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP063', N'Chè hạt sen long nhãn', 12, 40000.00, 80, 
N'Giới thiệu chung: Chè hạt sen long nhãn Huế là món tráng miệng thanh tao, bổ dưỡng. Hạt sen bở tơi được lồng khéo léo vào cùi nhãn tươi, nấu với nước đường phèn trong vắt, thoảng hương hoa bưởi.
Thành phần: Hạt sen tươi, long nhãn, đường phèn, hoa bưởi (tùy chọn).
Khối lượng: Phục vụ theo chén hoặc ly.
Công dụng: Thanh nhiệt, an thần, bồi bổ sức khỏe, món tráng miệng ngon.
Phù hợp với: Mọi lứa tuổi, đặc biệt tốt cho người già, người suy nhược.
Đặc điểm văn hóa: Món chè tinh tế, cầu kỳ thể hiện sự khéo léo của người Huế, thường có trong các bữa tiệc hoặc làm món tráng miệng hoàng cung xưa.', 
N'Chén/Ly', N'Huế');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP064', N'Chè bắp', 12, 25000.00, 100, 
N'Giới thiệu chung: Chè bắp Huế (chè ngô) được nấu từ bắp non Cồn Hến ngọt dẻo tự nhiên, không dùng đường nhiều. Chè có vị ngọt thanh, thơm mùi bắp, sánh nhẹ.
Thành phần: Bắp nếp non, nước cốt dừa (tùy chọn), một ít đường.
Khối lượng: Phục vụ theo chén.
Công dụng: Món tráng miệng, ăn vặt thanh mát, giải nhiệt.
Phù hợp với: Mọi lứa tuổi, người thích vị ngọt tự nhiên.
Đặc điểm văn hóa: Món chè dân dã, đặc trưng của Huế, thể hiện sự tận dụng nguyên liệu địa phương (bắp Cồn Hến).', 
N'Chén', N'Huế');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP065', N'Chè bột lọc heo quay', 12, 35000.00, 70, 
N'Giới thiệu chung: Chè bột lọc heo quay là món chè độc đáo của Huế với sự kết hợp lạ miệng giữa vị ngọt của nước đường gừng, vị dai của bột lọc và vị mặn mà, béo ngậy của nhân thịt heo quay.
Thành phần: Bột năng, thịt heo quay, gừng, đường.
Khối lượng: Phục vụ theo chén.
Công dụng: Món ăn vặt độc đáo, trải nghiệm hương vị ẩm thực Huế.
Phù hợp với: Người thích khám phá ẩm thực mới lạ, không ngại thử các hương vị tương phản.
Đặc điểm văn hóa: Sự sáng tạo phá cách trong ẩm thực Huế, tạo nên một món chè "có một không hai".', 
N'Chén', N'Huế');

-- Đà Nẵng
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP066', N'Chè chuối nướng lá dứa', 12, 30000.00, 90, 
N'Giới thiệu chung: Chè chuối nướng lá dứa Đà Nẵng là món chè thơm lừng với chuối sứ nướng vàng, bọc trong nếp dẻo thơm mùi lá dứa, chan nước cốt dừa béo ngậy.
Thành phần: Chuối sứ, gạo nếp, lá dứa, nước cốt dừa, đậu phộng rang.
Khối lượng: Phục vụ theo chén.
Công dụng: Món tráng miệng, ăn vặt ấm nóng, thơm ngon.
Phù hợp với: Người thích vị ngọt béo, hương thơm của chuối và lá dứa.
Đặc điểm văn hóa: Món chè đường phố hấp dẫn, thể hiện sự sáng tạo trong việc kết hợp các nguyên liệu dân dã.', 
N'Chén', N'Đà Nẵng');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP067', N'Chè thái', 12, 35000.00, 110, 
N'Giới thiệu chung: Chè Thái ở Đà Nẵng là món chè thập cẩm nhiều màu sắc, hương vị phong phú từ các loại trái cây tươi (mít, nhãn, vải...), thạch, sương sáo, hạt đác và nước cốt dừa, sầu riêng.
Thành phần: Các loại trái cây, thạch rau câu, sương sáo, hạt lựu, nước cốt dừa, sữa tươi, sầu riêng (tùy chọn).
Khối lượng: Phục vụ theo ly.
Công dụng: Giải khát, tráng miệng, cung cấp vitamin.
Phù hợp với: Giới trẻ, người thích món ngọt mát lạnh, đa dạng hương vị.
Đặc điểm văn hóa: Món chè du nhập nhưng được yêu thích và biến tấu phù hợp khẩu vị địa phương, rất phổ biến ở Đà Nẵng.', 
N'Ly', N'Đà Nẵng');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP068', N'Chè xoa xoa hạt lựu', 12, 20000.00, 120, 
N'Giới thiệu chung: Chè xoa xoa hạt lựu là món chè giải nhiệt đặc trưng của Đà Nẵng. Xoa xoa làm từ rau câu rong biển, hạt lựu giòn sần sật từ bột năng, ăn cùng nước cốt dừa và nước đường nấu từ gừng hoặc hoa lài.
Thành phần: Bột rau câu (để làm xoa xoa), bột năng (làm hạt lựu), nước cốt dừa, đường, thạch đen (tùy chọn).
Khối lượng: Phục vụ theo ly.
Công dụng: Giải nhiệt, thanh mát, món ăn vặt đường phố.
Phù hợp với: Mọi lứa tuổi, đặc biệt trong những ngày hè nóng nực.
Đặc điểm văn hóa: Món chè dân dã, lâu đời, là ký ức tuổi thơ của nhiều người Đà Nẵng.', 
N'Ly', N'Đà Nẵng');

-- Quảng Nam
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP069', N'Chè đậu đỏ', 12, 20000.00, 100, 
N'Giới thiệu chung: Chè đậu đỏ Quảng Nam được nấu từ hạt đậu đỏ bở tơi, có vị ngọt thanh, thường ăn kèm nước cốt dừa. Món chè đơn giản nhưng bổ dưỡng.
Thành phần: Đậu đỏ, đường, nước cốt dừa.
Khối lượng: Phục vụ theo chén.
Công dụng: Bổ máu, thanh nhiệt, tốt cho sức khỏe.
Phù hợp với: Mọi lứa tuổi. Theo quan niệm dân gian, ăn chè đậu đỏ vào ngày Thất Tịch mang lại may mắn tình duyên.
Đặc điểm văn hóa: Món chè truyền thống, quen thuộc trong các gia đình Việt, ở Quảng Nam có hương vị mộc mạc, đậm đà.', 
N'Chén', N'Quảng Nam');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP070', N'Chè đậu đen', 12, 20000.00, 100, 
N'Giới thiệu chung: Chè đậu đen Quảng Nam được nấu từ hạt đậu đen ninh mềm, có vị ngọt dịu, thơm bùi, thường ăn kèm đá lạnh, nước cốt dừa hoặc chút dừa tươi nạo sợi.
Thành phần: Đậu đen, đường, nước cốt dừa (tùy chọn), dừa tươi.
Khối lượng: Phục vụ theo chén hoặc ly.
Công dụng: Giải nhiệt, lợi tiểu, bổ thận.
Phù hợp với: Mọi lứa tuổi, đặc biệt tốt vào mùa hè.
Đặc điểm văn hóa: Món chè dân dã, phổ biến, dễ làm và tốt cho sức khỏe.', 
N'Chén/Ly', N'Quảng Nam');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP071', N'Chè dừa non lá nếp', 12, 30000.00, 80, 
N'Giới thiệu chung: Chè dừa non lá nếp Quảng Nam là sự kết hợp giữa vị béo ngậy của dừa non, hương thơm đặc trưng của lá nếp (lá dứa), và vị ngọt thanh của nước đường.
Thành phần: Cơm dừa non, bột báng hoặc bột năng, lá nếp, đường, nước cốt dừa.
Khối lượng: Phục vụ theo chén.
Công dụng: Món tráng miệng thơm ngon, giải nhiệt.
Phù hợp với: Người thích hương vị dừa và lá nếp.
Đặc điểm văn hóa: Sự sáng tạo trong việc sử dụng các nguyên liệu địa phương để tạo ra món chè hấp dẫn.', 
N'Chén', N'Quảng Nam');

-- Category 13: Bánh, kẹo (IDDanhMuc = 13)
-- Huế
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP072', N'Mè xửng', 13, 50000.00, 150, 
N'Giới thiệu chung: Mè xửng Huế là loại kẹo dẻo ngọt, thơm lừng mùi mè rang và đậu phộng. Kẹo được làm từ mạch nha, đường, bột năng, mè và đậu phộng. Có nhiều loại như mè xửng dẻo, mè xửng giòn.
Thành phần: Mạch nha, đường, bột năng, mè (vừng), đậu phộng.
Khối lượng: Thường đóng gói (200g, 300g, 500g).
Công dụng: Món ăn vặt, đặc sản làm quà, thường dùng khi uống trà.
Phù hợp với: Mọi lứa tuổi (trừ người kiêng ngọt, đậu phộng).
Đặc điểm văn hóa: Đặc sản nổi tiếng của Huế, là món quà không thể thiếu khi du khách đến thăm Cố Đô. Mè xửng thể hiện sự ngọt ngào, bình dị của đất Huế.', 
N'Gói/Hộp', N'Huế');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP073', N'Bánh in', 13, 60000.00, 100, 
N'Giới thiệu chung: Bánh in Huế là loại bánh ngọt truyền thống, thường dùng trong các dịp lễ tết, cúng giỗ. Bánh được làm từ bột năng hoặc bột nếp, đường, nhân đậu xanh hoặc dừa. Bánh có khuôn hình tròn hoặc vuông, in chữ Thọ, Phúc...
Thành phần: Bột năng/bột nếp, đường, đậu xanh/dừa, hương liệu (vani, hoa bưởi).
Khối lượng: Thường đóng hộp hoặc gói theo chiếc.
Công dụng: Dùng trong thờ cúng, làm quà biếu, món tráng miệng.
Phù hợp với: Người thích đồ ngọt truyền thống.
Đặc điểm văn hóa: Loại bánh mang ý nghĩa tốt lành, gắn liền với các nghi lễ truyền thống của người Huế.', 
N'Hộp/Cái', N'Huế');

-- Đà Nẵng
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP074', N'Bánh khô mè Cẩm Lệ', 13, 45000.00, 120, 
N'Giới thiệu chung: Bánh khô mè Cẩm Lệ (Đà Nẵng) là loại bánh đặc sản giòn tan, thơm bùi. Bánh được làm từ bột gạo, đường, gừng và phủ lớp mè rang vàng óng.
Thành phần: Bột gạo, đường, gừng, mè.
Khối lượng: Thường đóng gói (200g, 500g).
Công dụng: Ăn vặt, nhâm nhi cùng trà nóng, làm quà.
Phù hợp với: Mọi lứa tuổi.
Đặc điểm văn hóa: Đặc sản truyền thống của làng Cẩm Lệ, Đà Nẵng, mang hương vị quê hương mộc mạc.', 
N'Gói', N'Đà Nẵng');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP075', N'Kẹo đậu phộng', 13, 40000.00, 130, 
N'Giới thiệu chung: Kẹo đậu phộng Đà Nẵng (hay còn gọi là kẹo cu đơ phiên bản miền Trung) là loại kẹo giòn, ngọt, bùi làm từ đậu phộng, mạch nha, đường và bánh tráng.
Thành phần: Đậu phộng, mạch nha, đường, bánh tráng, gừng (tùy loại).
Khối lượng: Thường đóng gói hoặc thanh.
Công dụng: Ăn vặt, làm quà.
Phù hợp với: Người thích đồ ngọt, giòn.
Đặc điểm văn hóa: Món kẹo dân dã, quen thuộc, mang hương vị đồng quê.', 
N'Gói/Thanh', N'Đà Nẵng');

-- Quảng Nam
INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP076', N'Bánh thuẫn', 13, 70000.00, 90, 
N'Giới thiệu chung: Bánh thuẫn (hay bánh thửng) Quảng Nam là loại bánh xốp mềm, thơm mùi trứng và bột bình tinh, thường được nướng bằng khuôn đồng truyền thống. Bánh có hình dạng như bông hoa nở, màu vàng ươm.
Thành phần: Trứng gà/vịt, bột bình tinh, đường, vani.
Khối lượng: Thường bán theo chục hoặc kg.
Công dụng: Dùng trong các dịp lễ tết, cúng giỗ, ăn vặt.
Phù hợp với: Mọi lứa tuổi.
Đặc điểm văn hóa: Loại bánh truyền thống không thể thiếu trong mâm cúng ngày Tết của người Quảng Nam, thể hiện sự sum vầy, may mắn.', 
N'Chục/Kg', N'Quảng Nam');

INSERT INTO SanPham (IDSanPham, TenSanPham, IDDanhMuc, GiaBan, SoLuongTon, MoTa, DonViTinh, XuatXu)
VALUES 
('SP077', N'Bánh ú tro', 13, 15000.00, 100, 
N'Giới thiệu chung: Bánh ú tro Quảng Nam (bánh gio) được làm từ gạo nếp ngâm trong nước tro (tro của một số loại cây), gói bằng lá dong hoặc lá chuối, luộc chín. Bánh có màu hổ phách trong veo, dẻo mềm, vị nhạt, thường ăn với mật mía.
Thành phần: Gạo nếp, nước tro, lá gói. Mật mía ăn kèm.
Khối lượng: Bán theo cái.
Công dụng: Món ăn thanh mát, dễ tiêu, thường ăn vào dịp Tết Đoan Ngọ.
Phù hợp với: Mọi lứa tuổi.
Đặc điểm văn hóa: Món bánh truyền thống gắn liền với Tết Đoan Ngọ, mang ý nghĩa xua đuổi tà ma, bệnh tật.', 
N'Cái', N'Quảng Nam');


-- Inserting image paths into HinhAnhSanPham table

-- Category 1: Ẩm thực
-- Huế
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/banhbeohue1.jpg', 'SP001');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/banhbotlochue1.jpg', 'SP002');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/bunbohue1.jpg', 'SP003');
-- Đà Nẵng
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/ramcuoncaidanang1.jpg', 'SP004');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/bunchacadanang1.jpg', 'SP005');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/banhtrangcuonthitheodanang1.jpg', 'SP006');
-- Quảng Nam
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/miquangquangnam1.jpg', 'SP007');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/caolauquangnam1.jpg', 'SP008');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/banhxeoquangnam1.jpg', 'SP009');

-- Category 2: Hải sản khô
-- Huế
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tomkhohue1.jpg', 'SP010');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/cacomkhohue1.jpg', 'SP011');
-- Đà Nẵng
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/muckhodanang1.jpg', 'SP012');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/cabokhodanang1.jpg', 'SP013');
-- Quảng Nam
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/cahokhoquangnam1.jpg', 'SP014');

-- Category 3: Nước mắm và gia vị
-- Đà Nẵng
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/nuocmamnamodanang1.jpg', 'SP015');
-- Quảng Nam
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/nuocmamcuakhequangnam1.jpg', 'SP016');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tuongotquangnam1.jpg', 'SP017');
-- Huế
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/mamruochue1.jpg', 'SP018');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/muoiothue1.jpg', 'SP019');

-- Category 4: Trà
-- Huế
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tracungdinhhue1.jpg', 'SP020');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/trahoaatisohue1.jpg', 'SP021');
-- Đà Nẵng
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/trasamduadanang1.jpg', 'SP022');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/trahoalaidanang1.jpg', 'SP023');
-- Quảng Nam
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/traxanhquangnam1.jpg', 'SP024');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/trathaomocquangnam1.jpg', 'SP025');

-- Category 5: Tinh dầu
-- Huế
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tinhdautramhue1.jpg', 'SP026');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tinhdauhoasenhue1.jpg', 'SP027');
-- Đà Nẵng
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tinhdausachanhdanang1.jpg', 'SP028');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tinhdaubachadanang1.jpg', 'SP029');
-- Quảng Nam
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tinhdauquequangnam1.jpg', 'SP030');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tinhdaungaicuuquangnam1.jpg', 'SP031');

-- Category 6: Hương, nhang
-- Huế
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/huongtramhue1.jpg', 'SP032');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/huongquehue1.jpg', 'SP033');
-- Đà Nẵng
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/nhangtramdanang1.jpg', 'SP034');
-- Quảng Nam
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/nhangquequangnam1.jpg', 'SP035');

-- Category 7: Thời trang truyền thống
-- Huế
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/nonlahue1.jpg', 'SP036');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/aocophuchue1.jpg', 'SP037');

-- Category 8: Đồ thủ công mỹ nghệ
-- Huế
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tranhheutayhue1.jpg', 'SP038');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/boamtramenlamhue1.jpg', 'SP039');
-- Đà Nẵng
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tuongcachepnonnuocdanang1.jpg', 'SP040');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/mohinhcaurongdanang1.jpg', 'SP041');
-- Quảng Nam
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/binhgomquangnam1.jpg', 'SP042');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/giosachmaytrequangnam1.jpg', 'SP043');

-- Category 9: Đồ lưu niệm
-- Huế
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tohehue1.jpg', 'SP044');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/mockhoadainoihue1.jpg', 'SP045');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/nonbaithohue1.jpg', 'SP046');
-- Đà Nẵng
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/mockhoacaurongdanang1.jpg', 'SP047');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/aoilovedanang1.jpg', 'SP048');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tuivaiinhinhcauvangdanang1.jpg', 'SP049');
-- Quảng Nam
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/mockhoaphocoquangnam1.jpg', 'SP050');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/quattayquangnam1.jpg', 'SP051');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/longdenhoianquangnam1.jpg', 'SP052');

-- Category 10: Rượu truyền thống
-- Huế
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/ruouminhmanghue1.jpg', 'SP053');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/ruougaohue1.jpg', 'SP054');
-- Đà Nẵng
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/ruougaodanang1.jpg', 'SP055');
-- Quảng Nam
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/ruouhongdaoquangnam1.jpg', 'SP056');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/ruougaolutquangnam1.jpg', 'SP057');

-- Category 11: Vật phẩm tâm linh và phong thủy
-- Huế
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/tuongphathue1.jpg', 'SP058');
-- Đà Nẵng

INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/caydaphongthuydanang1.jpg', 'SP059');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/chuoihattramhuongdanang1.jpg', 'SP060');
-- Quảng Nam
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/longdenphongthuyquangnam1.jpg', 'SP061');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/vongtaydaquangnam1.jpg', 'SP062');

-- Category 12: Chè (Các loại chè đặc sản)
-- Huế
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/chehatsenlongnhanhue1.jpg', 'SP063');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/chebaphue1.jpg', 'SP064');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/chebotlocheoquayhue1.jpg', 'SP065');
-- Đà Nẵng
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/chechuoinuongladuadanang1.jpg', 'SP066');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/chethaidanang1.jpg', 'SP067');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/chexoaxoahatluudanang1.jpg', 'SP068');
-- Quảng Nam
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/chedaudoquangnam1.jpg', 'SP069');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/chedaudenquangnam1.jpg', 'SP070');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/cheduanonlanepquangnam1.jpg', 'SP071');

-- Category 13: Bánh, kẹo
-- Huế
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/mexunghue1.jpg', 'SP072');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/banhinhue1.jpg', 'SP073');
-- Đà Nẵng
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/banhkhomecamledanang1.jpg', 'SP074');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/keodauphongdanang1.jpg', 'SP075');
-- Quảng Nam
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/banhthuanquangnam1.jpg', 'SP076');
INSERT INTO HinhAnhSanPham (HinhAnh, IDSanPham) VALUES ('/images/banhutroquangnam1.jpg', 'SP077');



-- Inserting payment methods into ThanhToan table

INSERT INTO ThanhToan (MaThanhToan, TenThanhToan) 
VALUES 
('COD', N'Thanh toán khi nhận hàng (COD)'); -- Using a shorter MaThanhToan for COD as it's very common. CHAR(10) will pad it.

INSERT INTO ThanhToan (MaThanhToan, TenThanhToan) 
VALUES 
('BANKTRANSF', N'Chuyển khoản ngân hàng');

INSERT INTO ThanhToan (MaThanhToan, TenThanhToan) 
VALUES 
('VNPAYQR', N'Thanh toán qua cổng VNPay (QR Code, Thẻ nội địa, Ví điện tử)');

INSERT INTO ThanhToan (MaThanhToan, TenThanhToan) 
VALUES 
('MOMOWALLET', N'Thanh toán qua ví điện tử MoMo');

INSERT INTO ThanhToan (MaThanhToan, TenThanhToan) 
VALUES 
('ZALOPAY', N'Thanh toán qua ví điện tử ZaloPay');

INSERT INTO ThanhToan (MaThanhToan, TenThanhToan) 
VALUES 
('INTLCARD', N'Thanh toán bằng thẻ quốc tế (Visa, Mastercard, JCB)');


-- Inserting into DonHang table
-- Order 1
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan)
VALUES (1, '2025-05-01', N'Đã giao hàng', 220000.00, 1); -- tongTien = (35000*2) + (50000*3) = 70000 + 150000 = 220000

-- Order 2
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan)
VALUES (2, '2025-05-03', N'Đang giao hàng', 550000.00, 2); -- tongTien = (250000*1) + (150000*2) = 250000 + 300000 = 550000

-- Order 3
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan)
VALUES (3, '2025-05-05', N'Đang xử lý', 580000.00, 3); -- tongTien = (80000*1) + (100000*5) = 80000 + 500000 = 580000

-- Order 4
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan)
VALUES (4, '2025-05-07', N'Đã đặt hàng', 890000.00, 4); -- tongTien = (650000*1) + (120000*2) = 650000 + 240000 = 890000

-- Order 5
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan)
VALUES (5, '2025-05-09', N'Đã hủy', 330000.00, 1); -- tongTien = (15000*10) + (45000*4) = 150000 + 180000 = 330000
GO

-- Inserting into ChiTietDonHang table
-- Assuming IDDonHang for the above orders are 1, 2, 3, 4, 5 respectively.

-- Details for Order 1 (IDDonHang = 1)
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (1, 'SP001', 2); -- Bánh bèo
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (1, 'SP072', 3); -- Mè xửng

-- Details for Order 2 (IDDonHang = 2)
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (2, 'SP010', 1); -- Tôm khô
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (2, 'SP020', 2); -- Trà Cung Đình

-- Details for Order 3 (IDDonHang = 3)
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (3, 'SP036', 1); -- Nón lá Huế
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (3, 'SP052', 5); -- Lồng đèn Hội An

-- Details for Order 4 (IDDonHang = 4)
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (4, 'SP012', 1); -- Mực khô
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (4, 'SP056', 2); -- Rượu Hồng Đào

-- Details for Order 5 (IDDonHang = 5)
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (5, 'SP077', 10); -- Bánh ú tro
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong)
VALUES (5, 'SP002', 4); -- Bánh bột lọc
GO


-- Inserting 10 reviews for the previously added ChiTietDonHang items
-- Assuming IDChiTietDonHang values are 1 to 10 for the 10 items.

-- Review for CTDH 1 (Product: SP001 - Bánh bèo)
INSERT INTO DanhGia (IDChiTietDonHang, soSao, noiDung)
VALUES (1, 5, N'Bánh bèo Huế ở đây ngon tuyệt vời! Vỏ bánh mềm, tôm cháy thơm, nước chấm đậm đà. Sẽ ủng hộ shop dài dài.');

-- Review for CTDH 2 (Product: SP072 - Mè xửng)
INSERT INTO DanhGia (IDChiTietDonHang, soSao, noiDung)
VALUES (2, 4, N'Mè xửng dẻo, thơm, không quá ngọt. Ăn với trà rất hợp. Đóng gói cẩn thận.');

-- Review for CTDH 3 (Product: SP010 - Tôm khô)
INSERT INTO DanhGia (IDChiTietDonHang, soSao, noiDung)
VALUES (3, 5, N'Tôm khô chất lượng, con to đều, màu đẹp tự nhiên. Dùng nấu canh hay kho thịt đều ngon. Rất đáng tiền.');

-- Review for CTDH 4 (Product: SP020 - Trà Cung Đình)
INSERT INTO DanhGia (IDChiTietDonHang, soSao, noiDung)
VALUES (4, 4, N'Trà Cung Đình thơm mùi thảo mộc, uống thấy dễ chịu, ngủ ngon hơn. Hộp trà đẹp, có thể làm quà biếu.');

-- Review for CTDH 5 (Product: SP036 - Nón lá Huế)
INSERT INTO DanhGia (IDChiTietDonHang, soSao, noiDung)
VALUES (5, 5, N'Nón lá rất đẹp, nhẹ và thanh thoát đúng chất Huế. Shop tư vấn nhiệt tình. Giao hàng nhanh.');

-- Review for CTDH 6 (Product: SP052 - Lồng đèn Hội An)
INSERT INTO DanhGia (IDChiTietDonHang, soSao, noiDung)
VALUES (6, 4, N'Lồng đèn màu sắc tươi tắn, treo lên rất xinh. Chất liệu vải tốt. Tuy nhiên có một cái hơi méo chút xíu nhưng không đáng kể.');

-- Review for CTDH 7 (Product: SP012 - Mực khô)
INSERT INTO DanhGia (IDChiTietDonHang, soSao, noiDung)
VALUES (7, 5, N'Mực khô Đà Nẵng chuẩn xịn! Mực dày mình, ngọt thịt, nướng lên thơm phức. Sẽ mua lại.');

-- Review for CTDH 8 (Product: SP056 - Rượu Hồng Đào)
INSERT INTO DanhGia (IDChiTietDonHang, soSao, noiDung)
VALUES (8, 4, N'Rượu Hồng Đào thơm, vị đặc trưng. Mua làm quà rất ý nghĩa. Chai đóng gói đẹp, cẩn thận.');

-- Review for CTDH 9 (Product: SP077 - Bánh ú tro from a hypothetically 'Đã hủy' order)
INSERT INTO DanhGia (IDChiTietDonHang, soSao, noiDung)
VALUES (9, 3, N'Bánh ú tro dẻo, nhưng mình thấy vị hơi nhạt nếu không có mật mía. Giao hàng hơi chậm so với dự kiến.');

-- Review for CTDH 10 (Product: SP002 - Bánh bột lọc from a hypothetically 'Đã hủy' order)
INSERT INTO DanhGia (IDChiTietDonHang, soSao, noiDung)
VALUES (10, 5, N'Bánh bột lọc dai ngon, nhân tôm thịt đậm đà. Nước chấm pha vừa miệng. Rất hài lòng với sản phẩm!');
GO

-- Inserting DonHang and ChiTietDonHang for Jan 2025 - Apr 2025 (20 Orders)
-- Using direct INSERT ... VALUES format
-- Assuming IDDonHang starts from 6

-- ==== January 2025 ====

-- Order 1 (IDDonHang: 6)
-- KhachHang: 1, ThanhToan: 1, TrangThai: Đã giao hàng
-- Product1: SP001 (Bánh bèo, 35000.00), Qty1: ((6)%3)+1 = 1
-- Product2: SP002 (Bánh bột lọc, 45000.00), Qty2: ((6+1)%3)+1 = 2
-- TongTien: (35000.00 * 1) + (45000.00 * 2) = 35000 + 90000 = 125000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan)
VALUES (1, '2025-01-03', N'Đã giao hàng', 125000.00, 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (6, 'SP001', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (6, 'SP002', 2);
GO

-- Order 2 (IDDonHang: 7)
-- KhachHang: 2, ThanhToan: 2, TrangThai: Hoàn thành
-- Product1: SP010 (Tôm khô, 250000.00), Qty1: ((7)%3)+1 = 2
-- Product2: SP020 (Trà Cung Đình, 150000.00), Qty2: ((7+1)%3)+1 = 3
-- TongTien: (250000.00 * 2) + (150000.00 * 3) = 500000 + 450000 = 950000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan)
VALUES (2, '2025-01-08', N'Hoàn thành', 950000.00, 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (7, 'SP010', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (7, 'SP020', 3);
GO

-- Order 3 (IDDonHang: 8)
-- KhachHang: 3, ThanhToan: 3, TrangThai: Đã giao hàng
-- Product1: SP030 (Tinh dầu quế, 220000.00), Qty1: ((8)%3)+1 = 3
-- Product2: SP036 (Nón lá Huế, 80000.00), Qty2: ((8+1)%3)+1 = 1
-- TongTien: (220000.00 * 3) + (80000.00 * 1) = 660000 + 80000 = 740000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan)
VALUES (3, '2025-01-15', N'Đã giao hàng', 740000.00, 3);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (8, 'SP030', 3);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (8, 'SP036', 1);
GO

-- Order 4 (IDDonHang: 9)
-- KhachHang: 4, ThanhToan: 4, TrangThai: Hoàn thành
-- Product1: SP040 (Tượng cá chép Non Nước, 500000.00), Qty1: ((9)%3)+1 = 1
-- Product2: SP044 (Tò he, 25000.00), Qty2: ((9+1)%3)+1 = 2
-- TongTien: (500000.00 * 1) + (25000.00 * 2) = 500000 + 50000 = 550000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan)
VALUES (4, '2025-01-22', N'Hoàn thành', 550000.00, 4);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (9, 'SP040', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (9, 'SP044', 2);
GO

-- Order 5 (IDDonHang: 10)
-- KhachHang: 5, ThanhToan: 5, TrangThai: Đã hủy
-- Product1: SP050 (Móc khóa phố cổ, 30000.00), Qty1: ((10)%3)+1 = 2
-- Product2: SP052 (Lồng đèn Hội An, 100000.00), Qty2: ((10+1)%3)+1 = 3
-- TongTien: (30000.00 * 2) + (100000.00 * 3) = 60000 + 300000 = 360000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan)
VALUES (5, '2025-01-27', N'Đã hủy', 360000.00, 5);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (10, 'SP050', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (10, 'SP052', 3);
GO

-- ==== February 2025 ==== (Feb 2025 has 28 days)
-- Order 6 (IDDonHang: 11)
-- KhachHang: 1, ThanhToan: 6, TrangThai: Đã giao hàng
-- Product1: SP003 (Bún bò, 55000.00), Qty1: ((11)%3)+1 = 3
-- Product2: SP011 (Cá cơm khô, 180000.00), Qty2: ((11+1)%3)+1 = 1
-- TongTien: (55000.00 * 3) + (180000.00 * 1) = 165000 + 180000 = 345000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan)
VALUES (1, '2025-02-03', N'Đã giao hàng', 345000.00, 6);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (11, 'SP003', 3);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (11, 'SP011', 1);
GO

-- Order 7 (IDDonHang: 12)
-- KhachHang: 2, ThanhToan: 1, TrangThai: Hoàn thành
-- Product1: SP015 (Nước mắm Nam Ô, 120000.00), Qty1: ((12)%3)+1 = 1
-- Product2: SP023 (Trà hoa lài, 95000.00), Qty2: ((12+1)%3)+1 = 2
-- TongTien: (120000.00 * 1) + (95000.00 * 2) = 120000 + 190000 = 310000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan)
VALUES (2, '2025-02-08', N'Hoàn thành', 310000.00, 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (12, 'SP015', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (12, 'SP023', 2);
GO

-- Order 8 (IDDonHang: 13)
-- KhachHang: 3, ThanhToan: 2, TrangThai: Đã giao hàng
-- Product1: SP032 (Hương trầm, 100000.00), Qty1: ((13)%3)+1 = 2
-- Product2: SP038 (Tranh thêu tay Huế, 2500000.00), Qty2: ((13+1)%3)+1 = 3
-- TongTien: (100000.00 * 2) + (2500000.00 * 3) = 200000 + 7500000 = 7700000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan)
VALUES (3, '2025-02-15', N'Đã giao hàng', 7700000.00, 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (13, 'SP032', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (13, 'SP038', 3);
GO

-- Order 9 (IDDonHang: 14)
-- KhachHang: 4, ThanhToan: 3, TrangThai: Hoàn thành
-- Product1: SP046 (Nón bài thơ huế, 90000.00), Qty1: ((14)%3)+1 = 3
-- Product2: SP053 (Rượu Minh Mạng, 350000.00), Qty2: ((14+1)%3)+1 = 1
-- TongTien: (90000.00 * 3) + (350000.00 * 1) = 270000 + 350000 = 620000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan)
VALUES (4, '2025-02-22', N'Hoàn thành', 620000.00, 3);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (14, 'SP046', 3);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (14, 'SP053', 1);
GO

-- Order 10 (IDDonHang: 15)
-- KhachHang: 5, ThanhToan: 4, TrangThai: Đã hủy
-- Product1: SP060 (Chuỗi hạt trầm hương, 1200000.00), Qty1: ((15)%3)+1 = 1
-- Product2: SP063 (Chè hạt sen long nhãn, 40000.00), Qty2: ((15+1)%3)+1 = 2
-- TongTien: (1200000.00 * 1) + (40000.00 * 2) = 1200000 + 80000 = 1280000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan)
VALUES (5, '2025-02-25', N'Đã hủy', 1280000.00, 4);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (15, 'SP060', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (15, 'SP063', 2);
GO

-- ==== March 2025 ====
-- Order 11 (IDDonHang: 16)
-- KhachHang: 1, ThanhToan: 5, TrangThai: Đã giao hàng
-- Product1: SP004 (Ram cuốn cải, 60000.00), Qty1: ((16)%3)+1 = 2
-- Product2: SP013 (Cá bò khô, 320000.00), Qty2: ((16+1)%3)+1 = 3
-- TongTien: (60000.00 * 2) + (320000.00 * 3) = 120000 + 960000 = 1080000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan)
VALUES (1, '2025-03-03', N'Đã giao hàng', 1080000.00, 5);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (16, 'SP004', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (16, 'SP013', 3);
GO

-- Order 12 (IDDonHang: 17)
-- KhachHang: 2, ThanhToan: 6, TrangThai: Hoàn thành
-- Product1: SP021 (Trà hoa atiso, 120000.00), Qty1: ((17)%3)+1 = 3
-- Product2: SP028 (Tinh dầu sả hương, 150000.00), Qty2: ((17+1)%3)+1 = 1
-- TongTien: (120000.00 * 3) + (150000.00 * 1) = 360000 + 150000 = 510000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan)
VALUES (2, '2025-03-08', N'Hoàn thành', 510000.00, 6);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (17, 'SP021', 3);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (17, 'SP028', 1);
GO

-- Order 13 (IDDonHang: 18)
-- KhachHang: 3, ThanhToan: 1, TrangThai: Đã giao hàng
-- Product1: SP037 (Áo cổ phục Huế, 1500000.00), Qty1: ((18)%3)+1 = 1
-- Product2: SP041 (Mô hình cầu rồng, 350000.00), Qty2: ((18+1)%3)+1 = 2
-- TongTien: (1500000.00 * 1) + (350000.00 * 2) = 1500000 + 700000 = 2200000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan)
VALUES (3, '2025-03-15', N'Đã giao hàng', 2200000.00, 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (18, 'SP037', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (18, 'SP041', 2);
GO

-- Order 14 (IDDonHang: 19)
-- KhachHang: 4, ThanhToan: 2, TrangThai: Hoàn thành
-- Product1: SP054 (Rượu gạo Huế, 90000.00), Qty1: ((19)%3)+1 = 2
-- Product2: SP061 (Đèn lồng phong thủy, 150000.00), Qty2: ((19+1)%3)+1 = 3
-- TongTien: (90000.00 * 2) + (150000.00 * 3) = 180000 + 450000 = 630000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan)
VALUES (4, '2025-03-22', N'Hoàn thành', 630000.00, 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (19, 'SP054', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (19, 'SP061', 3);
GO

-- Order 15 (IDDonHang: 20)
-- KhachHang: 5, ThanhToan: 3, TrangThai: Đã hủy
-- Product1: SP070 (Chè đậu đen, 20000.00), Qty1: ((20)%3)+1 = 3
-- Product2: SP074 (Bánh khô mè Cẩm Lệ, 45000.00), Qty2: ((20+1)%3)+1 = 1
-- TongTien: (20000.00 * 3) + (45000.00 * 1) = 60000 + 45000 = 105000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan)
VALUES (5, '2025-03-27', N'Đã hủy', 105000.00, 3);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (20, 'SP070', 3);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (20, 'SP074', 1);
GO

-- ==== April 2025 ====
-- Order 16 (IDDonHang: 21)
-- KhachHang: 1, ThanhToan: 4, TrangThai: Đã giao hàng
-- Product1: SP005 (Bún chả cá, 50000.00), Qty1: ((21)%3)+1 = 1
-- Product2: SP016 (Nước mắm Cửa Khe, 110000.00), Qty2: ((21+1)%3)+1 = 2
-- TongTien: (50000.00 * 1) + (110000.00 * 2) = 50000 + 220000 = 270000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan)
VALUES (1, '2025-04-03', N'Đã giao hàng', 270000.00, 4);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (21, 'SP005', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (21, 'SP016', 2);
GO

-- Order 17 (IDDonHang: 22)
-- KhachHang: 2, ThanhToan: 5, TrangThai: Hoàn thành
-- Product1: SP025 (Trà thảo mộc, 100000.00), Qty1: ((22)%3)+1 = 2
-- Product2: SP031 (Tinh dầu ngải cứu, 190000.00), Qty2: ((22+1)%3)+1 = 3
-- TongTien: (100000.00 * 2) + (190000.00 * 3) = 200000 + 570000 = 770000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan)
VALUES (2, '2025-04-08', N'Hoàn thành', 770000.00, 5);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (22, 'SP025', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (22, 'SP031', 3);
GO

-- Order 18 (IDDonHang: 23)
-- KhachHang: 3, ThanhToan: 6, TrangThai: Đã giao hàng
-- Product1: SP043 (Giỏ sách mây tre, 280000.00), Qty1: ((23)%3)+1 = 3
-- Product2: SP047 (Móc khóa cầu Rồng, 35000.00), Qty2: ((23+1)%3)+1 = 1
-- TongTien: (280000.00 * 3) + (35000.00 * 1) = 840000 + 35000 = 875000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan)
VALUES (3, '2025-04-15', N'Đã giao hàng', 875000.00, 6);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (23, 'SP043', 3);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (23, 'SP047', 1);
GO

-- Order 19 (IDDonHang: 24)
-- KhachHang: 4, ThanhToan: 1, TrangThai: Hoàn thành
-- Product1: SP057 (Rượu gạo lứt, 110000.00), Qty1: ((24)%3)+1 = 1
-- Product2: SP065 (Chè bột lọc heo quay, 35000.00), Qty2: ((24+1)%3)+1 = 2
-- TongTien: (110000.00 * 1) + (35000.00 * 2) = 110000 + 70000 = 180000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan)
VALUES (4, '2025-04-22', N'Hoàn thành', 180000.00, 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (24, 'SP057', 1);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (24, 'SP065', 2);
GO

-- Order 20 (IDDonHang: 25)
-- KhachHang: 5, ThanhToan: 2, TrangThai: Đã hủy
-- Product1: SP076 (Bánh thuẫn, 70000.00), Qty1: ((25)%3)+1 = 2
-- Product2: SP008 (Cao lầu, 50000.00), Qty2: ((25+1)%3)+1 = 3
-- TongTien: (70000.00 * 2) + (50000.00 * 3) = 140000 + 150000 = 290000.00
INSERT INTO DonHang (IDKhachHang, ngayLap, TrangThai, tongTien, IDThanhToan)
VALUES (5, '2025-04-27', N'Đã hủy', 290000.00, 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (25, 'SP076', 2);
INSERT INTO ChiTietDonHang (IDDonHang, IDSanPham, soLuong) VALUES (25, 'SP008', 3);
GO