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
        ProductsController productsController = new ProductsController();
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

            Session["TotalPrice"] = TotalPrice;
            return View("~/Views/Buy/CartDetail.cshtml", List);
        }
        public ActionResult UpDownCart(string status, int? product_id)
        {
            int ItemQuantity = 0;
            double TotalPrice = Double.Parse(Session["TotalPrice"].ToString());
            var QuantityCart = Int32.Parse(Session["ItemQuantity"].ToString());
            List<ItemCart> Cart = new List<ItemCart>();
            if (Session["Cart"] != null)
            {
                Cart = Session["Cart"] as List<ItemCart>;
            }
            foreach(var item in Cart)
            {
                if(item.ProductId == product_id)
                {
                    var Product = productsController.GetProduct(product_id);
                    if (status.Equals("-"))
                    {                        
                        item.Quantity--;
                        QuantityCart--;
                        TotalPrice -= Product.Price;
                        if (item.Quantity == 0)
                        {
                            Cart.Remove(item);
                        }
                    }
                    else if (status.Equals("+"))
                    {
                        item.Quantity++;
                        QuantityCart++;
                        TotalPrice += Product.Price;
                        Debug.WriteLine("++++");
                    }
                    ItemQuantity = item.Quantity;
                    break;
                }              
            }
            Session["TotalPrice"] = TotalPrice;
            Session["ItemQuantity"] = QuantityCart;
            Session["Cart"] = Cart;
            return new JsonResult()
            {
                Data = new {
                    QuantityCart = QuantityCart,
                    TotalPrice = TotalPrice,
                    ItemQuantity = ItemQuantity
                },
                JsonRequestBehavior = JsonRequestBehavior.AllowGet,
            };
        }

        
    }
}