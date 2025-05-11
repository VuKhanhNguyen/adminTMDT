using System;
using System.Collections.Generic;

namespace WebBanHang.Models;

public partial class SanPham
{
    public string IdsanPham { get; set; } = null!;

    public string? TenSanPham { get; set; }

    public int? IddanhMuc { get; set; }

    public decimal? GiaBan { get; set; }

    public int? SoLuongTon { get; set; }

    public string? MoTa { get; set; }

    public string? DonViTinh { get; set; }

    public string? XuatXu { get; set; }

    public virtual ICollection<ChiTietDonHang> ChiTietDonHangs { get; set; } = new List<ChiTietDonHang>();

    public virtual ICollection<ChiTietGioHang> ChiTietGioHangs { get; set; } = new List<ChiTietGioHang>();

    public virtual ICollection<HinhAnhSanPham> HinhAnhSanPhams { get; set; } = new List<HinhAnhSanPham>();

    //public virtual ICollection<DanhMuc> DanhMucs { get; set; } = new List<DanhMuc>();
    public virtual DanhMuc IddanhMucNavigation { get; set; } = null!;
}
