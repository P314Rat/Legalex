using Legalex.Infrastructure.Domain;

namespace Legalex.Infrastructure.Services.Interfaces
{
    public interface IUnitOfWork : IDisposable
    {
        IRepository<Order> Orders { get; }


        void Save();
    }
}
