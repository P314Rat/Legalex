using Legalex.DAL.Models.CaseAggregate;
using Legalex.DAL.Models.OrderAggregate;
using Legalex.DAL.Models.UserAggregate;


namespace Legalex.DAL.Models
{
    public interface IUnitOfWork : IDisposable
    {
        IUserRepository Users { get; }
        ISpecialistRepository Specialists { get; }
        IClientRepository Clients { get; }
        IOrderRepository Orders { get; }
        ICaseRepository Cases { get; }


        void SaveChanges();
    }
}
