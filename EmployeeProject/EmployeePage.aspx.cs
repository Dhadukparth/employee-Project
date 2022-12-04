using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace EmployeeProject
{
    public partial class EmployeePage : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);
            DisplayData();
        }

        public void DisplayData()
        {
            con.Open();
            cmd = new SqlCommand("sp_EmpDisplayData", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            gvemp.DataSource = dt;
            gvemp.DataBind();
            con.Close();
        }

        protected void gvemp_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}