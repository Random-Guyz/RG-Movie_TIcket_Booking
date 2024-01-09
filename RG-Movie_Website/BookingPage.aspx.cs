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

            HtmlButton payBtn = FindControl("pay") as HtmlButton;

            if (payBtn != null)
            {
                payBtn.ServerClick += PayBtn_Click;
            }

        }

        protected void PayBtn_Click(object sender, EventArgs e)
        {
            string url = ResolveUrl("~/TicketPage.aspx");
            url += "?title=" + HttpUtility.UrlEncode(MovTitle);
            url += "&genre=" + HttpUtility.UrlEncode(MovGenre);
            url += "&img=" + HttpUtility.UrlEncode(MovImgSrc);

            Response.Redirect(url);
        }
    }
}