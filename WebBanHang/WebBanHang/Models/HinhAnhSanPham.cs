using System;
using System.Collections.Generic;

namespace WebBanHang.Models;

public partial class HinhAnhSanPham
{
    public int IdhinhAnh { get; set; }

    public string? HinhAnh { get; set; }

    public string? IdsanPham { get; set; }

    public virtual SanPham? IdsanPhamNavigation { get; set; }
}
