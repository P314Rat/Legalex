using Legalex.DAL.Models.CaseAggregate;
using Legalex.DAL.Models.OrderAggregate;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.ChangeTracking;

namespace Legalex.DAL.Storage.Repositories
{
    public class OrderRepository : IOrderRepository
    {
        private readonly ApplicationDbContext _dbContext;


        public OrderRepository(ApplicationDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public void Create(Order item)
        {
            var entry = _dbContext?.Orders?.Add(item);

            if (entry == null || entry.State != EntityState.Added)
                throw new InvalidOperationException("Order was not created");
        }

        public void Delete(Order item)
        {
            var entry = _dbContext?.Orders?.Remove(item);

            if (entry == null || entry.State != EntityState.Deleted)
                throw new InvalidOperationException("Order was not deleted");
        }
        public void DeleteAll()
        {
            throw new NotImplementedException();
        }
        public void DeleteById(int id)
        {
            var item = _dbContext?.Cases?.FirstOrDefault(x => x.Id == id);
            EntityEntry<Case>? entry = null;

            if (item != null)
                entry = _dbContext?.Cases?.Remove(item);

            if (entry == null || entry.State != EntityState.Deleted)
                throw new InvalidOperationException("Order was not found");
        }

        public void DeleteById(string id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Order>? GetAll()
        {
            return _dbContext?.Orders.ToList();
        }

        public Order? GetById(int id)
        {
            var item = _dbContext?.Orders?.FirstOrDefault(x => x.Id == id);

            return item;
        }

        public Order? GetById(string id)
        {
            throw new NotImplementedException();
        }

        public void Update(Order item)
        {
            throw new NotImplementedException();
        }
    }
}
