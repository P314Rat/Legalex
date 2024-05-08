using Legalex.Web.Services;

namespace Legalex.Web
{
    public class Startup
    {
        private IConfiguration Configuration { get; }

        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddControllers();
            services.AddMediatR(config => config.RegisterServicesFromAssemblyContaining(typeof(Logic.Services.ServiceProvider)));
            services.AddInfrastructureServices();
        }
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseHsts();
                app.UseExceptionHandler("/Error");
            }

            app.UseRouting();
            app.UseEndpoints(endpoints =>
            {
                endpoints.MapControllerRoute(
                    name: "default",
                    pattern: "{controller}/{action}/{id?}");
            });
            app.UseHttpsRedirection();
            app.UseCors(corsPolicyBuilder => corsPolicyBuilder.AllowAnyOrigin()
                                                              .AllowAnyMethod()
                                                              .AllowAnyHeader());
        }
    }
}