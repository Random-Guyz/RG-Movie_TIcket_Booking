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
            MovTitle = Request.QueryString["title"];
            MovGenre = Request.QueryString["genre"];
            MovImgSrc = Request.QueryString["img"];

            SendMail(MovTitle);

        }
        public void SendMail(string mov)
        {
            try
            {
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("team.randomguyz@gmail.com");
                mail.To.Add("kaif.shariff1234@gmail.com");
                mail.Subject = "Ticket Booked";
                mail.IsBodyHtml = true;
                mail.Body = $"Your ticket for `{mov}` is booked. <br /> <br /> Enjoy the show!";

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