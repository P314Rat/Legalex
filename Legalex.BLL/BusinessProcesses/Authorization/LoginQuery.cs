using Legalex.BLL.DTO;
using MediatR;


namespace Legalex.BLL.BusinessProcesses.Authorization
{
    public class LoginQuery : IRequest
    {
        public string Email { get; set; }
        public string Password { get; set; }


        public LoginQuery(UserDTO model)
        {
            Email = model.Email;
            Password = model.Password;
        }
    }
}
