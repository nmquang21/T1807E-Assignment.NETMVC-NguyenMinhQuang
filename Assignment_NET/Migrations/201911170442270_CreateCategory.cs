namespace Assignment_NET.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class CreateCategory : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Categories",
                c => new
                    {
                        id = c.Int(nullable: false, identity: true),
                        name = c.String(unicode: false),
                        icon = c.String(unicode: false),
                    })
                .PrimaryKey(t => t.id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Categories");
        }
    }
}
