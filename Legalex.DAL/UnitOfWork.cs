using Legalex.DAL.Models;
using Legalex.DAL.Models.OrderAggregate;
using Legalex.DAL.Storage;
using Legalex.DAL.Storage.Repositories;
using Microsoft.EntityFrameworkCore;

namespace Legalex.DAL
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly ApplicationDbContext _dbContext;
        private readonly OrderRepository _orderRepository;
        public IOrderRepository Orders { get => _orderRepository; }


        public UnitOfWork(ApplicationDbContext dbContext)
        {
            _orderRepository = new OrderRepository(dbContext);
            _dbContext = dbContext;

            InitialDatabase();
        }

        public void Dispose()
        {
            GC.SuppressFinalize(this);
            _dbContext.Dispose();
        }

        public void SaveChanges()
        {
            _dbContext.SaveChanges();
        }

        private void InitialDatabase()
        {
            if (_dbContext.Database.GetPendingMigrations().Any())
            {
                _dbContext.Database.Migrate();
                _dbContext.SaveChanges();
            }
        }
    }
}
