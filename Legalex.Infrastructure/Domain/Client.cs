namespace Legalex.Infrastructure.Domain
{
    public enum ClientType
    {
        Legal,
        Person
    }

    public class Client : User
    {
        public ClientType Type { get; set; } //non nullable
        public string? Email { get; set; } //nullable
        public string Phone { get; set; } //non nullable
        public Order Order { get; set; } //non nullable
    }
}
