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
            //if (!IsPostBack)
            //{
            //    MovTitle = Request.QueryString["title"];
            //    MovGenre = Request.QueryString["genre"];
            //    MovImgSrc = Request.QueryString["img"];

            //    Session["title"] = MovTitle;
            //    Session["MovImgSrc"] = MovImgSrc;
            //}

        }
        private void SendMessage(string email, string title)
        {
            try
            {
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("team.randomguyz@gmail.com");
                mail.To.Add(email);
                mail.Subject = "Your Query Have Been Submited";
                mail.IsBodyHtml = true;
                mail.Body = $"Ticket for {title} is booked successfully!";

                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new NetworkCredential("team.randomguyz@gmail.com", "fnzy whhp bdpc khfa");
                smtp.EnableSsl = true;

                smtp.Send(mail);

                Response.Write("<script>alert('Email Sent Successful')</script>");
            }
            catch (Exception ex)
            {
                Response.Write($"<script>alert('Error: {ex.Message}')</script>");
            }
        }
    }
}