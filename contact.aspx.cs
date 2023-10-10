using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class contact : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Cnn"].ConnectionString);
    public static string toemail = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnContact_Click(object sender, EventArgs e)
    {
        con.Open();

        SqlCommand cmd1 = new SqlCommand("select emailId from WebsiteDetails_Table", con);
        toemail = cmd1.ExecuteScalar().ToString();
        send_mail(username.Text, useremail.Text, usermsg.Text);
        username.Text = "";
        useremail.Text = "";
        usermsg.Text = "";
        con.Close();
    }
    public void send_mail(string username, string email, string usermessage)
    {
        StringBuilder sb = new StringBuilder();
        sb.AppendLine("User name :- " + username + "<br>");
        sb.AppendLine("User email :- " + email + "<br>");
        sb.AppendLine("User message :- " + usermessage + "<br>");
        string to = toemail;
        string from = useremail.Text; //From address    
        MailMessage message = new MailMessage(from, to);

        message.Subject = "Inquirey for Ananya Fashion : ";
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
    }
}