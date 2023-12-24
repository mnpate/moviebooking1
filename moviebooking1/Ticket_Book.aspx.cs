using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace moviebooking1
{
    public partial class Ticket_Book : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=LAPTOP-F2LK5573\SQLEXPRESS;Initial Catalog=MovieDB1;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button16_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
        }
    }
}