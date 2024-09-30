using Legalex.DAL.Models;
using Legalex.DAL.Models.UserAggregate;

namespace Legalex.DAL.Storage.Repositories
{
    public class UserRepository : IUserRepository
    {
        private readonly ApplicationDbContext _dbContext;


        public UserRepository(ApplicationDbContext dbContext)
        {
            _dbContext = dbContext;
        }

        public void Create(User item)
        {
            throw new NotImplementedException();
        }

        public void Delete(User item)
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

        public IEnumerable<User>? GetAll()
        {
            throw new NotImplementedException();
        }

        public User? GetById(string id)
        {
            throw new NotImplementedException();
        }

        public User GetByEmail(string email)
        {
            var user = _dbContext.Clients.FirstOrDefault(c => c.Email == email) as User
                ?? _dbContext.Specialists.FirstOrDefault(s => s.Email == email);

            if(user == null)
                throw new InvalidOperationException("User was not found");

            return user;
        }

        public bool IsExists(string email)
        {
            var isLoginExists = _dbContext.Clients
                .Select(x => x.Email)
                .Union(_dbContext.Specialists.Select(x => x.Email))
                .Any(x => x == email);

            return isLoginExists;
        }

        public void Update(User item)
        {
            throw new NotImplementedException();
        }
    }
}
