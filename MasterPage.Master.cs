using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineLaptopShopFix
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            
            if (Session["userName"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                string userName = Session["userName"].ToString();
                Response.Redirect("Buy.aspx?userName=" + userName);
            }    
           
        }
    }
}