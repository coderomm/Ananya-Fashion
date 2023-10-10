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

public partial class admin_Gallery : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Cnn"].ConnectionString);

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
        using (SqlDataAdapter sda = new SqlDataAdapter("Select * From Gallery_Table", con))
        {
            DataTable dt = new DataTable();
            sda.Fill(dt);
            ListView1.DataSource = dt;
            ListView1.DataBind();
        }
        con.Close();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string newFileName1 = "";
        if (galleryImage.HasFile)
        {
            foreach (HttpPostedFile file in galleryImage.PostedFiles)
            {
                newFileName1 = Path.GetFileName(file.FileName);
                var encoderParams = new EncoderParameters(1);
                encoderParams.Param[0] = new EncoderParameter(Encoder.Quality, 90L);
                System.Drawing.Image.FromStream(file.InputStream).Save(Server.MapPath("~/images/gallery/" + newFileName1), ImageCodecInfo.GetImageEncoders().First(c => c.FormatID == ImageFormat.Jpeg.Guid), encoderParams);
                System.Drawing.Image.FromStream(file.InputStream).GetThumbnailImage(285, 285, () => false, IntPtr.Zero).Save(Server.MapPath("~/images/gallery/" + newFileName1));
            }
        }
        con.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO Gallery_Table (galleryImage, galleryImageStatus, galleryImageRTS) VALUES ('" + newFileName1 + "','1',getdate())", con);
        cmd.ExecuteNonQuery();
        con.Close();
        BindListView();
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string Idd = hdnvalue.Value;
        con.Open();

        if (galleryImage.HasFiles)
        {
            string newFileName1 = "";
            foreach (HttpPostedFile file in galleryImage.PostedFiles)
            {
                newFileName1 = Path.GetFileName(file.FileName);
                var encoderParams = new EncoderParameters(1);
                encoderParams.Param[0] = new EncoderParameter(Encoder.Quality, 90L);
                System.Drawing.Image.FromStream(file.InputStream).Save(Server.MapPath("~/images/gallery/" + newFileName1), ImageCodecInfo.GetImageEncoders().First(c => c.FormatID == ImageFormat.Jpeg.Guid), encoderParams);
                System.Drawing.Image.FromStream(file.InputStream).GetThumbnailImage(285, 285, () => false, IntPtr.Zero).Save(Server.MapPath("~/images/gallery/" + newFileName1));
                SqlCommand cmd = new SqlCommand("Update Gallery_Table Set galleryImage ='" + newFileName1 + "', galleryImageStatus='1' where Id='" + Idd + "'", con);
                cmd.ExecuteNonQuery();
            }
        }
        con.Close();
        BindListView();
        btnUpdate.Visible = false;
        btnSubmit.Visible = true;
    }

    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "edit")
        {
            Label lblId = (Label)e.Item.FindControl("lblId");
            FileUpload lblgalleryImage = (FileUpload)e.Item.FindControl("lblgalleryImage");
            Label lblgalleryImageStatus = (Label)e.Item.FindControl("lblgalleryImageStatus");

            hdnvalue.Value = lblId.Text;
            galleryImage = lblgalleryImage;

            btnUpdate.Visible = true;
            btnSubmit.Visible = false;
            BindListView();
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        btnUpdate.Visible = false;
        btnSubmit.Visible = true;
    }

    protected void ChangeStatus(object sender, EventArgs e) { }
    protected void lbtnStatus_Click(object sender, EventArgs e) { }
    protected void ListView1_ItemEditing(object sender, ListViewEditEventArgs e) { }

    protected void ListView1_ItemDeleting(object sender, ListViewDeleteEventArgs e) { }
}