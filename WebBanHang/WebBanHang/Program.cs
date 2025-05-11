using Microsoft.EntityFrameworkCore;
using WebBanHang.Models;

var builder = WebApplication.CreateBuilder(args);
builder.Services.AddDbContext<ShopHueDaQuaContext>(options =>
    options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection"))); // K?t n?i c? s? d? li?u
// Add services to the container.
builder.Services.AddControllersWithViews();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseRouting();

app.UseAuthorization();

app.MapStaticAssets();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=HomeDashboard}/{action=HomeDashBoard}/{id?}")
    //pattern: "{controller=Home}/{action=Index}/{id?}")
    .WithStaticAssets();


app.Run();
