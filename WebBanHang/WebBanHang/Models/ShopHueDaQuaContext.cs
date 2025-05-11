using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace WebBanHang.Models;

public partial class ShopHueDaQuaContext : DbContext
{
    public ShopHueDaQuaContext()
    {
    }

    public ShopHueDaQuaContext(DbContextOptions<ShopHueDaQuaContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Blog> Blogs { get; set; }

    public virtual DbSet<ChiTietDonHang> ChiTietDonHangs { get; set; }

    public virtual DbSet<ChiTietGioHang> ChiTietGioHangs { get; set; }

    public virtual DbSet<DanhGia> DanhGia { get; set; }

    public virtual DbSet<DanhMuc> DanhMucs { get; set; }

    public virtual DbSet<DonHang> DonHangs { get; set; }

    public virtual DbSet<GioHang> GioHangs { get; set; }

    public virtual DbSet<HinhAnhSanPham> HinhAnhSanPhams { get; set; }

    public virtual DbSet<KhachHang> KhachHangs { get; set; }

    public virtual DbSet<SanPham> SanPhams { get; set; }

    public virtual DbSet<ThanhToan> ThanhToans { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=LAPTOP-Q12JULH6\\KHANHKHIEMTON;Database=ShopHueDaQua;Trusted_Connection=True;Encrypt=False");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        base.OnModelCreating(modelBuilder);

        // Configure one-to-many relationship between DanhMuc and SanPham
        modelBuilder.Entity<SanPham>()
            .HasOne(s => s.IddanhMucNavigation)
            .WithMany(d => d.SanPhams)
            .HasForeignKey(s => s.IddanhMuc)
            .HasConstraintName("FK_SanPham_DanhMuc")
            .OnDelete(DeleteBehavior.Cascade); // Optional: Configure delete behavior
        modelBuilder.Entity<Blog>(entity =>
        {
            entity.HasKey(e => e.Idblog).HasName("PK__Blog__3CFB8BBEFD47FDE5");

            entity.ToTable("Blog");

            entity.Property(e => e.Idblog).HasColumnName("IDBlog");
            entity.Property(e => e.HinhAnh).HasMaxLength(1000);
            entity.Property(e => e.NgayDang)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime");
            entity.Property(e => e.TieuDe).HasMaxLength(255);
        });

        modelBuilder.Entity<ChiTietDonHang>(entity =>
        {
            entity.HasKey(e => e.IdchiTietDonHang).HasName("PK__ChiTietD__EB5BBDC08FB319F0");

            entity.ToTable("ChiTietDonHang");

            entity.Property(e => e.IdchiTietDonHang).HasColumnName("IDChiTietDonHang");
            entity.Property(e => e.IddonHang).HasColumnName("IDDonHang");
            entity.Property(e => e.IdsanPham)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("IDSanPham");
            entity.Property(e => e.SoLuong).HasColumnName("soLuong");

            entity.HasOne(d => d.IddonHangNavigation).WithMany(p => p.ChiTietDonHangs)
                .HasForeignKey(d => d.IddonHang)
                .HasConstraintName("FK__ChiTietDo__IDDon__52593CB8");

            entity.HasOne(d => d.IdsanPhamNavigation).WithMany(p => p.ChiTietDonHangs)
                .HasForeignKey(d => d.IdsanPham)
                .HasConstraintName("FK__ChiTietDo__IDSan__534D60F1");
        });

        modelBuilder.Entity<ChiTietGioHang>(entity =>
        {
            entity.HasKey(e => e.IdchiTietGioHang).HasName("PK__ChiTietG__5AC4B7C596B05E61");

            entity.ToTable("ChiTietGioHang");

            entity.Property(e => e.IdchiTietGioHang).HasColumnName("IDChiTietGioHang");
            entity.Property(e => e.IdgioHang).HasColumnName("IDGioHang");
            entity.Property(e => e.IdsanPham)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("IDSanPham");

            entity.HasOne(d => d.IdgioHangNavigation).WithMany(p => p.ChiTietGioHangs)
                .HasForeignKey(d => d.IdgioHang)
                .HasConstraintName("FK__ChiTietGi__IDGio__403A8C7D");

            entity.HasOne(d => d.IdsanPhamNavigation).WithMany(p => p.ChiTietGioHangs)
                .HasForeignKey(d => d.IdsanPham)
                .HasConstraintName("FK__ChiTietGi__IDSan__412EB0B6");
        });

        modelBuilder.Entity<DanhGia>(entity =>
        {
            entity.HasKey(e => e.IddanhGia).HasName("PK__DanhGia__C216E48D3CB36D6E");

            entity.Property(e => e.IddanhGia).HasColumnName("IDDanhGia");
            entity.Property(e => e.IdchiTietDonHang).HasColumnName("IDChiTietDonHang");
            entity.Property(e => e.NoiDung).HasColumnName("noiDung");
            entity.Property(e => e.SoSao).HasColumnName("soSao");
            entity.Property(e => e.ThoiGian)
                .HasDefaultValueSql("(getdate())")
                .HasColumnType("datetime")
                .HasColumnName("thoiGian");

            entity.HasOne(d => d.IdchiTietDonHangNavigation).WithMany(p => p.DanhGia)
                .HasForeignKey(d => d.IdchiTietDonHang)
                .HasConstraintName("FK__DanhGia__IDChiTi__5629CD9C");
        });

        modelBuilder.Entity<DanhMuc>(entity =>
        {
            entity.HasKey(e => e.IddanhMuc).HasName("PK__DanhMuc__DF6C0BD24988B091");

            entity.ToTable("DanhMuc");

            entity.Property(e => e.IddanhMuc).HasColumnName("IDDanhMuc");
            entity.Property(e => e.MoTa).HasColumnName("moTa");
            entity.Property(e => e.TenDanhMuc)
                .HasMaxLength(200)
                .HasColumnName("tenDanhMuc");

            entity.HasMany(d => d.Idblogs).WithMany(p => p.IddanhMucs)
                .UsingEntity<Dictionary<string, object>>(
                    "BlogDanhMuc",
                    r => r.HasOne<Blog>().WithMany()
                        .HasForeignKey("Idblog")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("FK__Blog_Danh__IDBlo__46E78A0C"),
                    l => l.HasOne<DanhMuc>().WithMany()
                        .HasForeignKey("IddanhMuc")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("FK__Blog_Danh__IDDan__45F365D3"),
                    j =>
                    {
                        j.HasKey("IddanhMuc", "Idblog").HasName("PK__Blog_Dan__2CA3B369A2A301E1");
                        j.ToTable("Blog_DanhMuc");
                        j.IndexerProperty<int>("IddanhMuc").HasColumnName("IDDanhMuc");
                        j.IndexerProperty<int>("Idblog").HasColumnName("IDBlog");
                    });
        });

        modelBuilder.Entity<DonHang>(entity =>
        {
            entity.HasKey(e => e.IddonHang).HasName("PK__DonHang__9CA232F791CCA0F3");

            entity.ToTable("DonHang");

            entity.Property(e => e.IddonHang).HasColumnName("IDDonHang");
            entity.Property(e => e.IdkhachHang).HasColumnName("IDKhachHang");
            entity.Property(e => e.IdthanhToan).HasColumnName("IDThanhToan");
            entity.Property(e => e.NgayLap).HasColumnName("ngayLap");
            entity.Property(e => e.TongTien)
                .HasColumnType("decimal(18, 2)")
                .HasColumnName("tongTien");
            entity.Property(e => e.TrangThai).HasMaxLength(255);

            entity.HasOne(d => d.IdkhachHangNavigation).WithMany(p => p.DonHangs)
                .HasForeignKey(d => d.IdkhachHang)
                .HasConstraintName("FK__DonHang__IDKhach__4E88ABD4");

            entity.HasOne(d => d.IdthanhToanNavigation).WithMany(p => p.DonHangs)
                .HasForeignKey(d => d.IdthanhToan)
                .HasConstraintName("FK__DonHang__IDThanh__4F7CD00D");
        });

        modelBuilder.Entity<GioHang>(entity =>
        {
            entity.HasKey(e => e.IdgioHang).HasName("PK__GioHang__0B2CDDAE81E1B2E2");

            entity.ToTable("GioHang");

            entity.Property(e => e.IdgioHang).HasColumnName("IDGioHang");
            entity.Property(e => e.IdkhachHang).HasColumnName("IDKhachHang");

            entity.HasOne(d => d.IdkhachHangNavigation).WithMany(p => p.GioHangs)
                .HasForeignKey(d => d.IdkhachHang)
                .HasConstraintName("FK__GioHang__IDKhach__398D8EEE");
        });

        modelBuilder.Entity<HinhAnhSanPham>(entity =>
        {
            entity.HasKey(e => e.IdhinhAnh).HasName("PK__HinhAnhS__2B573EE86387A017");

            entity.ToTable("HinhAnhSanPham");

            entity.Property(e => e.IdhinhAnh).HasColumnName("IDHinhAnh");
            entity.Property(e => e.HinhAnh)
                .HasMaxLength(1000)
                .IsUnicode(false);
            entity.Property(e => e.IdsanPham)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("IDSanPham");

            entity.HasOne(d => d.IdsanPhamNavigation).WithMany(p => p.HinhAnhSanPhams)
                .HasForeignKey(d => d.IdsanPham)
                .HasConstraintName("FK__HinhAnhSa__IDSan__49C3F6B7");
        });

        modelBuilder.Entity<KhachHang>(entity =>
        {
            entity.HasKey(e => e.IdkhachHang).HasName("PK__KhachHan__5A7167B563B525D7");

            entity.ToTable("KhachHang");

            entity.HasIndex(e => e.Email, "UQ_KhachHang_Email").IsUnique();

            entity.HasIndex(e => e.TaiKhoan, "UQ_KhachHang_TaiKhoan").IsUnique();

            entity.Property(e => e.IdkhachHang).HasColumnName("IDKhachHang");
            entity.Property(e => e.DiaChi).HasMaxLength(255);
            entity.Property(e => e.Email)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("email");
            entity.Property(e => e.HoTen)
                .HasMaxLength(255)
                .HasColumnName("hoTen");
            entity.Property(e => e.MatKhau)
                .HasMaxLength(255)
                .IsUnicode(false)
                .HasColumnName("matKhau");
            entity.Property(e => e.SoDienThoai)
                .HasMaxLength(10)
                .IsUnicode(false)
                .IsFixedLength()
                .HasColumnName("soDienThoai");
            entity.Property(e => e.TaiKhoan)
                .HasMaxLength(50)
                .IsUnicode(false)
                .HasColumnName("taiKhoan");
        });

        modelBuilder.Entity<SanPham>(entity =>
        {
            entity.HasKey(e => e.IdsanPham).HasName("PK__SanPham__9D45E58AC7ECC711");

            entity.ToTable("SanPham");

            entity.Property(e => e.IdsanPham)
                .HasMaxLength(20)
                .IsUnicode(false)
                .HasColumnName("IDSanPham");
            entity.Property(e => e.DonViTinh).HasMaxLength(100);
            entity.Property(e => e.GiaBan).HasColumnType("decimal(18, 2)");
            entity.Property(e => e.IddanhMuc).HasColumnName("IDDanhMuc");
            entity.Property(e => e.TenSanPham).HasMaxLength(100);
            entity.Property(e => e.XuatXu).HasMaxLength(100);
        });

        modelBuilder.Entity<ThanhToan>(entity =>
        {
            entity.HasKey(e => e.IdthanhToan).HasName("PK__ThanhToa__DC57C3A13F17D195");

            entity.ToTable("ThanhToan");

            entity.HasIndex(e => e.MaThanhToan, "UQ_ThanhToan_MaThanhToan").IsUnique();

            entity.Property(e => e.IdthanhToan).HasColumnName("IDThanhToan");
            entity.Property(e => e.MaThanhToan)
                .HasMaxLength(10)
                .IsUnicode(false);
            entity.Property(e => e.TenThanhToan).HasMaxLength(255);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
