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

public partial class product_details : System.Web.UI.Page
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
        using (SqlDataAdapter sda = new SqlDataAdapter("Select * From Product_Table where ID='" + Request.QueryString["product-search"] + "'", con))
        {
            DataTable dt = new DataTable();
            sda.Fill(dt);
            lv_pdetails.DataSource = dt;
            lv_pdetails.DataBind();
            lv_pdetails2.DataSource = dt;
            lv_pdetails2.DataBind();
            lv_pdetails3.DataSource = dt;
            lv_pdetails3.DataBind();
        }
    }
}