using Invoice_API.Entities;
using Microsoft.EntityFrameworkCore;
namespace Invoice_API.Data;

public class AppDbContext : DbContext

{
    public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)

    {

    }
    public DbSet<Users> Users { get; set; }

    protected override void OnModelCreating(ModelBuilder modelBuilder)

    {

        base.OnModelCreating(modelBuilder);

    }

}

