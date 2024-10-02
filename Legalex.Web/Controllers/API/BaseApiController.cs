using Legalex.Web.ViewModels;
using Microsoft.AspNetCore.Mvc;


namespace Legalex.Web.Controllers.API
{
    [ApiController]
    [Route("api/[controller]")]
    abstract public class BaseApiController : ControllerBase, IBaseApiOperations
    {
        [HttpPost]
        public abstract Task<IActionResult> Post(OrderViewModel model);

        [HttpGet]
        public abstract Task<IActionResult> Get(int id);

        [HttpPatch]
        public abstract Task<IActionResult> Update(OrderViewModel model);

        [HttpDelete]
        public abstract Task<IActionResult> Delete(int id);
    }
}
