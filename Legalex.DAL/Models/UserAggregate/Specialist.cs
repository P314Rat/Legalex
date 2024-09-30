namespace Legalex.DAL.Models.UserAggregate
{
    public enum SpecialistStatus
    {
        Free,
        Busy
    }

    public class Specialist : User
    {
        public SpecialistStatus Status { get; set; }
    }
}
