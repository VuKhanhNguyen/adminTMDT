using System;
using System.Collections.Generic;

namespace WebBanHang.Models;

public partial class ChiTietDonHang
{
    public int IdchiTietDonHang { get; set; }

    public int? IddonHang { get; set; }

    public string? IdsanPham { get; set; }

    public int? SoLuong { get; set; }

    public virtual ICollection<DanhGia> DanhGia { get; set; } = new List<DanhGia>();

    public virtual DonHang? IddonHangNavigation { get; set; }

    public virtual SanPham? IdsanPhamNavigation { get; set; }
}
