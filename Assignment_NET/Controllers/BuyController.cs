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
            List<int> List = new List<int>();
            List.Add(1);
            List.Add(2);
            
            return View();
        }
    }
}