using Legalex.Logic.Services;

namespace Legalex.Web.Services
{
    public static class ServiceProvider
    {
        public static void AddInfrastructureServices(this IServiceCollection services)
        {
            Logic.Services.ServiceProvider.ServiceProviderInit();
        }
    }
}
