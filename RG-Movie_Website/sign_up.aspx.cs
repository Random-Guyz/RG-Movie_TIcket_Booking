using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace RG_Movie_Website
{
    public partial class sign_up : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SIGNBtnasp_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Server=localhost\\SQLEXPRESS;Database=Users;Trusted_Connection=True;");

            try
            {
                String uname = Request.Form["name"].ToString();
                String uemail = Request.Form["email"].ToString();
                String umobile = Request.Form["mob"].ToString();
                String uusername = Request.Form["username"].ToString();
                String upassword = Request.Form["password"].ToString();

                string insert = "insert into user_table VALUES('" + uname + "','" + uemail + "','" + umobile + "','" + uusername + "','" + upassword + "')";


                SqlCommand cmd = new SqlCommand(insert, conn);
                conn.Open();

                cmd.ExecuteNonQuery();
                Response.Write("DATA SAVED");
                conn.Close();
            }
            catch (Exception ex)
            {
                Response.Write("" + ex.Message);
            }

            Response.Redirect("LoginPage.aspx");
        }
    }
}
