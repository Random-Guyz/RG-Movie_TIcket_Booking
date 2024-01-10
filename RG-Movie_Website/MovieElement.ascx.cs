using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace RG_Movie_Website
{
    public partial class MovieElement1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        { }

        public string MovieImg
        {
            get { return MovCardImg.Src; }
            set
            {
                MovCardImg.Src = value;
                Session["movImg"] = MovieImg;
            }
        }

        public string MovieTitle
        {
            get { return MovieName.InnerText; }
            set
            {
                MovieName.InnerText = value;
                Session["movTitle"] = MovieTitle;
            }
        }

        public string MovieGenre
        {
            get { return MovieGenreParagraph.InnerText; }
            set
            {
                MovieGenreParagraph.InnerText = value;
                Session["movGenre"] = MovieGenre;

            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {}
    }
}