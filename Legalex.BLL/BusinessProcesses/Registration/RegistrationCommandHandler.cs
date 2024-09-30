using Legalex.BLL.DTO;
using Legalex.DAL.Models;
using Legalex.DAL.Models.UserAggregate;
using MediatR;
using System.Data;
using System.Security.Cryptography;
using System.Text;


namespace Legalex.BLL.BusinessProcesses.Registration
{
    public class RegistrationCommandHandler : IRequestHandler<RegistrationCommand>
    {
        private readonly IUnitOfWork _unitOfWork;


        public RegistrationCommandHandler(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public async Task Handle(RegistrationCommand command, CancellationToken cancellationToken)
        {
            var isUserExists = _unitOfWork.Users.IsExists(command.Email);

            if (isUserExists)
                throw new DuplicateNameException("This user is exist");

            var salt = CreateSalt(32);

            if (salt == null)
                throw new InvalidOperationException("Salt was not generated");

            var hashedPassword = GenerateHash(command.Password, salt);

            if (salt == null)
                throw new InvalidOperationException("Password was not hashed");

            if (command.UserType == UserType.Specialist)
            {
                var user = new Specialist
                {
                    Status = SpecialistStatus.Free,
                    Email = command.Email,
                    Phone = command.Phone,
                    PasswordHash = hashedPassword,
                    PasswordSalt = salt,
                    FirstName = command.FirstName,
                    LastName = command.LastName,
                    SurName = command.SurName
                };
                _unitOfWork.Specialists.Create(user);
            }
            else
            {
                var user = new Client
                {
                    Type = command.ClientType,
                    Email = command.Email,
                    Phone = command.Phone,
                    PasswordHash = hashedPassword,
                    PasswordSalt = salt,
                    FirstName = command.FirstName,
                    LastName = command.LastName,
                    SurName = command.SurName
                };
                _unitOfWork.Clients.Create(user);
            }

            _unitOfWork.SaveChanges();
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
