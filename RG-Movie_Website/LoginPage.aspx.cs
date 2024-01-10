using MySql.Data.MySqlClient;
using Org.BouncyCastle.Crypto.Generators;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RG_Movie_Website
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Login_Click(object sender, EventArgs e)
        {
            string username = Request.Form["username"];
            string enteredPassword = Request.Form["pwd"];



            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(enteredPassword))
            {
                Response.Write("<script>alert('Please fill in both username and password.');</script>");
                return;
            }



            string QueryString = "SELECT UPassword,UUsername FROM user_table WHERE UUsername = '" + username + "'";
            string pass = "";
            string uname = "";

            string ErrorMsg = "";
            using (SqlConnection conn = new SqlConnection("Server=localhost\\SQLEXPRESS;Database=Users;Trusted_Connection=True"))
            {
                try
                {
                    conn.Open();
                    SqlCommand cmd = new SqlCommand(QueryString, conn);
                    SqlDataReader dr = cmd.ExecuteReader();
                    while (dr.Read())
                    {
                        pass = Convert.ToString(dr.GetValue(0));
                        uname = Convert.ToString(dr.GetValue(1));
                    };
                    conn.Close();
                }
                catch (SqlException ex) { ErrorMsg = ex.Message; }
            }

            string storedPassword = pass;
            string storedusername = uname;

            if (enteredPassword == storedPassword || username == storedusername)
            {


                // Authentication successful
                Session["Username"] = storedusername; // Store the username in a session variable
                Response.Write("Login successful");
                Response.Redirect("HomePage.aspx");
                return;


            }

            Response.Write("<script>alert('Username or Password is Incorrect');</script>");

        }

    }
}