using Legalex.Infrastructure.Services.Interfaces;
using Legalex.Logic.Services;

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
            services.AddUnitOfWork(Configuration["ConnectionStrings:DefaultConnection"]);
        }
        public void Configure(IApplicationBuilder app, IWebHostEnvironment env, IUnitOfWork uow)
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