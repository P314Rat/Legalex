namespace Legalex.Infrastructure.Domain
{
    public enum OrderType
    {
        Legal,
        Finance,
        Accounting,
        HRSupport,
        HR
    }

    public enum OrderStatus
    {
        Pending,
        InProgress,
        Successful,
        Failed
    }

    public class Order
    {
        public Guid Id { get; set; } //primary key
        public OrderType Type { get; set; } //non nullable
        public OrderStatus Status { get; set; } //non nullable
        public string? ShortDescrption { get; set; } //nullable
        public string Description { get; set; } //non nullable
    }
}
