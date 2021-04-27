using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace OnlineLaptopShopFix
{
    public partial class SignUp : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\OnlineLaptopShop.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            connection.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String UserNametxt = username.Text;
            String passwordtxt = password.Text;
            String emailtxt = email.Text;
            String phonetxt = phone.Text;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Insert Into Users Values(" + "1" + "," + "'" + UserNametxt + "'" + "," + "'" + passwordtxt + "'" + "," + "N'" + emailtxt + "'" + "," + "'" + phonetxt + "'" + ")";
            cmd.Connection = connection;
            cmd.ExecuteNonQuery();
            Response.Redirect("Login.aspx");
        }
    }
}