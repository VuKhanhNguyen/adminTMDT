using System;
using System.Collections.Generic;

namespace WebBanHang.Models;

public partial class DanhGia
{
    public int IddanhGia { get; set; }

    public int? IdchiTietDonHang { get; set; }

    public int? SoSao { get; set; }

    public string? NoiDung { get; set; }

    public DateTime? ThoiGian { get; set; }

    public virtual ChiTietDonHang? IdchiTietDonHangNavigation { get; set; }
}
