using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace moviebooking1
{
    public partial class cancel_ticket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(ConfigurationManager.ConnectionStrings["cn"].ConnectionString);
            cn.Open();
            SqlCommand del = new SqlCommand("delete from tblbooking where bookid="+Convert.ToInt16( txtbno.Text)+"and uname='"+txtuname.Text+"'", cn);
            if (del.ExecuteNonQuery() > 0)
                Label3.Text = "Successfully Canceled";
            else
                Label3.Text = "Not Cancel";
        }
    }
}