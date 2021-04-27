using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace OnlineLaptopShopFix
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connstr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\OnlineLaptopShop.mdf;Integrated Security=True";
            string cmd = "Select *From Laptop Where Id=" + Request.QueryString["Id"];
            SqlDataAdapter da = new SqlDataAdapter(cmd, connstr);
            DataSet ds = new DataSet();
            da.Fill(ds,"Laptop");
            DataList1.DataSource = ds.Tables["Laptop"];
            DataList1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label lbl= DataList1.Items[0].FindControl("Label1") as Label;
            string lbltext = lbl.Text;
            int id = Int32.Parse(lbltext);
            string username = Session["userName"].ToString();
            SqlConnection connect = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\OnlineLaptopShop.mdf;Integrated Security=True");
            connect.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Update Laptop Set nameOwner=" + "'" + username + "'" + " " + "Where Id=" + id;
            cmd.Connection = connect;
            cmd.ExecuteNonQuery();
            Label2.Text = "Thêm thành công vào giỏ";   
        }
    }
}