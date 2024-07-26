using Legalex.DAL.Models.OrderAggregate;


namespace Legalex.BLL.DTO
{
    public class OrderDTO
    {
        public Entity Type { get; set; }
        public Service Service { get; set; }
        public string? Email { get; set; } = null;
        public string Name { get; set; }
        public string Phone { get; set; }
        public string Description { get; set; }
    }
}
