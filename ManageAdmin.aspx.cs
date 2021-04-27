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
    public partial class ManageAdmin : System.Web.UI.Page
    {
        SqlConnection connstr = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\OnlineLaptopShop.mdf;Integrated Security=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                connstr.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select *from  Users";
                cmd.Connection = connstr;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                SqlCommand cmd1 = new SqlCommand();
                cmd1.CommandText = "select *from  Laptop";
                cmd1.Connection = connstr;
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataTable dt1 = new DataTable();
                da1.Fill(dt1);
            }
        }
        protected void update(object sender, EventArgs e)
        {
            int rowwind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            string id = GridView1.Rows[rowwind].Cells[0].Text;
            Response.Redirect("Capnhattaikhoan.aspx?id="+id);
        }
        protected void update1(object sender, EventArgs e)
        {
            int rowwind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            string id = GridView2.Rows[rowwind].Cells[0].Text;
            Response.Redirect("CapnhatLaptop.aspx?id=" + id);
        }
        protected void delete(object sender, EventArgs e)
        {
            int rowwind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            string id = GridView1.Rows[rowwind].Cells[0].Text;
            connstr.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Delete From Users Where Id=" + id;
            cmd.Connection = connstr;
            cmd.ExecuteNonQuery();
            Response.Redirect("ManageAdmin.aspx");
        }
        protected void delete1(object sender, EventArgs e)
        {
            int rowwind = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
            string id = GridView2.Rows[rowwind].Cells[0].Text;
            connstr.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Delete From Laptop Where Id=" + id;
            cmd.Connection = connstr;
            cmd.ExecuteNonQuery();
            Response.Redirect("ManageAdmin.aspx");
        }



    }
}