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

public partial class admin_Product : System.Web.UI.Page
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
        using (SqlDataAdapter sda = new SqlDataAdapter("Select * From Product_Table", con))
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
        if (productImage1.HasFile)
        {
            foreach (HttpPostedFile file in productImage1.PostedFiles)
            {
                newFileName1 = Path.GetFileName(file.FileName);
                var encoderParams = new EncoderParameters(1);
                encoderParams.Param[0] = new EncoderParameter(Encoder.Quality, 90L);
                System.Drawing.Image.FromStream(file.InputStream).Save(Server.MapPath("~/images/products/" + newFileName1), ImageCodecInfo.GetImageEncoders().First(c => c.FormatID == ImageFormat.Jpeg.Guid), encoderParams);
                System.Drawing.Image.FromStream(file.InputStream).GetThumbnailImage(270, 345, () => false, IntPtr.Zero).Save(Server.MapPath("~/images/products/" + newFileName1));
            }
        }
        string newFileName2 = "";
        if (productImage2.HasFile)
        {
            foreach (HttpPostedFile file in productImage2.PostedFiles)
            {
                newFileName2 = Path.GetFileName(file.FileName);
                var encoderParams = new EncoderParameters(1);
                encoderParams.Param[0] = new EncoderParameter(Encoder.Quality, 90L);
                System.Drawing.Image.FromStream(file.InputStream).Save(Server.MapPath("~/images/products/" + newFileName2), ImageCodecInfo.GetImageEncoders().First(c => c.FormatID == ImageFormat.Jpeg.Guid), encoderParams);
                System.Drawing.Image.FromStream(file.InputStream).GetThumbnailImage(270, 345, () => false, IntPtr.Zero).Save(Server.MapPath("~/images/products/" + newFileName2));
            }
        }

        string newFileName3 = "";
        if (productImage3.HasFile)
        {
            foreach (HttpPostedFile file in productImage3.PostedFiles)
            {
                newFileName3 = Path.GetFileName(file.FileName);
                var encoderParams = new EncoderParameters(1);
                encoderParams.Param[0] = new EncoderParameter(Encoder.Quality, 90L);
                System.Drawing.Image.FromStream(file.InputStream).Save(Server.MapPath("~/images/products/" + newFileName3), ImageCodecInfo.GetImageEncoders().First(c => c.FormatID == ImageFormat.Jpeg.Guid), encoderParams);
                System.Drawing.Image.FromStream(file.InputStream).GetThumbnailImage(270, 345, () => false, IntPtr.Zero).Save(Server.MapPath("~/images/products/" + newFileName3));
            }
        }

        string newFileName4 = "";
        if (productImage4.HasFile)
        {
            foreach (HttpPostedFile file in productImage4.PostedFiles)
            {
                newFileName4 = Path.GetFileName(file.FileName);
                var encoderParams = new EncoderParameters(1);
                encoderParams.Param[0] = new EncoderParameter(Encoder.Quality, 90L);
                System.Drawing.Image.FromStream(file.InputStream).Save(Server.MapPath("~/images/products/" + newFileName4), ImageCodecInfo.GetImageEncoders().First(c => c.FormatID == ImageFormat.Jpeg.Guid), encoderParams);
                System.Drawing.Image.FromStream(file.InputStream).GetThumbnailImage(270, 345, () => false, IntPtr.Zero).Save(Server.MapPath("~/images/products/" + newFileName4));
            }
        }

        string newFileName5 = "";
        if (productImage5.HasFile)
        {
            foreach (HttpPostedFile file in productImage5.PostedFiles)
            {
                newFileName5 = Path.GetFileName(file.FileName);
                var encoderParams = new EncoderParameters(1);
                encoderParams.Param[0] = new EncoderParameter(Encoder.Quality, 90L);
                System.Drawing.Image.FromStream(file.InputStream).Save(Server.MapPath("~/images/products/" + newFileName5), ImageCodecInfo.GetImageEncoders().First(c => c.FormatID == ImageFormat.Jpeg.Guid), encoderParams);
                System.Drawing.Image.FromStream(file.InputStream).GetThumbnailImage(270, 345, () => false, IntPtr.Zero).Save(Server.MapPath("~/images/products/" + newFileName5));
            }
        }

        con.Open();
        SqlCommand cmd = new SqlCommand("INSERT INTO Product_Table (productName, productPrice, productImage1, productImage2, productImage3, productImage4, productImage5, productDetails, productStatus, productRTS) VALUES ('" + txtproductName.Text + "','" + txtproductPrice.Text + "','" + newFileName1 + "','" + newFileName2 + "','" + newFileName3 + "','" + newFileName4 + "','" + newFileName5 + "','" + txtproductDetails.Text + "','1',getdate())", con);
        cmd.ExecuteNonQuery();
        con.Close();
        clear();
        BindListView();

    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        string Idd = hdnvalue.Value;

        con.Open();

        if (productImage1.HasFiles)
        {
            string newFileName1 = "";
            foreach (HttpPostedFile file in productImage1.PostedFiles)
            {
                newFileName1 = Path.GetFileName(file.FileName);
                var encoderParams = new EncoderParameters(1);
                encoderParams.Param[0] = new EncoderParameter(Encoder.Quality, 90L);
                System.Drawing.Image.FromStream(file.InputStream).Save(Server.MapPath("~/images/products/" + newFileName1), ImageCodecInfo.GetImageEncoders().First(c => c.FormatID == ImageFormat.Jpeg.Guid), encoderParams);
                System.Drawing.Image.FromStream(file.InputStream).GetThumbnailImage(270, 345, () => false, IntPtr.Zero).Save(Server.MapPath("~/images/products/" + newFileName1));
                SqlCommand cmd = new SqlCommand("Update Product_Table Set productImage1 ='" + newFileName1 + "', productName='" + txtproductName.Text + "', productPrice='" + txtproductPrice.Text + "', productDetails='" + txtproductDetails.Text + "', productStatus='1' where Id='" + Idd + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        if (productImage2.HasFiles)
        {
            string newFileName2 = "";
            foreach (HttpPostedFile file in productImage2.PostedFiles)
            {
                newFileName2 = Path.GetFileName(file.FileName);
                var encoderParams = new EncoderParameters(1);
                encoderParams.Param[0] = new EncoderParameter(Encoder.Quality, 90L);
                System.Drawing.Image.FromStream(file.InputStream).Save(Server.MapPath("~/images/products/" + newFileName2), ImageCodecInfo.GetImageEncoders().First(c => c.FormatID == ImageFormat.Jpeg.Guid), encoderParams);
                System.Drawing.Image.FromStream(file.InputStream).GetThumbnailImage(270, 345, () => false, IntPtr.Zero).Save(Server.MapPath("~/images/products/" + newFileName2));
                SqlCommand cmd = new SqlCommand("Update Product_Table Set productImage2 ='" + newFileName2 + "', productName='" + txtproductName.Text + "', productPrice='" + txtproductPrice.Text + "', productDetails='" + txtproductDetails.Text + "', productStatus='1' where Id='" + Idd + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        if (productImage3.HasFiles)
        {
            string newFileName3 = "";
            foreach (HttpPostedFile file in productImage3.PostedFiles)
            {
                newFileName3 = Path.GetFileName(file.FileName);
                var encoderParams = new EncoderParameters(1);
                encoderParams.Param[0] = new EncoderParameter(Encoder.Quality, 90L);
                System.Drawing.Image.FromStream(file.InputStream).Save(Server.MapPath("~/images/products/" + newFileName3), ImageCodecInfo.GetImageEncoders().First(c => c.FormatID == ImageFormat.Jpeg.Guid), encoderParams);
                System.Drawing.Image.FromStream(file.InputStream).GetThumbnailImage(270, 345, () => false, IntPtr.Zero).Save(Server.MapPath("~/images/products/" + newFileName3));
                SqlCommand cmd = new SqlCommand("Update Product_Table Set productImage3 ='" + newFileName3 + "',  productName='" + txtproductName.Text + "', productPrice='" + txtproductPrice.Text + "', productDetails='" + txtproductDetails.Text + "', productStatus='1' where Id='" + Idd + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        if (productImage4.HasFiles)
        {
            string newFileName4 = "";
            foreach (HttpPostedFile file in productImage4.PostedFiles)
            {
                newFileName4 = Path.GetFileName(file.FileName);
                var encoderParams = new EncoderParameters(1);
                encoderParams.Param[0] = new EncoderParameter(Encoder.Quality, 90L);
                System.Drawing.Image.FromStream(file.InputStream).Save(Server.MapPath("~/images/products/" + newFileName4), ImageCodecInfo.GetImageEncoders().First(c => c.FormatID == ImageFormat.Jpeg.Guid), encoderParams);
                System.Drawing.Image.FromStream(file.InputStream).GetThumbnailImage(270, 345, () => false, IntPtr.Zero).Save(Server.MapPath("~/images/products/" + newFileName4));
                SqlCommand cmd = new SqlCommand("Update Product_Table Set productImage4 ='" + newFileName4 + "',  productName='" + txtproductName.Text + "', productPrice='" + txtproductPrice.Text + "', productDetails='" + txtproductDetails.Text + "', productStatus='1' where Id='" + Idd + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        if (productImage5.HasFiles)
        {
            string newFileName5 = "";
            foreach (HttpPostedFile file in productImage5.PostedFiles)
            {
                newFileName5 = Path.GetFileName(file.FileName);
                var encoderParams = new EncoderParameters(1);
                encoderParams.Param[0] = new EncoderParameter(Encoder.Quality, 90L);
                System.Drawing.Image.FromStream(file.InputStream).Save(Server.MapPath("~/images/products/" + newFileName5), ImageCodecInfo.GetImageEncoders().First(c => c.FormatID == ImageFormat.Jpeg.Guid), encoderParams);
                System.Drawing.Image.FromStream(file.InputStream).GetThumbnailImage(270, 345, () => false, IntPtr.Zero).Save(Server.MapPath("~/images/products/" + newFileName5));
                SqlCommand cmd = new SqlCommand("Update Product_Table Set productImage5 ='" + newFileName5 + "',  productName='" + txtproductName.Text + "', productPrice='" + txtproductPrice.Text + "', productDetails='" + txtproductDetails.Text + "', productStatus='1' where Id='" + Idd + "'", con);
                cmd.ExecuteNonQuery();
            }
        }

        SqlCommand cmd2 = new SqlCommand("Update Product_Table Set  productName='" + txtproductName.Text + "', productPrice='" + txtproductPrice.Text + "', productDetails='" + txtproductDetails.Text + "', productStatus='1' where Id='" + Idd + "'", con);
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
            Label lblproductName = (Label)e.Item.FindControl("lblproductName");
            Label lblproductPrice = (Label)e.Item.FindControl("lblproductPrice");
            FileUpload lblproductImage1 = (FileUpload)e.Item.FindControl("lblproductImage1");
            FileUpload lblproductImage2 = (FileUpload)e.Item.FindControl("lblproductImage2");
            FileUpload lblproductImage3 = (FileUpload)e.Item.FindControl("lblproductImage3");
            FileUpload lblproductImage4 = (FileUpload)e.Item.FindControl("lblproductImage4");
            FileUpload lblproductImage5 = (FileUpload)e.Item.FindControl("lblproductImage5");
            Label lblproductDetails = (Label)e.Item.FindControl("lblproductDetails");
            Label lblproductStatus = (Label)e.Item.FindControl("lblproductStatus");

            hdnvalue.Value = lblId.Text;
            txtproductName.Text = lblproductName.Text;
            txtproductPrice.Text = lblproductPrice.Text;
            productImage1 = lblproductImage1;
            productImage2 = lblproductImage2;
            productImage3 = lblproductImage3;
            productImage4 = lblproductImage4;
            productImage5 = lblproductImage5;
            txtproductDetails.Text = lblproductDetails.Text;

            con.Close();

            btnUpdate.Visible = true;
            btnSubmit.Visible = false;
            BindListView();
        }

        if (e.CommandName == "delete")
        {
            Label lblId = (Label)e.Item.FindControl("lblId");
            con.Open();
            SqlCommand cmd = new SqlCommand("Delete From Product_Table Where Id='" + lblId.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            BindListView();
            clear();
        }

        if (e.CommandName == "Active")
        {
            Label lblId = (Label)e.Item.FindControl("lblId");
            con.Open();
            SqlCommand cmd = new SqlCommand("Update Product_Table Set productStatus='1' where Id='" + lblId.Text + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            BindListView();

        }
        if (e.CommandName == "Deactive")
        {
            Label lblId = (Label)e.Item.FindControl("lblId");
            con.Open();
            SqlCommand cmd = new SqlCommand("Update Product_Table Set productStatus='0' where Id='" + lblId.Text + "'", con);
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
        txtproductName.Text = "";
        txtproductPrice.Text = "";
        txtproductDetails.Text = "";
    }
    protected void ChangeStatus(object sender, EventArgs e) { }
    protected void lbtnStatus_Click(object sender, EventArgs e) { }
    protected void ListView1_ItemEditing(object sender, ListViewEditEventArgs e) { }
    protected void ListView1_ItemDeleting(object sender, ListViewDeleteEventArgs e) { }
}