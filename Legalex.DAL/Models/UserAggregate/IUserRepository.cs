namespace Legalex.DAL.Models.UserAggregate
{
    public interface IUserRepository : IRepository<User>
    {
        bool IsExists(string email);
        public User GetByEmail(string email);
    }
}
