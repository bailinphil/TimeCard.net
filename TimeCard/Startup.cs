using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(TimeCard.Startup))]
namespace TimeCard
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
