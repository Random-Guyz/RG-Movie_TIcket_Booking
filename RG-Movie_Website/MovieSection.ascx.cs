using System;
using System.Data.SqlClient;
using System.Diagnostics.Metrics;
using System.Web.UI;

namespace RG_Movie_Website
{
    public partial class MovieSection : System.Web.UI.UserControl
    {
        private string connectionString = "Data Source=DESKTOP-2QT7FQE\\SQLEXPRESS;Initial Catalog=users;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DisplayMoviesOnPage();
            }
        }

        private void DisplayMoviesOnPage()
        {
            MoviesPlaceholder.Controls.Clear();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "SELECT MovieTitle, MovieGenre,MovieImg FROM MOVIEINFO";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    SqlDataReader reader = command.ExecuteReader();

                    while (reader.Read())
                    {
                        MovieElement1 movieControl = LoadControl("~/MovieElement.ascx") as MovieElement1;
                        if (movieControl != null)
                        {
                            movieControl.MovieTitle = reader["MovieTitle"].ToString();
                            movieControl.MovieGenre = reader["MovieGenre"].ToString();

                            // Check if "MovieImg" exists in the result set
                            int movieImgOrdinal;
                            try
                            {
                                movieImgOrdinal = reader.GetOrdinal("MovieImg");
                                movieControl.MovieImg = reader.GetString(movieImgOrdinal);
                            }
                            catch (IndexOutOfRangeException)
                            {
                                // Handle the case where "MovieImg" doesn't exist in the result set
                                movieControl.MovieImg = "G:\\RG-Movie_TIcket_Booking-master\\RG-Movie_Website\\Images\\Posters\\salaar_poster.jpg";
                            }
                            catch (Exception ex)
                            {
                                // Handle other exceptions (log, display an error message, etc.)
                                Console.WriteLine($"Error reading 'MovieImg': {ex.Message}");
                                movieControl.MovieImg = "G:\\RG-Movie_TIcket_Booking-master\\RG-Movie_Website\\Images\\Posters\\salaar_poster.jpg"; // Provide a default image URL or handle as needed
                            }

                            MoviesPlaceholder.Controls.Add(movieControl);

                        }
                    }

                }

            }
        }
    }
}
