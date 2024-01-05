using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace RG_Movie_Website
{
    public partial class MovieElement1 : System.Web.UI.UserControl
    {
        public string MovieTitle { get; set; }
        public string MovieGenre { get; set; }
        public string MovieImg { get; set; }
        public string RedirectURL { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlAnchor hrefBtn = FindControl("btn") as HtmlAnchor;

            string url = ResolveUrl("~/BookingPage.aspx");
            url += "?title=" + HttpUtility.UrlEncode(MovieTitle);
            url += "&genre=" + HttpUtility.UrlEncode(MovieGenre);
            url += "&img=" + HttpUtility.UrlEncode(MovieImg);
            hrefBtn.HRef = url;
        }
    }
}
