using Legalex.DAL.Models.OrderAggregate;
using Legalex.DAL.Models.UserAggregate;

namespace Legalex.BLL.DTO
{
    public class OrderDTO
    {
        public ClientType ClientType { get; set; }
        public Service Service { get; set; }
        public string Name { get; set; }
        public string Contact { get; set; }
        public string Description { get; set; }
    }
}
