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
	tenDacSan nvarchar(50),
    tenDanhMuc nvarchar(200),
    moTa nvarchar(max),
	hinhAnh nvarchar(max)
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
	diaChi nvarchar(255),
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
	diaChi NVARCHAR(255);
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


