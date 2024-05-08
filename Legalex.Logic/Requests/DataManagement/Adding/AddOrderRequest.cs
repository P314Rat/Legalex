using Legalex.Infrastructure.Domain;
using Legalex.Infrastructure.Services.Interfaces;
using Legalex.Logic.DataTransferObjects;
using Legalex.Logic.Services;
using MediatR;

namespace Legalex.Logic.Requests.DataManagement.Adding
{
    public class AddOrderRequest : IRequest
    {
        public OrderType OrderType { get; set; }
        public OrderStatus Status { get; set; }
        public string? ShortDescrption { get; set; }
        public string Description { get; set; }
        public IUnitOfWork Store { get; set; }

        public AddOrderRequest(OrderDTO orderDTO)
        {
            OrderType = orderDTO.Type;
            Status = orderDTO.Status;
            ShortDescrption = orderDTO.ShortDescrption;
            Description = orderDTO.Description;
            Store = ServiceProvider.GetService<IUnitOfWork>();
        }
    }

    public class AddOrderHandler : IRequestHandler<AddOrderRequest>
    {
        public Task Handle(AddOrderRequest request, CancellationToken cancellationToken)
        {
            var order = new Order
            {
                Id = Guid.NewGuid(),
                Type = request.OrderType,
                Status = request.Status,
                ShortDescrption = request.ShortDescrption,
                Description = request.Description
            };
            request.Store.Orders.Add(order);
            request.Store.Save();

            return Task.CompletedTask;
        }
    }
}
