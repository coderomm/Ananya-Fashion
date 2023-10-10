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
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_WebsiteDetails : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Cnn"].ConnectionString);
    public static string logoImagestr = "", mobileNumber = "", emailId = "", address = "", googleMap = "", about = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindListView();
        }
        if (Session["Username"] != null)
        {
            string Username = (string)Session["Username"];
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }

    public void BindListView()
    {
        con.Open();
        SqlCommand cmdimg = new SqlCommand("select logoImage from WebsiteDetails_Table", con);
        logoImagestr = "<img alt='Ananya Fashion' src='../images/logo/" + cmdimg.ExecuteScalar().ToString() + "'class='logo'>";

        using (SqlDataAdapter sda = new SqlDataAdapter("Select * From WebsiteDetails_Table", con))
        {
            DataTable dt = new DataTable();
            sda.Fill(dt);
            txtmobileNumber.Text = dt.Rows[0]["mobileNumber"].ToString();
            txtemail.Text = dt.Rows[0]["emailId"].ToString();
            txtgoogleMap.Text = dt.Rows[0]["googleMap"].ToString();
            txtaddress.Text = dt.Rows[0]["address"].ToString();
            txtabout.Text = dt.Rows[0]["about"].ToString();
        }
        con.Close();
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        con.Open();

        if (logoImage.HasFile)
        {
            string newFileName1 = "";
            foreach (HttpPostedFile file in logoImage.PostedFiles)
            {
                newFileName1 = Path.GetFileName(file.FileName);
                var encoderParams = new EncoderParameters(1);
                encoderParams.Param[0] = new EncoderParameter(Encoder.Quality, 90L);
                System.Drawing.Image.FromStream(file.InputStream).Save(Server.MapPath("~/images/logo/" + newFileName1), ImageCodecInfo.GetImageEncoders().First(c => c.FormatID == ImageFormat.Jpeg.Guid), encoderParams);
                System.Drawing.Image.FromStream(file.InputStream).GetThumbnailImage(144, 31, () => false, IntPtr.Zero).Save(Server.MapPath("~/images/logo/" + newFileName1));
                SqlCommand cmd = new SqlCommand("Update WebsiteDetails_Table Set logoImage='" + newFileName1 + "', mobileNumber='" + txtmobileNumber.Text + "', emailId='" + txtemail.Text + "', googleMap='" + txtgoogleMap.Text + "', address='" + txtaddress.Text + "', about='" + txtabout.Text + "'", con);
                cmd.ExecuteNonQuery();
            }
        }
        SqlCommand cmd2 = new SqlCommand("Update WebsiteDetails_Table Set  mobileNumber='" + txtmobileNumber.Text + "', emailId='" + txtemail.Text + "', googleMap='" + txtgoogleMap.Text + "', address='" + txtaddress.Text + "', about='" + txtabout.Text + "'", con);
        cmd2.ExecuteNonQuery();
        con.Close();
    }

    protected void ChangeStatus(object sender, EventArgs e)
    {

    }

    protected void lbtnStatus_Click(object sender, EventArgs e)
    {

    }

}