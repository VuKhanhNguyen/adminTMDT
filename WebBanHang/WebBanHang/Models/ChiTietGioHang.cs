using System;
using System.Collections.Generic;

namespace WebBanHang.Models;

public partial class ChiTietGioHang
{
    public int IdchiTietGioHang { get; set; }

    public int? IdgioHang { get; set; }

    public string? IdsanPham { get; set; }

    public int? SoLuongDat { get; set; }

    public virtual GioHang? IdgioHangNavigation { get; set; }

    public virtual SanPham? IdsanPhamNavigation { get; set; }
}
