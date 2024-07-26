using Legalex.BLL.BusinessProcesses.AddOrder;
using Legalex.BLL.BusinessProcesses.SendNotification;
using Legalex.BLL.DTO;
using Legalex.Web.ViewModels;
using MediatR;
using Microsoft.AspNetCore.Mvc;


namespace Legalex.Web.Controllers.API
{
    public class OrderController : BaseApiController
    {
        private readonly IMediator _mediator;


        public OrderController(IMediator mediator)
        {
            _mediator = mediator;
        }

        public override async Task<IActionResult> Post(OrderViewModel model)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest("Model isn't valid");
            }

            var order = new OrderDTO
            {
                Type = model.Type,
                Service = model.Service,
                Email = model.Email,
                Name = model.Name,
                Phone = model.Phone,
                Description = model.Description
            };

            try
            {
                await _mediator.Send(new AddOrderCommand(order));
            }
            catch
            {
                return BadRequest("Failed to create order");
            }

            try
            {
                await _mediator.Send(new SendNotificationCommand(order));
            }
            catch
            {
                return BadRequest($"Failed to send notification");
            }

            return Ok();
        }

        public override async Task<IActionResult> Get(int id)
        {
            throw new NotImplementedException();
        }

        public override Task<IActionResult> Update(OrderViewModel model)
        {
            throw new NotImplementedException();
        }

        public override async Task<IActionResult> Delete(int id)
        {
            throw new NotImplementedException();
        }
    }
}
