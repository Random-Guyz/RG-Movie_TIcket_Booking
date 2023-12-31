using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RG_Movie_Website
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string email = Request.Form["userEmail"];
            string msg = Request.Form["userMsg"];
            SendMessage(email, msg);
        }
        private void SendMessage(string email, string msg)
        {
            try
            {
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("team.randomguyz@gmail.com");
                mail.To.Add(email);
                mail.Subject = "Kaif Sent This!";
                mail.Body = msg;

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