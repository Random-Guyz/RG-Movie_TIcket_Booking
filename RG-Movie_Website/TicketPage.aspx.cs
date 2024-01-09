using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace RG_Movie_Website
{
    public partial class TicketPage : System.Web.UI.Page
    {
        public string MovTitle { get; set; }
        public string MovGenre { get; set; }
        public string MovImgSrc { get; set; }
        // public string RedirectURL { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                MovTitle = Request.QueryString["title"];
                MovGenre = Request.QueryString["genre"];
                MovImgSrc = Request.QueryString["img"];
            }
        }

    }
}