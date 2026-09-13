using Invoice.Data.Entities;
using Microsoft.EntityFrameworkCore;
using System.Numerics;

namespace Invoice.Data.Db
{
    public class AppDbContext : DbContext
    {
        public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)

        {

        }


        public DbSet<CustomerEntity> Customers { get; set; }
        public DbSet<CategoryEntity> Categories { get; set; }
        public DbSet<UsersEntity> Users { get; set; }
        public DbSet<VendorEntity> Vendors { get; set; }
        public DbSet<ItemmasterEntity> Itemmasters { get; set; }


        protected override void OnModelCreating(ModelBuilder modelBuilder)

        {

            base.OnModelCreating(modelBuilder);

        }
    }
}
