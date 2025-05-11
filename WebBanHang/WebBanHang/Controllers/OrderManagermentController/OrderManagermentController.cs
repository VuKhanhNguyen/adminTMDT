using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using WebBanHang.Models;
using PagedList;

namespace WebBanHang.Controllers.OrderManagermentController
{
    public class OrderManagermentController : Controller
    {
        public readonly ShopHueDaQuaContext _context;
        public OrderManagermentController(ShopHueDaQuaContext context)
        {
            _context = context;
        }


        //public IActionResult OrderManagerment()
        //{
        //    var thanhToans = _context.ThanhToans.ToList();
        //    ViewBag.PaymentMethods = new SelectList(thanhToans, "IdthanhToan", "TenThanhToan");

        //    var orders = _context.DonHangs
        //        .Include(d => d.IdkhachHangNavigation)
        //        .Include(d => d.IdthanhToanNavigation)
        //        .OrderByDescending(d => d.NgayLap)
        //        .ToList();

        //    ViewBag.Orders = orders;
        //    return View();
        //}


        public IActionResult OrderManagerment(int page = 1, int pageSize = 5)
        {
            // Danh sách phương thức thanh toán
            var thanhToans = _context.ThanhToans.ToList();
            ViewBag.PaymentMethods = new SelectList(thanhToans, "IdthanhToan", "TenThanhToan");

            // Tổng số đơn hàng
            var totalOrders = _context.DonHangs.Count();

            // Lấy đơn hàng theo phân trang
            var orders = _context.DonHangs
                .Include(d => d.IdkhachHangNavigation)
                .Include(d => d.IdthanhToanNavigation)
                .OrderByDescending(d => d.NgayLap)
                .Skip((page - 1) * pageSize)
                .Take(pageSize)
                .ToList();

            // Truyền dữ liệu về view
            ViewBag.Orders = orders;
            ViewBag.TotalOrders = totalOrders;
            ViewBag.CurrentPage = page;
            ViewBag.PageSize = pageSize;

            return View();
        }



        [HttpGet]
        public IActionResult GetOrderById(int id)
        {
            var order = _context.DonHangs
                .Include(d => d.IdkhachHangNavigation)
                .Include(d => d.IdthanhToanNavigation)
                .FirstOrDefault(d => d.IddonHang == id);

            if (order == null) return NotFound();

            var result = new
            {
                iddonHang = order.IddonHang,
                khachHang = order.IdkhachHangNavigation?.HoTen,
                ngayLap = order.NgayLap.HasValue ? order.NgayLap.Value.ToString("dd/MM/yyyy") : null,
                tongTien = order.TongTien.HasValue ? order.TongTien.Value.ToString("N0") + " VND" : null,
                thanhToan = order.IdthanhToanNavigation?.TenThanhToan,
                trangThai = order.TrangThai
            };

            return Json(result);
        }

        [HttpPost]
        public IActionResult UpdateOrderStatus(int iddonHang, string trangThai)
        {
            var order = _context.DonHangs.Find(iddonHang);
            if (order == null) return NotFound();

            order.TrangThai = trangThai;
            _context.SaveChanges();

            return RedirectToAction("OrderManagerment");
        }

    }
}
