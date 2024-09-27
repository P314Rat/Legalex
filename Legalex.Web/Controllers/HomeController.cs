using Microsoft.AspNetCore.Mvc;

namespace Legalex.Web.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
