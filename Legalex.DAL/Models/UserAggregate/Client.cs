namespace Legalex.DAL.Models.UserAggregate
{
    public enum ClientType
    {
        Person,
        Legal
    }

    public class Client : User
    {
        public ClientType Type { get; set; }
    }
}
