using Legalex.Logic.DataTransferObjects;
using Legalex.Logic.Requests.DataManagement.Adding;
using MediatR;
using Microsoft.AspNetCore.Mvc;
using System.Text.Json;
using System.Text.Json.Nodes;

namespace Legalex.Web.Controllers.API
{
    public class OrderController : BaseApiController
    {
        private IMediator _mediator;


        public OrderController(IMediator mediator)
        {
            _mediator = mediator;
        }

        public override async Task<IActionResult> Add(JsonObject? model)
        {
            if (model == null || JsonSerializer.Serialize(model) == string.Empty)
                return BadRequest("Model is empty");

            var ModelDTO = model.Deserialize<OrderDTO>();

            if (ModelDTO == null)
                return BadRequest("Model is invalid");

            await _mediator.Send(new AddOrderRequest(ModelDTO));

            return Ok("Order added");
        }

        public override async Task<IActionResult> Get(string? id)
        {
            if (id == null || id == string.Empty)
                return Ok("Get all action");

            return Ok("Get action");
        }

        public override async Task<IActionResult> Delete(string? id)
        {
            return Ok("Delete action");
        }
    }
}
