using Legalex.BLL.DTO;
using Legalex.DAL.Models.OrderAggregate;
using Legalex.DAL.Models.UserAggregate;
using MediatR;


namespace Legalex.BLL.BusinessProcesses.AddOrder
{
    public class AddOrderCommand : IRequest
    {
        public ClientType ClientType { get; set; }
        public Service Service { get; set; }
        public string Name { get; set; }
        public string Contact { get; set; }
        public string Description { get; set; }


        public AddOrderCommand(OrderDTO model)
        {
            ClientType = model.ClientType;
            Service = model.Service;
            Name = model.Name;
            Contact = model.Contact;
            Description = model.Description;
        }
    }
}
