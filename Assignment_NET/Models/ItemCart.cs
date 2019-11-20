using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Assignment_NET.Controllers
{
    public class ItemCart
    {
        public int ProductId { get; set; }
        public int Quantity { get; set; }
        public ItemCart(int ProductId, int Quantity)
        {
            this.ProductId = ProductId;
            this.Quantity = Quantity;
        }
    }
}