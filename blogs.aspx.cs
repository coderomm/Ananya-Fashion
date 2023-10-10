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

public partial class blogs : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Cnn"].ConnectionString);
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
        using (SqlDataAdapter sda = new SqlDataAdapter("Select * From Blog_Table order by rand()", con))
        {
            DataTable dt = new DataTable();
            sda.Fill(dt);
            lv_blogs.DataSource = dt;
            lv_blogs.DataBind();
        }
        con.Close();
    }
    protected string GetFirstWords(object blogDetailObj)
    {
        string blogDetail = blogDetailObj as string;

        if (string.IsNullOrEmpty(blogDetail))
        {
            return string.Empty;
        }

        string[] words = blogDetail.Split(new char[] { ' ' }, StringSplitOptions.RemoveEmptyEntries);

        if (words.Length == 0)
        {
            return string.Empty;
        }

        return string.Join(" ", words.Take(11));
    }
}