using Legalex.Infrastructure.Domain;
using Legalex.Infrastructure.Models;
using Legalex.Infrastructure.Services.Interfaces;
using Microsoft.EntityFrameworkCore;

namespace Legalex.Infrastructure.Services.Implementations
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly ApplicationDbContext _dbContext;//general context
        private OrderRepository _orderRepository;//specific repositories
        public IRepository<Order> Orders => _orderRepository;//public repository interface


        public UnitOfWork(string connectionString)
        {
            _dbContext = new DesignTimeDbContextFactory().CreateDbContext(new string[] { connectionString });
            _orderRepository = new OrderRepository(_dbContext);

            if (_dbContext.Database.GetPendingMigrations().Any())
            {
                _dbContext.Database.Migrate();
            }
        }

        public void Dispose()
        {
            _dbContext.Dispose();
            GC.SuppressFinalize(this);
        }

        public void Save()
        {
            _dbContext.SaveChanges();
        }
    }
}
