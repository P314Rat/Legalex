using Legalex.DAL.Models;
using Legalex.DAL.Models.OrderAggregate;
using MediatR;


namespace Legalex.BLL.BusinessProcesses.AddOrder
{
    public class AddOrderCommandHandler : IRequestHandler<AddOrderCommand>
    {
        private readonly IUnitOfWork _unitOfWork;


        public AddOrderCommandHandler(IUnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public Task Handle(AddOrderCommand command, CancellationToken cancellationToken)
        {
            var order = new Order
            {
                CreatedAt = DateTime.Now,
                ClientType = command.ClientType,
                Service = command.Service,
                Name = command.Name,
                Contact = command.Contact,
                Description = command.Description
            };

            try
            {
                _unitOfWork.Orders.Create(order);
                _unitOfWork.SaveChanges();
            }
            catch
            {
                throw new Exception("Failed to create order");
            }

            return Task.CompletedTask;
        }
    }
}
