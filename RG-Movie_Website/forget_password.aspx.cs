using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics.Metrics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RG_Movie_Website
{
    public partial class forget_password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) { }
        protected void resetBtn_Click(object sender, EventArgs e)
        {

            string USERNAME = Request.Form["username"];
            string Pass = Request.Form["newpass"];

            if (string.IsNullOrEmpty(USERNAME) || string.IsNullOrEmpty(Pass))
            {
                Response.Write("<script>alert('ENTER YOUR USERNAME & NEW PASSWORD');</script>");
                return;
            }

            string update = "UPDATE user_table SET UPassword ='" + Pass + "' WHERE UUsername ='" + USERNAME + "'";

            string ErrorMsg = "";

            using (SqlConnection conn = new SqlConnection("Server=localhost\\SQLEXPRESS;Database=Users;Trusted_Connection=True;"))
            {
                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand(update, conn);
                    cmd.ExecuteNonQuery();
                    Response.Write("<script>alert('PASSWORD CHANGED');</script>");
                    Response.Redirect("LoginPage.aspx");

                }
                catch (SqlException ex) { ErrorMsg = ex.Message; }
            }

        }
    }
}
