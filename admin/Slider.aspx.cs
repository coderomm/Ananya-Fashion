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

public partial class admin_Slider : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Cnn"].ConnectionString);
    public static string slider1 = "", slider2 = "", slider3 = "";
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
        SqlCommand cmdimg1 = new SqlCommand("select sliderImg1 from Slider_Table", con);
        slider1 = "<img alt='sliderImg' src='../images/slider/" + cmdimg1.ExecuteScalar().ToString() + "'class='logo' style='width:40%'>";

        SqlCommand cmdimg2 = new SqlCommand("select sliderImg2 from Slider_Table", con);
        slider2 = "<img alt='sliderImg' src='../images/slider/" + cmdimg2.ExecuteScalar().ToString() + "'class='logo' style='width:40%'>";

        SqlCommand cmdimg3 = new SqlCommand("select sliderImg3 from Slider_Table", con);
        slider3 = "<img alt='sliderImg' src='../images/slider/" + cmdimg3.ExecuteScalar().ToString() + "'class='logo' style='width:40%'>";

        con.Close();
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        con.Open();

        if (sliderImg1.HasFile)
        {
            string newFileName1 = "";
            foreach (HttpPostedFile file in sliderImg1.PostedFiles)
            {
                newFileName1 = Path.GetFileName(file.FileName);
                var encoderParams = new EncoderParameters(1);
                encoderParams.Param[0] = new EncoderParameter(Encoder.Quality, 90L);
                System.Drawing.Image.FromStream(file.InputStream).Save(Server.MapPath("~/images/slider/" + newFileName1), ImageCodecInfo.GetImageEncoders().First(c => c.FormatID == ImageFormat.Jpeg.Guid), encoderParams);
                System.Drawing.Image.FromStream(file.InputStream).GetThumbnailImage(1349, 562, () => false, IntPtr.Zero).Save(Server.MapPath("~/images/slider/" + newFileName1));
                SqlCommand cmd = new SqlCommand("Update Slider_Table Set sliderImg1='" + newFileName1 + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        if (sliderImg2.HasFile)
        {
            string newFileName1 = "";
            foreach (HttpPostedFile file in sliderImg2.PostedFiles)
            {
                newFileName1 = Path.GetFileName(file.FileName);
                var encoderParams = new EncoderParameters(1);
                encoderParams.Param[0] = new EncoderParameter(Encoder.Quality, 90L);
                System.Drawing.Image.FromStream(file.InputStream).Save(Server.MapPath("~/images/slider/" + newFileName1), ImageCodecInfo.GetImageEncoders().First(c => c.FormatID == ImageFormat.Jpeg.Guid), encoderParams);
                System.Drawing.Image.FromStream(file.InputStream).GetThumbnailImage(1349, 562, () => false, IntPtr.Zero).Save(Server.MapPath("~/images/slider/" + newFileName1));
                SqlCommand cmd = new SqlCommand("Update Slider_Table Set sliderImg2='" + newFileName1 + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        if (sliderImg3.HasFile)
        {
            string newFileName1 = "";
            foreach (HttpPostedFile file in sliderImg3.PostedFiles)
            {
                newFileName1 = Path.GetFileName(file.FileName);
                var encoderParams = new EncoderParameters(1);
                encoderParams.Param[0] = new EncoderParameter(Encoder.Quality, 90L);
                System.Drawing.Image.FromStream(file.InputStream).Save(Server.MapPath("~/images/slider/" + newFileName1), ImageCodecInfo.GetImageEncoders().First(c => c.FormatID == ImageFormat.Jpeg.Guid), encoderParams);
                System.Drawing.Image.FromStream(file.InputStream).GetThumbnailImage(1349, 562, () => false, IntPtr.Zero).Save(Server.MapPath("~/images/slider/" + newFileName1));
                SqlCommand cmd = new SqlCommand("Update Slider_Table Set sliderImg3='" + newFileName1 + "'", con);
                cmd.ExecuteNonQuery();
            }
        }
        con.Close();
    }

    protected void ChangeStatus(object sender, EventArgs e)
    {

    }

    protected void lbtnStatus_Click(object sender, EventArgs e)
    {

    }

}