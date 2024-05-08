namespace Legalex.Infrastructure.Domain
{
    public enum EmployeeStatus
    {
        Free,
        Busy
    }

    public enum EmployeeSpecialization
    {
        LegalMan,
        FinanceMan,
        HR
    }

    public class Employee : User
    {
        public EmployeeSpecialization Specialization { get; set; } //non nullable
        public EmployeeStatus Status { get; set; } //non nullable
        public Order? Order { get; set; } //nullable
        public int CompletedOrders { get; set; } = 0; //non nullable
        public int CompletedOrdersInThisMonth { get; set; } = 0; //non nullable
    }
}
