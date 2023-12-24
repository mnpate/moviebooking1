using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace moviebooking1
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=LAPTOP-F2LK5573\SQLEXPRESS;Initial Catalog=MovieDB1;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cn.Open();
            qry = "select * from Register where Email_Id = '"+txt_username.Text+"' and Password = '"+txt_password.Text+"'";
           // qry = "insert into Login values ('"+txt_username.Text+"', '"+txt_password.Text+"')";
            cmd = new SqlCommand(qry, cn);
            dr = cmd.ExecuteReader();
            if (dr.HasRows) 
            {
                Session["Login"] = txt_username.Text;
                Response.Redirect("Home.aspx");
                txt_username.Text = "";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }
    }
}