using Assignment_NET.Models;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebApplication2.Models;

namespace Assignment_NET.Controllers
{
    public class BuyController : Controller
    {
        private MyDbContext _myDbContex = new MyDbContext();
        // GET: Buy
        [HttpPost]
        public int AddToCart(int product_id)
        {
            int ItemQuantity = 0;
            bool check = true;
            if(Session["Cart"] != null)
            {
                var Cart = Session["Cart"] as List<ItemCart>;
                var ProductQuantity = Cart.Count;
               
                for(int i = 0; i < ProductQuantity; i++)
                {
                    if(Cart[i].ProductId == product_id)
                    {
                        check = false;
                        Cart[i].Quantity += 1;
                        break;
                    }
                }
                if (check)
                {
                    Cart.Add(new ItemCart(product_id, 1));
                }
                Session["Cart"] = Cart;
                

                var ProductQuantityAfter = Cart.Count;
          
                for (int i = 0; i < ProductQuantityAfter; i++)
                {
                    ItemQuantity += Cart[i].Quantity;
                    Debug.WriteLine(Cart[i].ProductId + "-----" + Cart[i].Quantity);
                }
                Session["ItemQuantity"] = ItemQuantity;
            }
            else
            {
                Session["Cart"] = new List<ItemCart>() { new ItemCart(product_id, 1) };
                Session["ItemQuantity"] = 1;
                ItemQuantity = 1;
            }
            return ItemQuantity;
        }
        [HttpGet]
        public ActionResult CartDetail()
        {
            Double TotalPrice = 0;
            List<ItemCart> Cart = new List<ItemCart>();
            ProductsController productsController = new ProductsController();
            List<BuyItem> List = new List<BuyItem>();
            if(Session["Cart"] != null)
            {
               Cart = Session["Cart"] as List<ItemCart>;
            }
           
            foreach(var item in Cart)
            {
                Product product = productsController.GetProduct(item.ProductId);
                List.Add(new BuyItem(product, item.Quantity));
                TotalPrice += product.Price * item.Quantity;
            }
            ViewBag.TotalPrice = TotalPrice;
            return View("~/Views/Buy/CartDetail.cshtml", List);
        }
        public string UpDownCart(string status, int? product_id)
        {
            Quantity = Session["ItemQuantity"] as Int32;
            
            List<ItemCart> Cart = new List<ItemCart>();
            if (Session["Cart"] != null)
            {
                Cart = Session["Cart"] as List<ItemCart>;
            }
            foreach(var item in Cart)
            {
                if(item.ProductId == product_id)
                {
                    if (status.Equals("-"))
                    {                        
                        item.Quantity--;
                        if (item.Quantity == 0)
                        {
                            Cart.Remove(item);
                            Quantity--;
                        }
                    }
                    else if (status.Equals("+"))
                    {
                        item.Quantity++;
                        Quantity++;
                        Debug.WriteLine("++++");
                    }
                    break;
                }
                
            }
            Session["ItemQuantity"] = Quantity;
            Session["Cart"] = Cart;
            return "ok";
        }
    }
}