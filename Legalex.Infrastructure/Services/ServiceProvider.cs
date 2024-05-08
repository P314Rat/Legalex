using Legalex.Infrastructure.Services.Implementations;
using Legalex.Infrastructure.Services.Interfaces;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;

namespace Legalex.Infrastructure.Services
{
    public static class ServiceProvider
    {
        public static void AddUnitOfWork(IServiceCollection services, string connectionString)
        {
            services.AddSingleton<IUnitOfWork>(x => new UnitOfWork(connectionString));
        }
    }
}
