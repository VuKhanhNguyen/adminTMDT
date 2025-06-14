﻿using Microsoft.AspNetCore.Mvc;
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
                .Include(d => d.ChiTietDonHangs)
                .ThenInclude(ct => ct.IdsanPhamNavigation)
                .FirstOrDefault(d => d.IddonHang == id);

            if (order == null) return NotFound();

            var result = new
            {
                iddonHang = order.IddonHang,
                khachHang = order.IdkhachHangNavigation?.HoTen,
                ngayLap = order.NgayLap?.ToString("dd/MM/yyyy") ?? string.Empty,
                tongTien = order.TongTien?.ToString("N0") + "đ" ?? "0đ",
                thanhToan = order.IdthanhToanNavigation?.TenThanhToan,
                trangThai = order.TrangThai,
                chiTiet = order.ChiTietDonHangs.Select(ct => new
                {
                    tenSanPham = ct.IdsanPhamNavigation?.TenSanPham,
                    soLuong = ct.SoLuong,
                    donGia = ct.IdsanPhamNavigation?.GiaBan ?? 0,
                    thanhTien = (ct.SoLuong ?? 0) * (ct.IdsanPhamNavigation?.GiaBan ?? 0)
                })
            };

            return Json(result);
        }


        [HttpPost]
        public IActionResult UpdateOrderStatus(int iddonHang, string trangThai)
        {
            var order = _context.DonHangs.Find(iddonHang);
            if (order == null) return NotFound();

            _context.Database.ExecuteSqlRaw(
                "UPDATE DonHang SET TrangThai = @p0 WHERE IDDonHang = @p1",
                trangThai, iddonHang);

            return RedirectToAction("OrderManagerment");
        }


        [HttpGet]
        public IActionResult FilterByStatus(string status, int page = 1, int pageSize = 5)
        {
            var orders = _context.DonHangs
                .Include(d => d.IdkhachHangNavigation)
                .Include(d => d.IdthanhToanNavigation)
                .AsQueryable();

            if (!string.IsNullOrEmpty(status))
            {
                orders = orders.Where(d => d.TrangThai == status);
            }

            var totalOrders = orders.Count();
            var totalPages = (int)Math.Ceiling((double)totalOrders / pageSize);

            var pagedOrders = orders
                .OrderByDescending(d => d.NgayLap)
                .Skip((page - 1) * pageSize)
                .Take(pageSize)
                .Select(order => new {
                    iddonHang = order.IddonHang,
                    khachHang = order.IdkhachHangNavigation.HoTen,
                    ngayLap = order.NgayLap.HasValue ? order.NgayLap.Value.ToString("dd/MM/yyyy") : "",
                    tongTien = order.TongTien.HasValue ? order.TongTien.Value.ToString("N0") + "đ" : "0đ",
                    thanhToan = order.IdthanhToanNavigation.TenThanhToan,
                    trangThai = order.TrangThai
                }).ToList();

            return Json(new { orders = pagedOrders, totalOrders, totalPages, currentPage = page });
        }
        [HttpGet]
        public IActionResult SearchOrders(string keyword, string status = "", int page = 1, int pageSize = 5)
        {
            var orders = _context.DonHangs
                .Include(d => d.IdkhachHangNavigation)
                .Include(d => d.IdthanhToanNavigation)
                .AsQueryable();

            if (!string.IsNullOrEmpty(status))
                orders = orders.Where(d => d.TrangThai == status);

            if (!string.IsNullOrEmpty(keyword))
                orders = orders.Where(d =>
                    d.IddonHang.ToString().Contains(keyword) ||
                    d.IdkhachHangNavigation.HoTen.Contains(keyword)
                );

            var totalOrders = orders.Count();
            var totalPages = (int)Math.Ceiling((double)totalOrders / pageSize);

            var pagedOrders = orders
                .OrderByDescending(d => d.NgayLap)
                .Skip((page - 1) * pageSize)
                .Take(pageSize)
                .Select(order => new {
                    iddonHang = order.IddonHang,
                    khachHang = order.IdkhachHangNavigation.HoTen,
                    ngayLap = order.NgayLap.HasValue ? order.NgayLap.Value.ToString("dd/MM/yyyy") : "",
                    tongTien = order.TongTien.HasValue ? order.TongTien.Value.ToString("N0") + "đ" : "0đ",
                    thanhToan = order.IdthanhToanNavigation.TenThanhToan,
                    trangThai = order.TrangThai
                }).ToList();

            return Json(new { orders = pagedOrders, totalOrders, totalPages, currentPage = page });
        }
        [HttpGet]
        public IActionResult FilterByPayment(int? paymentMethod, string status = "", int page = 1, int pageSize = 5)
        {
            var orders = _context.DonHangs
                .Include(d => d.IdkhachHangNavigation)
                .Include(d => d.IdthanhToanNavigation)
                .AsQueryable();

            if (paymentMethod.HasValue && paymentMethod.Value > 0)
                orders = orders.Where(d => d.IdthanhToan == paymentMethod.Value);

            if (!string.IsNullOrEmpty(status))
                orders = orders.Where(d => d.TrangThai == status);

            var totalOrders = orders.Count();
            var totalPages = (int)Math.Ceiling((double)totalOrders / pageSize);

            var pagedOrders = orders
                .OrderByDescending(d => d.NgayLap)
                .Skip((page - 1) * pageSize)
                .Take(pageSize)
                .Select(order => new {
                    iddonHang = order.IddonHang,
                    khachHang = order.IdkhachHangNavigation.HoTen,
                    ngayLap = order.NgayLap.HasValue ? order.NgayLap.Value.ToString("dd/MM/yyyy") : "",
                    tongTien = order.TongTien.HasValue ? order.TongTien.Value.ToString("N0") + "đ" : "0đ",
                    thanhToan = order.IdthanhToanNavigation.TenThanhToan,
                    trangThai = order.TrangThai
                }).ToList();

            return Json(new { orders = pagedOrders, totalOrders, totalPages, currentPage = page });
        }
        [HttpGet]
        public IActionResult FilterOrders(string status = "", int paymentMethod = 0, int page = 1, int pageSize = 5)
        {
            var orders = _context.DonHangs
                .Include(d => d.IdkhachHangNavigation)
                .Include(d => d.IdthanhToanNavigation)
                .AsQueryable();

            if (!string.IsNullOrEmpty(status))
                orders = orders.Where(d => d.TrangThai == status);

            if (paymentMethod > 0)
                orders = orders.Where(d => d.IdthanhToan == paymentMethod);

            var totalOrders = orders.Count();
            var totalPages = (int)Math.Ceiling((double)totalOrders / pageSize);

            var pagedOrders = orders
                .OrderByDescending(d => d.NgayLap)
                .Skip((page - 1) * pageSize)
                .Take(pageSize)
                .Select(order => new {
                    iddonHang = order.IddonHang,
                    khachHang = order.IdkhachHangNavigation.HoTen,
                    ngayLap = order.NgayLap.HasValue ? order.NgayLap.Value.ToString("dd/MM/yyyy") : "",
                    tongTien = order.TongTien.HasValue ? order.TongTien.Value.ToString("N0") + "đ" : "0đ",
                    thanhToan = order.IdthanhToanNavigation.TenThanhToan,
                    trangThai = order.TrangThai
                }).ToList();

            return Json(new { orders = pagedOrders, totalOrders, totalPages, currentPage = page });
        }
        [HttpPost]
        public IActionResult DeleteOrder(int id)
        {
            var order = _context.DonHangs
                .Include(d => d.ChiTietDonHangs)
                .FirstOrDefault(d => d.IddonHang == id);

            if (order == null)
                return Json(new { success = false, message = "Không tìm thấy đơn hàng." });

            // Xóa chi tiết đơn hàng trước
            _context.ChiTietDonHangs.RemoveRange(order.ChiTietDonHangs);

            _context.Database.ExecuteSqlRaw("DELETE FROM ChiTietDonHang WHERE IDDonHang = {0}", id);

            // Xóa đơn hàng
            _context.Database.ExecuteSqlRaw("DELETE FROM DonHang WHERE IDDonHang = {0}", id);
            TempData["SuccessMessage"] = "Xóa đơn hàng thành công!";
            return Json(new { success = true });
        }
    }
}
