using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Mvc;
using Assignment_NET.Models;
using LinqKit;
using NLog.Filters;
using WebApplication2.Models;
using Filter = System.Web.Mvc.Filter;

namespace Assignment_NET.Controllers
{
    public class ProductsController : Controller
    {
        private MyDbContext db = new MyDbContext();

        // GET: Products
        public ActionResult Index()
        {
            ViewBag.Categories = db.Categories.ToList();
            return View(db.Products.ToList());
        }

        // GET: Products/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Products.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }//GET: get product by ID
        public Product GetProduct(int? id)
        {
            Product product = db.Products.Find(id);
            return product;
        }
        public ActionResult Category(int? id)
        {
            ViewBag.Categories = db.Categories.ToList();
            ViewBag.CategoryName = db.Categories.Find(id).Name;
            IEnumerable<Product> List = db.Products.Where(c => c.Categoty.Id == id).ToList();
            return View("~/Views/Products/Index.cshtml",List);
        }

        //Tìm kiếm sản phẩm theo tên.
        public ActionResult Search(string search_value)
        {
            Debug.WriteLine(ConvertToUnSign(search_value));
            //var predicate = PredicateBuilder.New<Product>(true);
            List<Product> List = new List<Product>();
            if (search_value != null)
            {
                List = db.Products.Where(delegate (Product c)
                {
                    if (ConvertToUnSign(c.Name).IndexOf(ConvertToUnSign(search_value), StringComparison.CurrentCultureIgnoreCase) >= 0)
                        return true;
                    else
                        return false;
                }).ToList();
            }         
            ViewBag.Categories = db.Categories.ToList();
            return View("~/Views/Products/Index.cshtml", List);
        }
        // GET: Products/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Products/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,Name,Price,Image,Description,Gender")] Product product)
        {
            if (ModelState.IsValid)
            {
                db.Products.Add(product);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(product);
        }

        //Chuyển tiếng Việt sang không dấu.
        private string ConvertToUnSign(string input)
        {
            input = input.Trim();
            for (int i = 0x20; i < 0x30; i++)
            {
                input = input.Replace(((char)i).ToString(), " ");
            }
            Regex regex = new Regex(@"\p{IsCombiningDiacriticalMarks}+");
            string str = input.Normalize(NormalizationForm.FormD);
            string str2 = regex.Replace(str, string.Empty).Replace('đ', 'd').Replace('Đ', 'D');
            while (str2.IndexOf("?") >= 0)
            {
                str2 = str2.Remove(str2.IndexOf("?"), 1);
            }
            return str2;
        }
    }
}
