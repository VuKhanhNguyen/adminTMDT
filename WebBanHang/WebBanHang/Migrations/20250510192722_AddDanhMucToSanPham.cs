using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace WebBanHang.Migrations
{
    /// <inheritdoc />
    public partial class AddDanhMucToSanPham : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Blog",
                columns: table => new
                {
                    IDBlog = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    TieuDe = table.Column<string>(type: "nvarchar(255)", maxLength: 255, nullable: true),
                    NoiDung = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    HinhAnh = table.Column<string>(type: "nvarchar(1000)", maxLength: 1000, nullable: true),
                    NgayDang = table.Column<DateTime>(type: "datetime", nullable: true, defaultValueSql: "(getdate())")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK__Blog__3CFB8BBEFD47FDE5", x => x.IDBlog);
                });

            migrationBuilder.CreateTable(
                name: "KhachHang",
                columns: table => new
                {
                    IDKhachHang = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    taiKhoan = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: true),
                    matKhau = table.Column<string>(type: "varchar(255)", unicode: false, maxLength: 255, nullable: true),
                    hoTen = table.Column<string>(type: "nvarchar(255)", maxLength: 255, nullable: true),
                    email = table.Column<string>(type: "varchar(255)", unicode: false, maxLength: 255, nullable: true),
                    soDienThoai = table.Column<string>(type: "char(10)", unicode: false, fixedLength: true, maxLength: 10, nullable: true),
                    DiaChi = table.Column<string>(type: "nvarchar(255)", maxLength: 255, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK__KhachHan__5A7167B563B525D7", x => x.IDKhachHang);
                });

            migrationBuilder.CreateTable(
                name: "ThanhToan",
                columns: table => new
                {
                    IDThanhToan = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    MaThanhToan = table.Column<string>(type: "varchar(10)", unicode: false, maxLength: 10, nullable: true),
                    TenThanhToan = table.Column<string>(type: "nvarchar(255)", maxLength: 255, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK__ThanhToa__DC57C3A13F17D195", x => x.IDThanhToan);
                });

            migrationBuilder.CreateTable(
                name: "GioHang",
                columns: table => new
                {
                    IDGioHang = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    IDKhachHang = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK__GioHang__0B2CDDAE81E1B2E2", x => x.IDGioHang);
                    table.ForeignKey(
                        name: "FK__GioHang__IDKhach__398D8EEE",
                        column: x => x.IDKhachHang,
                        principalTable: "KhachHang",
                        principalColumn: "IDKhachHang");
                });

            migrationBuilder.CreateTable(
                name: "DonHang",
                columns: table => new
                {
                    IDDonHang = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    IDKhachHang = table.Column<int>(type: "int", nullable: true),
                    ngayLap = table.Column<DateOnly>(type: "date", nullable: true),
                    TrangThai = table.Column<string>(type: "nvarchar(255)", maxLength: 255, nullable: true),
                    tongTien = table.Column<decimal>(type: "decimal(18,2)", nullable: true),
                    IDThanhToan = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK__DonHang__9CA232F791CCA0F3", x => x.IDDonHang);
                    table.ForeignKey(
                        name: "FK__DonHang__IDKhach__4E88ABD4",
                        column: x => x.IDKhachHang,
                        principalTable: "KhachHang",
                        principalColumn: "IDKhachHang");
                    table.ForeignKey(
                        name: "FK__DonHang__IDThanh__4F7CD00D",
                        column: x => x.IDThanhToan,
                        principalTable: "ThanhToan",
                        principalColumn: "IDThanhToan");
                });

            migrationBuilder.CreateTable(
                name: "Blog_DanhMuc",
                columns: table => new
                {
                    IDDanhMuc = table.Column<int>(type: "int", nullable: false),
                    IDBlog = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK__Blog_Dan__2CA3B369A2A301E1", x => new { x.IDDanhMuc, x.IDBlog });
                    table.ForeignKey(
                        name: "FK__Blog_Danh__IDBlo__46E78A0C",
                        column: x => x.IDBlog,
                        principalTable: "Blog",
                        principalColumn: "IDBlog");
                });

            migrationBuilder.CreateTable(
                name: "ChiTietDonHang",
                columns: table => new
                {
                    IDChiTietDonHang = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    IDDonHang = table.Column<int>(type: "int", nullable: true),
                    IDSanPham = table.Column<string>(type: "varchar(20)", unicode: false, maxLength: 20, nullable: true),
                    soLuong = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK__ChiTietD__EB5BBDC08FB319F0", x => x.IDChiTietDonHang);
                    table.ForeignKey(
                        name: "FK__ChiTietDo__IDDon__52593CB8",
                        column: x => x.IDDonHang,
                        principalTable: "DonHang",
                        principalColumn: "IDDonHang");
                });

            migrationBuilder.CreateTable(
                name: "DanhGia",
                columns: table => new
                {
                    IDDanhGia = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    IDChiTietDonHang = table.Column<int>(type: "int", nullable: true),
                    soSao = table.Column<int>(type: "int", nullable: true),
                    noiDung = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    thoiGian = table.Column<DateTime>(type: "datetime", nullable: true, defaultValueSql: "(getdate())")
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK__DanhGia__C216E48D3CB36D6E", x => x.IDDanhGia);
                    table.ForeignKey(
                        name: "FK__DanhGia__IDChiTi__5629CD9C",
                        column: x => x.IDChiTietDonHang,
                        principalTable: "ChiTietDonHang",
                        principalColumn: "IDChiTietDonHang");
                });

            migrationBuilder.CreateTable(
                name: "ChiTietGioHang",
                columns: table => new
                {
                    IDChiTietGioHang = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    IDGioHang = table.Column<int>(type: "int", nullable: true),
                    IDSanPham = table.Column<string>(type: "varchar(20)", unicode: false, maxLength: 20, nullable: true),
                    SoLuongDat = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK__ChiTietG__5AC4B7C596B05E61", x => x.IDChiTietGioHang);
                    table.ForeignKey(
                        name: "FK__ChiTietGi__IDGio__403A8C7D",
                        column: x => x.IDGioHang,
                        principalTable: "GioHang",
                        principalColumn: "IDGioHang");
                });

            migrationBuilder.CreateTable(
                name: "DanhMuc",
                columns: table => new
                {
                    IDDanhMuc = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    tenDanhMuc = table.Column<string>(type: "nvarchar(200)", maxLength: 200, nullable: true),
                    moTa = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    SanPhamIdsanPham = table.Column<string>(type: "varchar(20)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK__DanhMuc__DF6C0BD24988B091", x => x.IDDanhMuc);
                });

            migrationBuilder.CreateTable(
                name: "SanPham",
                columns: table => new
                {
                    IDSanPham = table.Column<string>(type: "varchar(20)", unicode: false, maxLength: 20, nullable: false),
                    TenSanPham = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    IDDanhMuc = table.Column<int>(type: "int", nullable: true),
                    GiaBan = table.Column<decimal>(type: "decimal(18,2)", nullable: true),
                    SoLuongTon = table.Column<int>(type: "int", nullable: true),
                    MoTa = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    DonViTinh = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true),
                    XuatXu = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK__SanPham__9D45E58AC7ECC711", x => x.IDSanPham);
                    table.ForeignKey(
                        name: "FK_SanPham_DanhMuc_IDDanhMuc",
                        column: x => x.IDDanhMuc,
                        principalTable: "DanhMuc",
                        principalColumn: "IDDanhMuc",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "HinhAnhSanPham",
                columns: table => new
                {
                    IDHinhAnh = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    HinhAnh = table.Column<string>(type: "varchar(1000)", unicode: false, maxLength: 1000, nullable: true),
                    IDSanPham = table.Column<string>(type: "varchar(20)", unicode: false, maxLength: 20, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK__HinhAnhS__2B573EE86387A017", x => x.IDHinhAnh);
                    table.ForeignKey(
                        name: "FK__HinhAnhSa__IDSan__49C3F6B7",
                        column: x => x.IDSanPham,
                        principalTable: "SanPham",
                        principalColumn: "IDSanPham");
                });

            migrationBuilder.CreateIndex(
                name: "IX_Blog_DanhMuc_IDBlog",
                table: "Blog_DanhMuc",
                column: "IDBlog");

            migrationBuilder.CreateIndex(
                name: "IX_ChiTietDonHang_IDDonHang",
                table: "ChiTietDonHang",
                column: "IDDonHang");

            migrationBuilder.CreateIndex(
                name: "IX_ChiTietDonHang_IDSanPham",
                table: "ChiTietDonHang",
                column: "IDSanPham");

            migrationBuilder.CreateIndex(
                name: "IX_ChiTietGioHang_IDGioHang",
                table: "ChiTietGioHang",
                column: "IDGioHang");

            migrationBuilder.CreateIndex(
                name: "IX_ChiTietGioHang_IDSanPham",
                table: "ChiTietGioHang",
                column: "IDSanPham");

            migrationBuilder.CreateIndex(
                name: "IX_DanhGia_IDChiTietDonHang",
                table: "DanhGia",
                column: "IDChiTietDonHang");

            migrationBuilder.CreateIndex(
                name: "IX_DanhMuc_SanPhamIdsanPham",
                table: "DanhMuc",
                column: "SanPhamIdsanPham");

            migrationBuilder.CreateIndex(
                name: "IX_DonHang_IDKhachHang",
                table: "DonHang",
                column: "IDKhachHang");

            migrationBuilder.CreateIndex(
                name: "IX_DonHang_IDThanhToan",
                table: "DonHang",
                column: "IDThanhToan");

            migrationBuilder.CreateIndex(
                name: "IX_GioHang_IDKhachHang",
                table: "GioHang",
                column: "IDKhachHang");

            migrationBuilder.CreateIndex(
                name: "IX_HinhAnhSanPham_IDSanPham",
                table: "HinhAnhSanPham",
                column: "IDSanPham");

            migrationBuilder.CreateIndex(
                name: "UQ_KhachHang_Email",
                table: "KhachHang",
                column: "email",
                unique: true,
                filter: "[email] IS NOT NULL");

            migrationBuilder.CreateIndex(
                name: "UQ_KhachHang_TaiKhoan",
                table: "KhachHang",
                column: "taiKhoan",
                unique: true,
                filter: "[taiKhoan] IS NOT NULL");

            migrationBuilder.CreateIndex(
                name: "IX_SanPham_IDDanhMuc",
                table: "SanPham",
                column: "IDDanhMuc");

            migrationBuilder.CreateIndex(
                name: "UQ_ThanhToan_MaThanhToan",
                table: "ThanhToan",
                column: "MaThanhToan",
                unique: true,
                filter: "[MaThanhToan] IS NOT NULL");

            migrationBuilder.AddForeignKey(
                name: "FK__Blog_Danh__IDDan__45F365D3",
                table: "Blog_DanhMuc",
                column: "IDDanhMuc",
                principalTable: "DanhMuc",
                principalColumn: "IDDanhMuc");

            migrationBuilder.AddForeignKey(
                name: "FK__ChiTietDo__IDSan__534D60F1",
                table: "ChiTietDonHang",
                column: "IDSanPham",
                principalTable: "SanPham",
                principalColumn: "IDSanPham");

            migrationBuilder.AddForeignKey(
                name: "FK__ChiTietGi__IDSan__412EB0B6",
                table: "ChiTietGioHang",
                column: "IDSanPham",
                principalTable: "SanPham",
                principalColumn: "IDSanPham");

            migrationBuilder.AddForeignKey(
                name: "FK_DanhMuc_SanPham_SanPhamIdsanPham",
                table: "DanhMuc",
                column: "SanPhamIdsanPham",
                principalTable: "SanPham",
                principalColumn: "IDSanPham");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_SanPham_DanhMuc_IDDanhMuc",
                table: "SanPham");

            migrationBuilder.DropTable(
                name: "Blog_DanhMuc");

            migrationBuilder.DropTable(
                name: "ChiTietGioHang");

            migrationBuilder.DropTable(
                name: "DanhGia");

            migrationBuilder.DropTable(
                name: "HinhAnhSanPham");

            migrationBuilder.DropTable(
                name: "Blog");

            migrationBuilder.DropTable(
                name: "GioHang");

            migrationBuilder.DropTable(
                name: "ChiTietDonHang");

            migrationBuilder.DropTable(
                name: "DonHang");

            migrationBuilder.DropTable(
                name: "KhachHang");

            migrationBuilder.DropTable(
                name: "ThanhToan");

            migrationBuilder.DropTable(
                name: "DanhMuc");

            migrationBuilder.DropTable(
                name: "SanPham");
        }
    }
}
