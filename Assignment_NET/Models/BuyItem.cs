using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Assignment_NET.Models
{
    public class BuyItem
    {
        public Product Product { get; set; }
        public int Quantity { get; set; }

        public BuyItem(Product Product, int Quantity)
        {
            this.Product = Product;
            this.Quantity = Quantity;
        }
    }
}