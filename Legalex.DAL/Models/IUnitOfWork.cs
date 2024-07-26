using Legalex.DAL.Models.OrderAggregate;


namespace Legalex.DAL.Models
{
    public interface IUnitOfWork : IDisposable
    {
        IOrderRepository Orders { get; }


        void SaveChanges();
    }
}
