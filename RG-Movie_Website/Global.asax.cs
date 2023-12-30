using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace RG_Movie_Website
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            RegisterRoutes(System.Web.Routing.RouteTable.Routes);
        }

        void RegisterRoutes(System.Web.Routing.RouteCollection routes)
        {
            //routes.MapPageRoute("Default", "/" ,"/HomePage.aspx");
            routes.MapPageRoute("loginRoute", "login" ,"~/login.aspx");
        }
    }
}