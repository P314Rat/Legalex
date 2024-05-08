using Microsoft.AspNetCore.Mvc;
using System.Text.Json.Nodes;

namespace Legalex.Web.Controllers.API
{
    [ApiController]
    [Route("[controller]")]
    abstract public class BaseApiController : ControllerBase, IBaseApiOperations
    {
        [HttpPost]
        public abstract Task<IActionResult> Add(JsonObject model);

        [HttpGet]
        public abstract Task<IActionResult> Get(string id);

        [HttpDelete]
        public abstract Task<IActionResult> Delete(string id);
    }
}
