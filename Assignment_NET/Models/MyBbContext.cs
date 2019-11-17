using Assignment_NET.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace WebApplication2.Models
{
    [DbConfigurationType(typeof(MySql.Data.Entity.MySqlEFConfiguration))]
    public class MyDbContext : DbContext

    {
        public MyDbContext() : base("name=MyContext")
        {

        }
        public DbSet<Category> Categories { get; set; }
        
    }
}