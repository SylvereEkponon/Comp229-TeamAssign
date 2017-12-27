using System;
using System.Threading.Tasks;
using Microsoft.Owin;
using Owin;

//Required for OWIN Startup
using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security.Cookies;

[assembly: OwinStartup(typeof(Comp229_TeamAssign.Startup))]

namespace Comp229_TeamAssign
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
                LoginPath = new PathString("/Login.aspx")
            });

        }
    }
}
