using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RG_Movie_Website
{
    public partial class Navbar : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/LoginPage.aspx");
        }

        protected void SignInBtn_Click(Object sender, EventArgs e)
        {
            Response.Redirect("~/sign_up.aspx");
        }

        protected void LogOut_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('User Logged Out')</script>");
            Session["Username"] = "";
            Session.Abandon();
            Response.Redirect("~/");
        }
    }
}