using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace moviebooking1.Admin
{
    public partial class Movies_new : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
			try
			{
                DataTable dt = new DataTable();
                if (!IsPostBack)
                {
                    if (ViewState["records"] == null)
                    {
                        dt.Columns.Add("Movie_Id");
                        dt.Columns.Add("Movie_Name");
                        dt.Columns.Add("Show_Time");
                        dt.Columns.Add("Theatre_Id");
                        dt.Columns.Add("Theatre");
                        dt.Columns.Add("Image");
                        ViewState["records"] = dt;

                        dt = (DataTable)ViewState["records"];
                        dt.Rows.Add(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
			catch (Exception)
			{

				throw;
			}
        }
    }
}