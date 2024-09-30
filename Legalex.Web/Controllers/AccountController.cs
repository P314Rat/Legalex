using Legalex.BLL.BusinessProcesses.Authorization;
using Legalex.BLL.BusinessProcesses.Registration;
using Legalex.BLL.DTO;
using Legalex.Web.ViewModels;
using MediatR;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Mvc;
using System.Security.Claims;


namespace Legalex.Web.Controllers
{
    public class AccountController : Controller
    {
        private readonly IMediator _mediator;


        public AccountController(IMediator mediator)
        {
            _mediator = mediator;
        }

        [HttpGet]
        public IActionResult Login()
        {
            return PartialView();
        }

        [HttpGet]
        public async Task<IActionResult> LogoutAsync()
        {
            await HttpContext.SignOutAsync(CookieAuthenticationDefaults.AuthenticationScheme);

            return RedirectToAction("Index", "Home");
        }

        [HttpPost]
        public async Task<IActionResult> RegisterAsync(RegistrationViewModel model)
        {
            if (!ModelState.IsValid)
                return View(model);

            var userDTO = new UserDTO
            {
                UserType = model.UserType,
                ClientType = model.ClientType,
                Email = model.Email,
                Phone = model.Phone,
                Password = model.Password,
                FirstName = model.FirstName,
                LastName = model.LastName,
                SurName = model.SurName
            };

            try
            {
                await _mediator.Send(new RegistrationCommand(userDTO));
            }
            catch (Exception ex)
            {
                ModelState.AddModelError("Email", ex.Message);

                return BadRequest(model);
            }

            return Redirect("Login");
        }

        [HttpPost]
        public async Task<IActionResult> LoginAsync(LoginViewModel model)
        {
            if (!ModelState.IsValid)
                return BadRequest("Model isn't valid");

            var modelDTO = new UserDTO
            {
                Email = model.Email,
                Password = model.Password
            };

            try
            {
                await _mediator.Send(new LoginQuery(modelDTO));

                var claims = new List<Claim>
                {
                    new Claim(ClaimTypes.Name, modelDTO.Email),
                };
                var claimsIdentity = new ClaimsIdentity(claims, CookieAuthenticationDefaults.AuthenticationScheme);
                await HttpContext.SignInAsync(CookieAuthenticationDefaults.AuthenticationScheme, new ClaimsPrincipal(claimsIdentity));

                return RedirectToAction("Index", "Home");
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}
