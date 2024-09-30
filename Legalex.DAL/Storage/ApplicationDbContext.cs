using Legalex.DAL.Models.CaseAggregate;
using Legalex.DAL.Models.OrderAggregate;
using Legalex.DAL.Models.UserAggregate;
using Microsoft.EntityFrameworkCore;


namespace Legalex.DAL.Storage
{
    public class ApplicationDbContext : DbContext
    {
        public DbSet<Specialist> Specialists { get; set; }
        public DbSet<Client> Clients { get; set; }
        public DbSet<Order> Orders { get; set; }
        public DbSet<Case> Cases { get; set; }


        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
        }
    }
}
