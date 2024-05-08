using Microsoft.AspNetCore.Mvc;
using System.Text.Json.Nodes;

namespace Legalex.Web.Controllers.API
{
    [ApiController]
    [Route("[controller]")]
    abstract public class BaseApiController : ControllerBase, IBaseApiOperations
    {
        [HttpPost]
        public abstract IActionResult Add(JsonObject model);

        [HttpGet]
        public abstract IActionResult Get(string id);

        [HttpDelete]
        public abstract IActionResult Delete(string id);
    }
}
