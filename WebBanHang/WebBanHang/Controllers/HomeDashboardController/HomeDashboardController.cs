using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using WebBanHang.Models;

namespace WebBanHang.Controllers.HomeDashboardController
{
    public class HomeDashboardController : Controller
    {
        private readonly ShopHueDaQuaContext _context;

        public HomeDashboardController(ShopHueDaQuaContext context)
        {
            _context = context;
        }


        public IActionResult HomeDashBoard()
        {
            int soLuongKhachHang = _context.DonHangs.Where(d => d.TrangThai == "Hoàn thành")
                .Select(d => d.IdkhachHang)
                .Distinct()
                .Count(); ;
            int soLuongDonHang = _context.DonHangs.Count();
            int soLuongSanPham = _context.SanPhams.Count();

            // Tính tổng số lượng sản phẩm trong tất cả các đơn hàng
            //int soLuongSanPhamTrongDonHang = _context.ChiTietDonHangs.Sum(c => c.SoLuong) ?? 0;
            // tính tổng doanh thu sản phẩm
            //decimal doanhThu = _context.ChiTietDonHangs
            //    .Include(c => c.IddonHangNavigation)
            //    .Include(c => c.IdsanPhamNavigation)
            //    .Sum(c => c.SoLuong * c.IdsanPhamNavigation.GiaBan) ?? 0;

            // Group categories by region using TenDacSan property from DanhMuc model

            var hueCategories = _context.DanhMucs
                .Where(d => d.TenDacSan == "Đặc sản Huế")
                .Include(d => d.SanPhams)
                .ToList();

            var danangCategories = _context.DanhMucs
                .Where(d => d.TenDacSan == "Đặc sản Đà Nẵng")
                .Include(d => d.SanPhams)
                .ToList();

            var quangnamCategories = _context.DanhMucs
                .Where(d => d.TenDacSan == "Đặc sản Quảng Nam")
                .Include(d => d.SanPhams)
                .ToList();

            // For each region, get category names and product counts
            ViewBag.HueLabels = hueCategories.Select(c => c.TenDanhMuc).ToList();
            ViewBag.HueValues = hueCategories.Select(c => c.SanPhams.Count).ToList();

            ViewBag.DanangLabels = danangCategories.Select(c => c.TenDanhMuc).ToList();
            ViewBag.DanangValues = danangCategories.Select(c => c.SanPhams.Count).ToList();

            ViewBag.QuangNamLabels = quangnamCategories.Select(c => c.TenDanhMuc).ToList();
            ViewBag.QuangNamValues = quangnamCategories.Select(c => c.SanPhams.Count).ToList();

            // Tính tổng số lượng sản phẩm trong tất cả các đơn hàng
            ViewBag.DanangProducts = danangCategories.Select(c =>
    c.SanPhams.Select(sp => new { sp.TenSanPham, sp.SoLuongTon }).ToList()
).ToList();
            ViewBag.HueProducts = hueCategories.Select(c =>
                c.SanPhams.Select(sp => new { sp.TenSanPham, sp.SoLuongTon }).ToList()
            ).ToList();

            ViewBag.QuangNamProducts = quangnamCategories.Select(c =>
                c.SanPhams.Select(sp => new { sp.TenSanPham, sp.SoLuongTon }).ToList()
            ).ToList();
            // Tính tổng doanh thu từ tất cả các đơn hàng
            decimal doanhThu = _context.DonHangs
                .Where(d => d.TrangThai == "Hoàn thành") // Chỉ lấy đơn hàng hoàn thành
                .Include(d => d.ChiTietDonHangs)
                .ThenInclude(c => c.IdsanPhamNavigation)
                .Sum(d => d.ChiTietDonHangs.Sum(c => c.SoLuong * c.IdsanPhamNavigation.GiaBan)) ?? 0;
            ViewBag.SoLuongKhachHang = soLuongKhachHang;
            ViewBag.SoLuongDonHang = soLuongDonHang;
            ViewBag.SoLuongSanPham = soLuongSanPham;
            ViewBag.DoanhThu = doanhThu;

            var doanhThuThang = _context.DonHangs
                .Where(d => d.NgayLap.HasValue && d.TrangThai == "Hoàn thành") // Thêm điều kiện trạng thái hoàn thành
                .GroupBy(d => d.NgayLap.Value.Month)
                .OrderBy(g => g.Key)
                .Select(g => new
                {
                    Thang = $"T{g.Key}",
                    TongTien = Math.Round(g.Sum(x => x.TongTien) ?? 0 / 1_000_000M, 2) // triệu
                })
                .ToList();

            ViewBag.Labels = doanhThuThang.Select(x => x.Thang).ToList();
            ViewBag.Values = doanhThuThang.Select(x => x.TongTien).ToList();


            var danhMucPhanBo = _context.SanPhams
                .Include(s => s.IddanhMucNavigation) // Đảm bảo navigation property được include
                .GroupBy(s => s.IddanhMucNavigation != null ? s.IddanhMucNavigation.TenDanhMuc : "Khác") // Kiểm tra null và nhóm theo tên danh mục
                .Select(g => new
                {
                    TenDanhMuc = g.Key, // Tên danh mục (key trong group)
                    SoLuong = g.Count() // Đếm số lượng sản phẩm trong mỗi nhóm
                })
                .OrderByDescending(x => x.SoLuong)
                .ToList(); // Chuyển thành danh sách




            ViewBag.CategoryLabels = danhMucPhanBo.Select(x => x.TenDanhMuc).ToList();
            ViewBag.CategoryValues = danhMucPhanBo.Select(x => x.SoLuong).ToList();

            var donHangGanDay = _context.DonHangs
                .Include(d => d.IdkhachHangNavigation)
                .Include(d => d.ChiTietDonHangs)
                .ThenInclude(ct => ct.IdsanPhamNavigation)
                .OrderByDescending(d => d.NgayLap)
                .Take(5)
                .Select(d => new
                {
                    MaDon = d.IddonHang,
                    KhachHang = d.IdkhachHangNavigation.HoTen,
                    SanPham = string.Join(", ", d.ChiTietDonHangs.Select(ct => ct.IdsanPhamNavigation.TenSanPham)),
                    TongTien = d.TongTien ?? 0,
                    NgayDat = d.NgayLap,
                    TrangThai = d.TrangThai
                })
                .ToList();

            ViewBag.DonHangGanDay = donHangGanDay;

            var top5SanPham = _context.ChiTietDonHangs
                .Include(c => c.IdsanPhamNavigation)
                .GroupBy(c => new
                {
                    c.IdsanPhamNavigation.TenSanPham,
                    c.IdsanPhamNavigation.IdsanPham
                })
                .Select(g => new
                {
                    TenSanPham = g.Key.TenSanPham,
                    SoLuongBan = g.Sum(x => x.SoLuong)
                })
                .OrderByDescending(x => x.SoLuongBan)
                .Take(5)
                .ToList();

            ViewBag.Top5Labels = top5SanPham.Select(x => x.TenSanPham).ToList();
            ViewBag.Top5Values = top5SanPham.Select(x => x.SoLuongBan).ToList();

            return View();
        }
        [HttpGet]
        public JsonResult GetDoanhThuNgayTheoThang(int month)
        {
            // Lấy năm hiện tại, có thể sửa lại nếu muốn chọn năm
            int year = DateTime.Now.Year;
            int daysInMonth = DateTime.DaysInMonth(year, month);

            // Lấy doanh thu từng ngày có đơn hàng
            var doanhThuNgay = _context.DonHangs
                .Where(d => d.NgayLap.HasValue && d.TrangThai == "Hoàn thành" && d.NgayLap.Value.Month == month && d.NgayLap.Value.Year == year)
                .GroupBy(d => d.NgayLap.Value.Day)
                .Select(g => new {
                    Ngay = g.Key,
                    TongTien = Math.Round((g.Sum(x => x.TongTien) ?? 0) / 1_000_000M, 2)
                })
                .ToList();

            // Tạo mảng đủ số ngày trong tháng, mặc định 0
            var labels = new List<string>();
            var values = new List<decimal>();
            for (int day = 1; day <= daysInMonth; day++)
            {
                labels.Add($"Ngày {day}");
                var doanhThu = doanhThuNgay.FirstOrDefault(x => x.Ngay == day);
                values.Add(doanhThu != null ? doanhThu.TongTien : 0);
            }

            return Json(new { labels, values });
        }
    }
}
