using Legalex.Infrastructure.Domain;
using Microsoft.EntityFrameworkCore;

namespace Legalex.Infrastructure
{
    public class ApplicationDbContext : DbContext
    {
        //public DbSet<User> Users { get; set; }
        //public DbSet<Client> Clients { get; set; }
        //public DbSet<Employee> Employees { get; set; }
        public DbSet<Order> Orders { get; set; }

        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> dbContextOptions)
            : base(dbContextOptions)
        {
        }
    }
}
