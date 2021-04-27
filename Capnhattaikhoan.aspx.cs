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
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection connstr = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\OnlineLaptopShop.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            string idtaikhoan = Request.QueryString["id"];
            if (!IsPostBack)
            {
                connstr.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = "select *from  Users where Id=" + idtaikhoan;
                cmd.Connection =connstr;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                if (dt != null && dt.Rows.Count > 0)
                {
                    TextBox1.Text = dt.Rows[0]["Username"].ToString();
                    TextBox2.Text = dt.Rows[0]["Password"].ToString();
                    TextBox3.Text = dt.Rows[0]["Email"].ToString();
                    TextBox4.Text = dt.Rows[0]["Phone"].ToString();
                }
            }
        }
        protected void Update(object sender, EventArgs e)
        {
            connstr.Open();
            string Username = TextBox1.Text;
            string Password = TextBox2.Text;
            string Email = TextBox3.Text;
            string Phone = TextBox4.Text;
            SqlCommand cmd = new SqlCommand();
            string text = "Update Users SET Username='" + Username + "'" + ",Password='" + Password + "'" + ",Email='" + Email + "'" +",Phone="+"'"+Phone+"'" + " "+"Where Id=" + Request.QueryString["id"];
            cmd.CommandText = text;
            cmd.Connection = connstr;
            cmd.ExecuteNonQuery();
            Response.Redirect("ManageAdmin.aspx");
        }
    }
}