using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace moviebooking1.Admin
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection cn = new SqlConnection(@"Data Source=LAPTOP-F2LK5573\SQLEXPRESS;Initial Catalog=MovieDB1;Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        string qry;
        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            cn.Open();
            if (FileUpload1.HasFile)
            {
                string fileextension = System.IO.Path.GetExtension(FileUpload1.FileName);
                if (fileextension.ToLower() != ".jpg" && fileextension.ToLower() != ".jpeg" && fileextension.ToLower() != ".png")
                {
                    lbl_fumsg.Text = "Please Select Only jpg,jpeg or png Files";
                    lbl_fumsg.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                    int filesize = FileUpload1.PostedFile.ContentLength;
                    if (filesize > 2097152)
                    {
                        lbl_fumsg.Text = "File Size Is To Large";
                        lbl_fumsg.ForeColor = System.Drawing.Color.Red;
                    }
                    else
                    {
                        FileUpload1.SaveAs(Server.MapPath("~/Admin/img/" + FileUpload1.FileName));
                        lbl_fumsg.Text = "File Uploaded Successfully";
                        lbl_fumsg.ForeColor = System.Drawing.Color.Green;
                    }
                }
            }
            else
            {
                lbl_fumsg.Text = "Please Select File";
                lbl_fumsg.ForeColor = System.Drawing.Color.Red;
            }


            qry = "insert into Admin values('" + txtfnm.Text + "','" + txtlnm.Text + "', " + txtcno.Text + ", '" + txtemail.Text + "', '" + txtpass.Text + "', '" + txtcpass.Text + "', '" + FileUpload1.FileName + "')";
            cmd = new SqlCommand(qry, cn);
            cmd.ExecuteNonQuery();
            cn.Close();
        }
    }
}