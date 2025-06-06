using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;
using WebBanHang.Models;

namespace WebBanHang.Controllers.ProductManagementController.cs
{
    public class ProductManagementController : Controller
    {
        private readonly ShopHueDaQuaContext _context;

        //public HomeController(ILogger<HomeController> logger)
        //{
        //    _logger = logger;
        //}

        public ProductManagementController(ShopHueDaQuaContext context)
        {
            _context = context;
        }

        public IActionResult manage()
        {
            var sanPhams = _context.SanPhams
                .Select(sp => new SanPhamViewModel
                {
                    IDSanPham = sp.IdsanPham,
                    TenSanPham = sp.TenSanPham,
                    IDDanhMuc = (int)sp.IddanhMuc,
                    GiaBan = (decimal)sp.GiaBan,
                    SoLuongTon = (decimal)sp.SoLuongTon,
                    MoTa = sp.MoTa,
                    DonViTinh = sp.DonViTinh,
                    XuatXu = sp.XuatXu
                }).ToList();

            return View(sanPhams);
        }


        public IActionResult Create()
        {
            return View();
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create(SanPham sp)
        {
            if (ModelState.IsValid)
            {
                _context.SanPhams.Add(sp);
                _context.SaveChanges();
                return RedirectToAction("Manage");
            }
            return View(sp);
        }


        public IActionResult Edit(string id)
        {
            var sp = _context.SanPhams.Find(id);
            if (sp == null) return NotFound();
            return View(sp);
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(SanPham sp)
        {
            if (ModelState.IsValid)
            {
                _context.SanPhams.Update(sp);
                _context.SaveChanges();
                return RedirectToAction("Manage");
            }
            return View(sp);
        }


        public IActionResult Delete(string id)
        {
            var sp = _context.SanPhams.Find(id);
            if (sp == null) return NotFound();

            _context.SanPhams.Remove(sp);
            _context.SaveChanges();
            return RedirectToAction("Manage");
        }
    }
}
