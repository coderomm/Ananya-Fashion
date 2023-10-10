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

public partial class ananyafashion : System.Web.UI.MasterPage
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Cnn"].ConnectionString);

    public static string logoImage = "", mobileNumber = "", emailId = "", address = "", toemail = "", currentDateTime = DateTime.Now.Year.ToString();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindListView();
        }
    }
    public void BindListView()
    {
        con.Open();
        SqlCommand cmdimg = new SqlCommand("select logoImage from WebsiteDetails_Table", con);
        logoImage = "<img alt='Ananya Fashion' src='images/logo/" + cmdimg.ExecuteScalar().ToString() + "'class='logo'>";

        SqlCommand cmdphone = new SqlCommand("select mobileNumber from WebsiteDetails_Table", con);
        mobileNumber = cmdphone.ExecuteScalar().ToString();

        SqlCommand cmdemailId = new SqlCommand("select emailId from WebsiteDetails_Table", con);
        emailId = cmdemailId.ExecuteScalar().ToString();

        SqlCommand cmdaddress = new SqlCommand("select address from WebsiteDetails_Table", con);
        address = cmdaddress.ExecuteScalar().ToString();
        con.Close();
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

    protected void btnContact_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select emailId from WebsiteDetails_Table", con);
        toemail = cmd1.ExecuteScalar().ToString();
        send_mailpop(username.Text, useremail.Text, usermobile.Text, userventure.Text);
        username.Text = "";
        useremail.Text = "";
        usermobile.Text = "";
        userventure.Text = "";
        con.Close();
    }

    public void send_mailpop(string username, string useremail, string usermobile, string userventure)
    {
        StringBuilder sb = new StringBuilder();
        sb.AppendLine("User user name :- " + username + "<br>");
        sb.AppendLine("User user email :- " + useremail + "<br>");
        sb.AppendLine("User user mobile :- " + usermobile + "<br>");
        sb.AppendLine("User user venture :- " + userventure + "<br>");
        string to = toemail;
        string from = useremail; //From address    
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
