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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                string connstr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\OnlineLaptopShop.mdf;Integrated Security=True";
                string userName = Request.QueryString["userName"];
                String cmd = "Select *From Laptop Where nameOwner="+"'"+userName+"'";
                SqlDataAdapter da = new SqlDataAdapter(cmd, connstr);
                DataSet ds = new DataSet();
                da.Fill(ds, "Laptop");
                DataList1.DataSource = ds.Tables["Laptop"];
                DataList1.DataBind();
            }
        }
    }
}