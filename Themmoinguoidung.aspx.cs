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
    public partial class Themmoinguoidung : System.Web.UI.Page
    {
        SqlConnection connstr = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\OnlineLaptopShop.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            connstr.Open();
        }
        protected void btn_add(object sender, EventArgs e)
        {
            string Username = TextBox1.Text;
            string Password = TextBox2.Text;
            string Phone = TextBox3.Text;
            string Email = TextBox4.Text;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = ("Insert Into Users Values(2," + "'" + Username + "'" + "," + "'" + Password + "'" + "," + "'" + Phone + "'" +","+"'"+Email+"'"+")");
            cmd.Connection =connstr;
            cmd.ExecuteNonQuery();
            Response.Redirect("ManageAdmin.aspx");
        }

    }
}