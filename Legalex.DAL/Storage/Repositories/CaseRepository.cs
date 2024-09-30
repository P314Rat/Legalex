using Legalex.DAL.Models.CaseAggregate;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.ChangeTracking;


namespace Legalex.DAL.Storage.Repositories
{
    public class CaseRepository : ICaseRepository
    {
        private readonly ApplicationDbContext _dbContext;


        public CaseRepository(ApplicationDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public void Create(Case item)
        {
            var entry = _dbContext?.Cases?.Add(item);

            if (entry == null || entry.State != EntityState.Added)
                throw new InvalidOperationException("Case was not created");
        }
        public void Delete(Case item)
        {
            var entry = _dbContext?.Cases?.Remove(item);

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
                throw new InvalidOperationException("Case was not found in the database");
        }

        public void DeleteById(string id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Case>? GetAll()
        {
            return _dbContext?.Cases.ToList();
        }

        public Case? GetById(int id)
        {
            var item = _dbContext?.Cases?.FirstOrDefault(x => x.Id == id);

            return item;
        }

        public Case? GetById(string id)
        {
            throw new NotImplementedException();
        }

        public void Update(Case item)
        {
            throw new NotImplementedException();
        }
    }
}
