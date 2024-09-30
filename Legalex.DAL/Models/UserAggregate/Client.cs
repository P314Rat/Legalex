namespace Legalex.DAL.Models.UserAggregate
{
    public enum ClientType
    {
        Legal,
        Person
    }

    public class Client : User
    {
        public ClientType Type { get; set; }
    }
}
