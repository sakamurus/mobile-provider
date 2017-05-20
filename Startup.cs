using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SemesterProject.Startup))]
namespace SemesterProject
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
