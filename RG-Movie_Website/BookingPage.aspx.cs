using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace RG_Movie_Website
{
    public partial class BookingPage : System.Web.UI.Page
    {
        public string MovTitle { get; set; }
        public string MovGenre { get; set; }
        public string MovImgSrc { get; set; }

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