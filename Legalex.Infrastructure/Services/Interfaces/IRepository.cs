namespace Legalex.Infrastructure.Services.Interfaces
{
    public interface IRepository<T>
    {
        void Add(T item);
        void DeleteById(Guid id);
        IEnumerable<T> GetAll();
        T? GetById(Guid id);
    }
}
