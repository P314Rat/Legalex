using Legalex.Web.ViewModels;
using Microsoft.AspNetCore.Mvc;


namespace Legalex.Web.Controllers.API
{
    internal interface IBaseApiOperations
    {
        public Task<IActionResult> Post(OrderViewModel model);
        public Task<IActionResult> Get(int id);
        public Task<IActionResult> Update(OrderViewModel model);
        public Task<IActionResult> Delete(int id);
    }
}
