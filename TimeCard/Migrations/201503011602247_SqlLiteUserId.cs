namespace TimeCard.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class SqlLiteUserId : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.AspNetUsers", "SQLiteUserId", c => c.Int(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.AspNetUsers", "SQLiteUserId");
        }
    }
}
