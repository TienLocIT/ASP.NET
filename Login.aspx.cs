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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\OnlineLaptopShop.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            connection.Open();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string UsernameTxt = username.Text;
            string passTxt = password.Text;
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "Select Username From Users Where Username=" + "'" + UsernameTxt + "'";
            cmd.Connection = connection;
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = "Select Password From Users Where Password=" + "'" + passTxt + "'";
            cmd1.Connection = connection;
            string passCheck = (string)cmd1.ExecuteScalar();
            string userCheck = (string)cmd.ExecuteScalar();
            if(userCheck==UsernameTxt && passCheck == passTxt)
            {
                Session["userName"] = userCheck;
                Response.Redirect("Home.aspx");
            }
            else
            {
                Label1.Text = "Wrong pass or Wrong username";
            }
                
            
               
            
        }
    }
}