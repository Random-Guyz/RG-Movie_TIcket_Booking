using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RG_Movie_Website
{
    public partial class INSERT_MOVIEINFO : System.Web.UI.Page
    {
        private string connectionString = "Data Source=DESKTOP-2QT7FQE\\SQLEXPRESS;Initial Catalog=users;Integrated Security=True";
            
        protected void Page_Load(object sender, EventArgs e)
        {}

        protected void btnAddMovie_Click(object sender, EventArgs e)
        {
            string movieTitle = txtMovieTitle.Text;
            string movieGenre = txtMovieGenre.Text;
            string movieImg = txtMovieImg.Text;

            // Insert data into the database
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "INSERT INTO MOVIEINFO (MovieTitle, MovieGenre, MovieImg) VALUES (@MovieTitle, @MovieGenre, @MovieImg)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@MovieTitle", movieTitle);
                    command.Parameters.AddWithValue("@MovieGenre", movieGenre);
                    command.Parameters.AddWithValue("@MovieImg", movieImg);

                    command.ExecuteNonQuery();
                }
            }

            // Display JavaScript alert after adding the movie
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('MOVIE ADDED');", true);
            txtMovieTitle.Text = null; txtMovieGenre.Text = null; txtMovieImg.Text = null;
        }
    }
}