using Legalex.BLL.DTO;
using Legalex.DAL.Models.OrderAggregate;
using MediatR;


namespace Legalex.BLL.BusinessProcesses.AddOrder
{
    public class AddOrderCommand : IRequest
    {
        public Entity Type { get; set; }
        public Service Service { get; set; }
        public string Name { get; set; }
        public string Contact { get; set; }
        public string Description { get; set; }


        public AddOrderCommand(OrderDTO model)
        {
            Type = model.Type;
            Service = model.Service;
            Name = model.Name;
            Contact = model.Contact;
            Description = model.Description;
        }
    }
}
