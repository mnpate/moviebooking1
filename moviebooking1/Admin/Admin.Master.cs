using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace moviebooking1.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          
            //try
            //{
            //    ap1.ImageUrl = "~/Admin/img/" + Session["img"].ToString();
            //    lblname1.Text = Session["FirstName"].ToString();
            //    Response.Redirect("Dashboard.aspx");
            //}
            //catch (Exception ex)
            //{
            //    Response.Redirect("../AdminLogin1.aspx");
            //}
        }
    }
}