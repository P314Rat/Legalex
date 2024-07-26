namespace Legalex.DAL.Models
{
    public interface IRepository<T> where T : class
    {
        void Create(T item);
        IEnumerable<T>? GetAll();
        T? GetById(string id);
        void Update(T item);
        void Delete(T item);
        void DeleteAll();
        void DeleteById(string id);
    }
}
