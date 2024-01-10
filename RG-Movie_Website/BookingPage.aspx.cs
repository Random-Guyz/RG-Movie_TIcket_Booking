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
using Stripe;
using System.Configuration;

namespace RG_Movie_Website
{
    public partial class BookingPage : System.Web.UI.Page
    {
        public string MovTitle
        {
            get { return Session["movTitle"] as string; }
            set { Session["movTitle"] = value; }
        }
        public string MovGenre {
            get { return Session["movGenre"] as string; }
            set { Session["movGenre"] = value; }
        }
        public string MovImgSrc
        {
            get { return Session["movImg"] as string; }
            set { Session["movImg"] = value; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}