namespace Legalex.DAL.Models.OrderAggregate
{
    public enum Entity
    {
        Legal,
        Physical
    }

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
        public Entity Type { get; set; }
        public Service Service { get; set; }
        public string? Email { get; set; } = null;
        public string Name { get; set; } = string.Empty;
        public string Phone { get; set; } = string.Empty;
        public string? Description { get; set; } = null;
    }
}
