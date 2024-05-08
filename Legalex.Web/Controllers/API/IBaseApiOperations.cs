using Microsoft.AspNetCore.Mvc;
using System.Text.Json.Nodes;

namespace Legalex.Web.Controllers.API
{
    internal interface IBaseApiOperations
    {
        public IActionResult Add(JsonObject model);
        public IActionResult Get(string id);
        public IActionResult Delete(string id);
    }
}
