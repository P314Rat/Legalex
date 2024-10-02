using Legalex.DAL.Models.UserAggregate;
using Microsoft.EntityFrameworkCore;


namespace Legalex.DAL.Storage.Repositories
{
    public class SpecialistRepository : ISpecialistRepository
    {
        private readonly ApplicationDbContext _dbContext;


        public SpecialistRepository(ApplicationDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public void Create(Specialist item)
        {
            var entry = _dbContext?.Specialists?.Add(item);

            if (entry == null || entry.State != EntityState.Added)
                throw new InvalidOperationException("Specialist was not created");
        }

        public void Delete(Specialist item)
        {
            throw new NotImplementedException();
        }

        public void DeleteAll()
        {
            throw new NotImplementedException();
        }

        public void DeleteById(string id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<Specialist>? GetAll()
        {
            return _dbContext?.Specialists.ToList();
        }

        public Specialist? GetById(string id)
        {
            throw new NotImplementedException();
        }

        public void Update(Specialist item)
        {
            throw new NotImplementedException();
        }
    }
}
