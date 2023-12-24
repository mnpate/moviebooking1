using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace moviebooking1.Admin
{
    public partial class AdminLogin1 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=LAPTOP-F2LK5573\SQLEXPRESS;Initial Catalog=MovieDB1;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "select * from Admin where Email='" + txtemail.Text + "' and Password='" + txtpass.Text + "'";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {

                dr.Read();
                Session["img"] = dr["img"];
                Session["FirstName"] = dr["FirstName"];
                Session["LastName"] = dr["LastName"];
                Session["Email"] = dr["Email"];
                //Response.Write("<script>alert('Welcome Admin')</script>");
                Response.Redirect("~/Admin/Dashboard.aspx");

            }
            else
            {
                Response.Write("<script>alert('Invalid Email Or Password')</script>");
            }

            cn.Close();

        }
    }
}