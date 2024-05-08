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


        public UnitOfWork()
        {
            _dbContext = new DesignTimeDbContextFactory().CreateDbContext(new string[] { });
            _orderRepository = new OrderRepository(_dbContext);
            InitialDatabase();
        }

        private void InitialDatabase()
        {
            if (_dbContext.Database.GetPendingMigrations().Any())
                _dbContext.Database.Migrate();
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
