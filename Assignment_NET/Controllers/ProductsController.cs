using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Assignment_NET.Models;
using LinqKit;
using WebApplication2.Models;

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
        }
        public ActionResult Category(int? id)
        {
            ViewBag.Categories = db.Categories.ToList();
            ViewBag.CategoryName = db.Categories.Find(id).Name;
            IEnumerable<Product> List = db.Products.Where(c => c.Categoty.Id == id).ToList();
            return View("~/Views/Products/Index.cshtml",List);
        }
        public ActionResult Search(string search_value)
        {
            Debug.WriteLine(search_value);
            var predicate = PredicateBuilder.New<Product>(true);

            if (search_value != null)
            {
                predicate = predicate.Or(c => c.Name.Contains(search_value));
            }
            var data = db.Products.Where(predicate);
            ViewBag.Categories = db.Categories.ToList();
            return View("~/Views/Products/Index.cshtml", data);
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
    }
}
