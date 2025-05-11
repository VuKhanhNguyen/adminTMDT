using System;
using System.Collections.Generic;

namespace WebBanHang.Models;

public partial class DanhMuc
{
    public int IddanhMuc { get; set; }

    public string? TenDanhMuc { get; set; }

    public string? MoTa { get; set; }

    public virtual ICollection<Blog> Idblogs { get; set; } = new List<Blog>();
    public virtual ICollection<SanPham> SanPhams { get; set; } = new List<SanPham>();
}
