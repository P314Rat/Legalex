using Legalex.Logic.DTO;
using Legalex.Logic.Services.Implementations;
using Microsoft.AspNetCore.Mvc;
using System.Text.Json;
using System.Text.Json.Nodes;

namespace Legalex.Web.Controllers.API
{
    public class OrderController : BaseApiController
    {
        public OrderController() { }

        public override IActionResult Add(JsonObject? model)
        {
            if (model == null || JsonSerializer.Serialize(model) == string.Empty)
                return BadRequest("Model is empty");

            var ModelDTO = model.Deserialize<OrderDTO>();

            if (ModelDTO == null)
                return BadRequest("Model is invalid");

            ModelMapper.MapToOrder(ModelDTO);

            return Ok("Order added");
        }

        public override IActionResult Get(string? id)
        {
            if (id == null || id == string.Empty)
                return Ok("Get all action");

            return Ok("Get action");
        }

        public override IActionResult Delete(string? id)
        {
            return Ok("Delete action");
        }
    }
}
