using Legalex.DAL.Models.UserAggregate;


namespace Legalex.Web.ViewModels
{
    public class SpecialistViewModel
    {
        public string Email { get; set; } = string.Empty;
        public string FirstName { get; set; } = string.Empty;
        public string LastName { get; set; } = string.Empty;
        public SpecialistStatus Status { get; set; }
    }
}
