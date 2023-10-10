using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class newsletter : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Cnn"].ConnectionString);
    public static string toemail = "";

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnNewsletter_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("select emailId from WebsiteDetails_Table", con);
        toemail = cmd.ExecuteScalar().ToString();
        con.Close();

        send_mail(txtNewsletter.Text);
    }
    public void send_mail(string email)
    {
        con.Open();
        StringBuilder sb = new StringBuilder();
        sb.AppendLine("Email :- " + email + "<br>");
        string to = toemail;
        string from = txtNewsletter.Text; //From address    
        MailMessage message = new MailMessage(from, to);

        message.Subject = "Registration for newsletter : ";
        message.Body = sb.ToString();
        message.BodyEncoding = Encoding.UTF8;
        message.IsBodyHtml = true;
        SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
        System.Net.NetworkCredential basicCredential1 = new
        System.Net.NetworkCredential("omopyt2020@gmail.com", "jjkhsulyfsbgdvks");
        client.EnableSsl = true;
        client.UseDefaultCredentials = false;
        client.Credentials = basicCredential1;
        client.Send(message);
        con.Close();
    }
}
