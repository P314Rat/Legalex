using Legalex.Infrastructure.Services.Implementations;
using Legalex.Infrastructure.Services.Interfaces;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Hosting;

namespace Legalex.Logic.Services
{
    public static class ServiceProvider
    {
        private static HostApplicationBuilder _hostBuilder;
        private static IServiceProvider _serviceProvider;
        private static IServiceCollection _services;

        public static async void ServiceProviderInit()
        {
            _hostBuilder = new HostApplicationBuilder(); //creating Builder
            _services = _hostBuilder.Services; //setting service collection

            RegisterServices();

            using IHost host = _hostBuilder.Build();
            using IServiceScope serviceScope = host.Services.CreateScope();
            _serviceProvider = serviceScope.ServiceProvider; //setting service provider

            await host.RunAsync();
        }

        public static T GetService<T>() where T : class
        {
            var service = _serviceProvider.GetService<T>();

            if (service == null)
                throw new InvalidOperationException("This service is not exist");

            return service;
        }

        private static void RegisterServices()
        {
            _services.AddTransient<IUnitOfWork, UnitOfWork>();
        }
    }
}
