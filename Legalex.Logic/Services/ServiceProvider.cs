using Legalex.Infrastructure;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using System;

namespace Legalex.Logic.Services
{
    public static class ServiceProvider
    {
        public static void AddUnitOfWork(this IServiceCollection services, string connectionString)
        {
            //var dbContextOptions = new DbContextOptionsBuilder<ApplicationDbContext>()
            //    .UseSqlServer(connectionString).Options;

            Infrastructure.Services.ServiceProvider.AddUnitOfWork(services, connectionString);
        }
    }
}
