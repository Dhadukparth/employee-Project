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
    public partial class LoginPage : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        }

        protected void btnreset_Click(object sender, EventArgs e)
        {
            txtusername.Text = "";
            txtpassword.Text = "";
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("sp_singin", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@username", txtusername.Text);
            cmd.Parameters.AddWithValue("@password", txtpassword.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if(dr.Read())
            { 
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                lblerror.Visible = true;
                lblerror.Text = "Pleace Check Username or Password";
            }
            con.Close();
        }
    }
}