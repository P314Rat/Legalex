using Legalex.Infrastructure.Domain;

namespace Legalex.Logic.DTO
{
    public class OrderDTO
    {
        public OrderType Type { get; set; } //non nullable
        public OrderStatus Status { get; set; } //non nullable
        public string? ShortDescrption { get; set; } //nullable
        public string Description { get; set; } //non nullable
    }
}
