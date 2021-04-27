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
    public partial class themMoiLapTop : System.Web.UI.Page
    {
        SqlConnection connstr = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\OnlineLaptopShop.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            connstr.Open();
        }
        protected void btn_add(object sender, EventArgs e)
        {
            string NameLapTop = TextBox1.Text;
            string NameShop = TextBox2.Text;
            string Display = TextBox3.Text;
            string CPU = TextBox4.Text;
            string RAM = TextBox5.Text;
            string SSD = TextBox6.Text;
            string CARD = TextBox7.Text;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = ("Insert Into Laptop Values(8," + "'" + NameLapTop + "'" + "," + "'" +NameShop + "'" + "," + "'" + Display + "'" + "," + "'" + CPU + "'" + "," + "'" + RAM + "'" + "," + "'" + SSD + "'" + "," + "'" + CARD + "'" + ")");
            cmd.Connection = connstr;
            cmd.ExecuteNonQuery();
            Response.Redirect("ManageAdmin.aspx");
        }
    }
}