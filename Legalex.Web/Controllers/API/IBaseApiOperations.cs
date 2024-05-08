using Microsoft.AspNetCore.Mvc;
using System.Text.Json.Nodes;

namespace Legalex.Web.Controllers.API
{
    internal interface IBaseApiOperations
    {
        public Task<IActionResult> Add(JsonObject model);
        public Task<IActionResult> Get(string id);
        public Task<IActionResult> Delete(string id);
    }
}
