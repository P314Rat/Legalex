namespace Legalex.DAL.Models.OrderAggregate
{
    public interface IOrderRepository : IRepository<Order>
    {
        Order? GetById(int id);
        void DeleteById(int id);

    }
}
