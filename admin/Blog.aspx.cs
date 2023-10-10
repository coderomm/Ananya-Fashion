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

public partial class admin_Blog : System.Web.UI.Page
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
        using (SqlDataAdapter sda = new SqlDataAdapter("Select * From Blog_Table", con))
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
        if (blogImage.HasFile)
        {
            foreach (HttpPostedFile file in blogImage.PostedFiles)
            {
                newFileName1 = Path.GetFileName(file.FileName);
                var encoderParams = new EncoderParameters(1);
                encoderParams.Param[0] = new EncoderParameter(Encoder.Quality, 90L);
                System.Drawing.Image.FromStream(file.InputStream).Save(Server.MapPath("~/images/blog/" + newFileName1), ImageCodecInfo.GetImageEncoders().First(c => c.FormatID == ImageFormat.Jpeg.Guid), encoderParams);
                System.Drawing.Image.FromStream(file.InputStream).GetThumbnailImage(370, 330, () => false, IntPtr.Zero).Save(Server.MapPath("~/images/blog/" + newFileName1));
            }
        }

        con.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO Blog_Table (blogTitle, blogDate, blogImage, blogDetail, blogStatus, blogRTS) VALUES ('" + blogTitle.Text + "','" + blogDate.Text + "','" + newFileName1 + "', '" + blogDetail.Text + "','1',getdate())", con);
        cmd.ExecuteNonQuery();
        con.Close();
        clear();
        BindListView();
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string Idd = hdnvalue.Value;

        con.Open();

        if (blogImage.HasFiles)
        {
            string newFileName1 = "";
            foreach (HttpPostedFile file in blogImage.PostedFiles)
            {
                newFileName1 = Path.GetFileName(file.FileName);
                var encoderParams = new EncoderParameters(1);
                encoderParams.Param[0] = new EncoderParameter(Encoder.Quality, 90L);
                System.Drawing.Image.FromStream(file.InputStream).Save(Server.MapPath("~/images/blog/" + newFileName1), ImageCodecInfo.GetImageEncoders().First(c => c.FormatID == ImageFormat.Jpeg.Guid), encoderParams);
                System.Drawing.Image.FromStream(file.InputStream).GetThumbnailImage(370, 330, () => false, IntPtr.Zero).Save(Server.MapPath("~/images/blog/" + newFileName1));
                SqlCommand cmd = new SqlCommand("Update Blog_Table Set blogImage ='" + newFileName1 + "', blogTitle='" + blogTitle.Text + "', blogDate='" + blogDate.Text + "', blogDetail='" + blogDetail.Text + "', blogStatus='1' where Id='" + Idd + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        SqlCommand cmd2 = new SqlCommand("Update Blog_Table Set blogTitle='" + blogTitle.Text + "', blogDate='" + blogDate.Text + "', blogDetail='" + blogDetail.Text + "', blogStatus='1' where Id='" + Idd + "'", con);
        cmd2.ExecuteNonQuery();
        con.Close();
        BindListView();
        clear();
        btnUpdate.Visible = false;
        btnSubmit.Visible = true;
    }

    protected void ListView1_ItemCommand(object sender, ListViewCommandEventArgs e)
    {
        if (e.CommandName == "edit")
        {
            Label lblId = (Label)e.Item.FindControl("lblId");
            Label lblblogTitle = (Label)e.Item.FindControl("lblblogTitle");
            Label lblblogDate = (Label)e.Item.FindControl("lblblogDate");
            FileUpload lblblogImage = (FileUpload)e.Item.FindControl("lblblogImage");
            Label lblblogDetail = (Label)e.Item.FindControl("lblblogDetail");
            Label lblblogStatus = (Label)e.Item.FindControl("lblblogStatus");

            hdnvalue.Value = lblId.Text;
            blogTitle.Text = lblblogTitle.Text;
            blogDate.Text = lblblogDate.Text;
            blogImage = lblblogImage;
            blogDetail.Text = lblblogDetail.Text;

            btnUpdate.Visible = true;
            btnSubmit.Visible = false;
            BindListView();
        }

        if (e.CommandName == "delete")
        {
            Label lblId = (Label)e.Item.FindControl("lblId");
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete From Blog_Table Where Id='" + lblId.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            BindListView();
            clear();
        }

        if (e.CommandName == "Active")
        {
            Label lblId = (Label)e.Item.FindControl("lblId");
            con.Open();
            SqlCommand cmd = new SqlCommand("Update Blog_Table Set blogStatus='1' where Id='" + lblId.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            BindListView();

        }
        if (e.CommandName == "Deactive")
        {
            Label lblId = (Label)e.Item.FindControl("lblId");
            con.Open();
            SqlCommand cmd = new SqlCommand("Update Blog_Table Set blogStatus='0' where Id='" + lblId.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            BindListView();
        }
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        clear();
        btnUpdate.Visible = false;
        btnSubmit.Visible = true;
    }

    protected void clear()
    {
        blogTitle.Text = "";
        blogDate.Text = "";
        blogDetail.Text = "";
    }
    protected void ChangeStatus(object sender, EventArgs e) { }
    protected void lbtnStatus_Click(object sender, EventArgs e) { }
    protected void ListView1_ItemEditing(object sender, ListViewEditEventArgs e) { }

    protected void ListView1_ItemDeleting(object sender, ListViewDeleteEventArgs e) { }
}