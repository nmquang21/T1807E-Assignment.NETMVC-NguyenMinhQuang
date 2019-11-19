using Assignment_NET.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication2.Models;

namespace Assignment_NET.Controllers
{
    public class HomeController : Controller
    {
        private MyDbContext _myDbContex = new MyDbContext();
        public ActionResult Index()
        {
            List<Category> Categories = _myDbContex.Categories.ToList();
            List<Product> MaleProducts = _myDbContex.Products.Where(c => c.Gender == 1).ToList();
            List<Product> FemaleProducts = _myDbContex.Products.Where(c => c.Gender == 0).ToList();

            ViewBag.MaleProducts = MaleProducts;
            ViewBag.FemaleProducts = FemaleProducts;

            return View(Categories);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}