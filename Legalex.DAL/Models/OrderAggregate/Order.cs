using Legalex.DAL.Models.UserAggregate;

namespace Legalex.DAL.Models.OrderAggregate
{
    public enum Service
    {
        NonSelected,
        Legal,
        CrisisManagement,
        Mediation,
        HR,
        HRSupport,
        OccupationalSafetyAndHealth,
        ProtectionOfPersonalInformation,
        Finance
    }

    public class Order
    {
        public int Id { get; set; }
        public DateTime CreatedAt { get; set; }
        public ClientType ClientType { get; set; }
        public Service Service { get; set; }
        public string Name { get; set; }
        public string Contact { get; set; }
        public string Description { get; set; }
    }
}
