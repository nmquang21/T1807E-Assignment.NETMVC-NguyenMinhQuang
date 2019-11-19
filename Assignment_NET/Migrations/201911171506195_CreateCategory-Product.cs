namespace Assignment_NET.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class CreateCategoryProduct : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Categories",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(unicode: false),
                        Icon = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.Id);
            
            CreateTable(
                "dbo.Products",
                c => new
                    {
                        Id = c.Int(nullable: false, identity: true),
                        Name = c.String(unicode: false),
                        Price = c.Double(nullable: false),
                        Image = c.String(unicode: false),
                        Description = c.String(unicode: false),
                        Categoty_Id = c.Int(),
                    })
                .PrimaryKey(t => t.Id)
                .ForeignKey("dbo.Categories", t => t.Categoty_Id)
                .Index(t => t.Categoty_Id);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Products", "Categoty_Id", "dbo.Categories");
            DropIndex("dbo.Products", new[] { "Categoty_Id" });
            DropTable("dbo.Products");
            DropTable("dbo.Categories");
        }
    }
}
