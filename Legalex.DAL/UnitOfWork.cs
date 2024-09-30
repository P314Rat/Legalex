using Legalex.DAL.Models;
using Legalex.DAL.Models.CaseAggregate;
using Legalex.DAL.Models.OrderAggregate;
using Legalex.DAL.Models.UserAggregate;
using Legalex.DAL.Storage;
using Legalex.DAL.Storage.Repositories;
using Microsoft.EntityFrameworkCore;
using System.Security.Cryptography;
using System.Text;
using static Microsoft.EntityFrameworkCore.DbLoggerCategory.Database;

namespace Legalex.DAL
{
    public class UnitOfWork : IUnitOfWork
    {
        private readonly ApplicationDbContext _dbContext;
        private readonly UserRepository _userRepository;
        private readonly SpecialistRepository _specialistRepository;
        private readonly ClientRepository _clientRepository;
        private readonly OrderRepository _orderRepository;
        private readonly CaseRepository _caseRepository;
        public IUserRepository Users { get => _userRepository; }
        public ISpecialistRepository Specialists { get => _specialistRepository; }
        public IClientRepository Clients { get => _clientRepository; }
        public IOrderRepository Orders { get => _orderRepository; }
        public ICaseRepository Cases { get => _caseRepository; }


        public UnitOfWork(ApplicationDbContext dbContext)
        {
            _userRepository = new(dbContext);
            _specialistRepository = new(dbContext);
            _clientRepository = new(dbContext);
            _orderRepository = new(dbContext);
            _caseRepository = new(dbContext);
            _dbContext = dbContext;

            InitialDatabase();
        }

        public void Dispose()
        {
            GC.SuppressFinalize(this);
            _dbContext.Dispose();
        }

        public void SaveChanges()
        {
            _dbContext.SaveChanges();
        }

        private void InitialDatabase()
        {
            if (_dbContext.Database.GetPendingMigrations().Any())
                _dbContext.Database.Migrate();

            if (!_dbContext.Specialists.Any())
            {
                var salt = CreateSalt(32);
                _dbContext.Specialists.AddRange(
                    new Specialist
                    {
                        Status = SpecialistStatus.Free,
                        Email = "support@legalex.by",
                        PasswordHash = GenerateHash("1234dev!", salt),
                        PasswordSalt = salt,
                        FirstName = "Тимофей",
                        LastName = "Липницкий",
                    });
            }

            _dbContext.SaveChanges();
        }

        private string CreateSalt(int size)
        {
            var rng = new RNGCryptoServiceProvider();
            var buffer = new byte[size];
            rng.GetBytes(buffer);

            return Convert.ToBase64String(buffer);
        }
        private string GenerateHash(string input, string salt)
        {
            using (var hmac = new HMACSHA256(Encoding.UTF8.GetBytes(salt)))
            {
                var hash = hmac.ComputeHash(Encoding.UTF8.GetBytes(input));

                return Convert.ToBase64String(hash);
            }
        }
    }
}
