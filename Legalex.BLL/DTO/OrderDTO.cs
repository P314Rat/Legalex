using Legalex.DAL.Models.OrderAggregate;


namespace Legalex.BLL.DTO
{
    public class OrderDTO
    {
        public Entity Type { get; set; }
        public Service Service { get; set; }
        public string Name { get; set; }
        public string Contact { get; set; }
        public string Description { get; set; }
    }
}
