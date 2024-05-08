using Legalex.Infrastructure.Domain;
using Legalex.Infrastructure.Services.Interfaces;

namespace Legalex.Infrastructure.Models
{
    public class OrderRepository : IRepository<Order>
    {
        private readonly ApplicationDbContext _dbContext;


        public OrderRepository(ApplicationDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public void Add(Order order)
        {
            _dbContext.Orders.Add(order);
        }

        public void DeleteById(Guid id)
        {
            var order = _dbContext.Orders?.FirstOrDefault(x => x.Id == id);

            if (order == null)
                throw new Exception("There is no order with this ID");

            _dbContext.Orders.Remove(order);
        }

        public IEnumerable<Order> GetAll()
        {
            var orders = _dbContext.Orders?.ToList();

            if (orders == null)
                throw new Exception("No orders");

            return orders;
        }

        public Order GetById(Guid id)
        {
            var order = _dbContext.Orders?.FirstOrDefault(x => x.Id == id);

            if (order == null)
                throw new Exception("No orders");

            return order;
        }
    }
}
