using Legalex.DAL.Models;
using Legalex.DAL.Models.UserAggregate;
using MediatR;
using Microsoft.IdentityModel.Tokens;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Security.Cryptography;
using System.Text;


namespace Legalex.BLL.BusinessProcesses.Authorization
{
    public class LoginQueryHandler : IRequestHandler<LoginQuery>
    {
        private readonly IUnitOfWork _unitOfWork;


        public LoginQueryHandler(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public async Task Handle(LoginQuery request, CancellationToken cancellationToken)
        {
            var user = _unitOfWork.Users.GetByEmail(request.Email);
            var b = user is Specialist;
            var hashedPassword = GenerateHash(request.Password, user.PasswordSalt);

            //тут можно определить конкретный тип пользователя

            if (user.PasswordHash != hashedPassword)
                throw new InvalidOperationException("Password is not valid");
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
