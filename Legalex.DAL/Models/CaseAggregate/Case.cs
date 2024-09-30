using Legalex.DAL.Models.UserAggregate;

namespace Legalex.DAL.Models.CaseAggregate
{
    public class Case
    {
        public int Id { get; set; }
        public string Description { get; set; } = string.Empty;
        public Client Customer { get; set; }
        public Specialist Assignee { get; set; }
    }
}
