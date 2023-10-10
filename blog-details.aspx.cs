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

public partial class blog_details : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Cnn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Count == 0)
        {
            Response.Redirect("index.aspx");
        }
        else
        {
            if (!IsPostBack)
            {
                BindListView();
            }
        }
    }
    public void BindListView()
    {
        con.Open();
        using (SqlDataAdapter sda = new SqlDataAdapter("Select * From Blog_Table where ID='" + Request.QueryString["blog-search"] + "'", con))
        {
            DataTable dt = new DataTable();
            sda.Fill(dt);
            lv_blogs_images.DataSource = dt;
            lv_blogs_images.DataBind();
            lv_blog.DataSource = dt;
            lv_blog.DataBind();
        }

        using (SqlDataAdapter sda = new SqlDataAdapter("Select top 10 * From Blog_Table", con))
        {
            DataTable dt = new DataTable();
            sda.Fill(dt);
            lv_recentblogs.DataSource = dt;
            lv_recentblogs.DataBind();
        }
        con.Close();
    }
}