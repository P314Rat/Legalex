namespace Legalex.DAL.Models.CaseAggregate
{
    public interface ICaseRepository : IRepository<Case>
    {
        Case? GetById(int id);
        void DeleteById(int id);

    }
}
