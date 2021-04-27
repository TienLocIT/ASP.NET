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
   
    public partial class CapnhatLaptop : System.Web.UI.Page
    {
        SqlConnection connstr = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\OnlineLaptopShop.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            string idLaptop = Request.QueryString["id"];
            if (!IsPostBack)
            {
                connstr.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select *from  Laptop where Id=" + idLaptop;
                cmd.Connection = connstr;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt != null && dt.Rows.Count > 0)
                {
                    TextBox1.Text = dt.Rows[0]["NameLaptop"].ToString();
                    TextBox2.Text = dt.Rows[0]["NameShop"].ToString();
                    TextBox3.Text = dt.Rows[0]["Display"].ToString();
                    TextBox4.Text = dt.Rows[0]["CPU"].ToString();
                    TextBox5.Text = dt.Rows[0]["RAM"].ToString();
                    TextBox6.Text = dt.Rows[0]["SSD"].ToString();
                    TextBox7.Text = dt.Rows[0]["CARD"].ToString();

                }
            }
        }
        protected void Update(object sender, EventArgs e)
        {
            connstr.Open();
            string NameLaptop = TextBox1.Text;
            string NameShop = TextBox2.Text;
            string Display = TextBox3.Text;
            string CPU = TextBox4.Text;
            string RAM = TextBox5.Text;
            string SSD = TextBox6.Text;
            string CARD = TextBox7.Text;
            SqlCommand cmd = new SqlCommand();
            string text = "Update Laptop SET NameLaptop='" + NameLaptop + "'" + ",NameShop='" + NameShop + "'" + ",Display='" + Display + "'" + ",CPU=" + "'" + CPU + "'" + ",RAM=" + "'" + RAM + "'"+",SSD=" + "'" + SSD + "'"+ ",CARD=" + "'" + CARD + "'" +" " + "Where Id=" + Request.QueryString["id"];
            cmd.CommandText = text;
            cmd.Connection = connstr;
            cmd.ExecuteNonQuery();
            Response.Redirect("ManageAdmin.aspx");
        }
    }
   
}