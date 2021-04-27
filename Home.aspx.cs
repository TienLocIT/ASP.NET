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
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string connstr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\OnlineLaptopShop.mdf;Integrated Security=True";
                String cmd = "Select *From Laptop Where FlashSell='Yes'";
                SqlDataAdapter da = new SqlDataAdapter(cmd,connstr);
                DataSet ds = new DataSet();
                da.Fill(ds,"Laptop");
                DataList1.DataSource = ds.Tables["Laptop"];
                DataList1.DataBind();
                String cmd1 = "Select * From Laptop Where NameShop='Asus'";
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1, connstr);
                DataSet ds1 = new DataSet();
                da1.Fill(ds1,"Laptop");
                DataList2.DataSource = ds1.Tables["Laptop"];
                DataList2.DataBind();
            }
        }
        public void ClickShop(object sender, EventArgs e)
        {
           


        }
    }
}