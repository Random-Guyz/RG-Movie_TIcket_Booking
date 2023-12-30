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
        //public string User { get; set; }

        //public Navbar(string name)
        //{
        //    User = name;
        //}
        protected void LoginBtn_Click(object sender, EventArgs e)
        {
            // Assuming you have a named route named "LoginRoute"
            Response.Redirect("~/LoginPage.aspx");
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}