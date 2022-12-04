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
    public partial class SingUpPage : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["conn"].ConnectionString);
        }

        string EmpType = "Employee";
        bool isDeleted = false;
        bool IsActive = false;
        string modifyOn = DateTime.Now.ToString();

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                con.Open();
                cmd = new SqlCommand("sp_singupEmpData", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@name", txtname.Text);
                cmd.Parameters.AddWithValue("@address", txtaddress.Text);
                cmd.Parameters.AddWithValue("@country", ddlCountry.SelectedValue);
                cmd.Parameters.AddWithValue("@state", ddlState.SelectedValue);
                cmd.Parameters.AddWithValue("@city", ddlCity.SelectedValue);
                cmd.Parameters.AddWithValue("@dateofbirth", Convert.ToDateTime(txtDOB.Text));
                cmd.Parameters.AddWithValue("@dateofjoin", Convert.ToDateTime(txtDOJ.Text));
                cmd.Parameters.AddWithValue("@mobileno", Convert.ToInt64(txtMobile.Text));
                cmd.Parameters.AddWithValue("@whatsappno", Convert.ToInt64(txtwhno.Text));
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@password", txtPwd.Text);
                cmd.Parameters.AddWithValue("@emptype", EmpType);
                cmd.Parameters.AddWithValue("@isdeleted", Convert.ToString(isDeleted));
                cmd.Parameters.AddWithValue("@isactive", Convert.ToString(IsActive));
                cmd.Parameters.AddWithValue("@modifyon", modifyOn);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Insert Data SuccessFully');</script>");
            }
        }

        protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddlCity.Items.Clear();
            con.Open();
            cmd = new SqlCommand("sp_StateDisplay", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@countryid", ddlCountry.SelectedValue);
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            if (dt.Rows.Count > 0)
            {
                ddlState.DataSource = dt;
                ddlState.DataValueField = "Id";
                ddlState.DataTextField = "Name";
                ddlState.DataBind();
                ddlState.SelectedIndex = 0;
            }
            con.Close();
        }

        protected void ddlState_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("sp_CityDisplay", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@stateid", ddlState.SelectedValue);
            SqlDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            if (dt.Rows.Count > 0)
            {
                ddlCity.DataSource = dt;
                ddlCity.DataValueField = "Id";
                ddlCity.DataTextField = "City";
                ddlCity.DataBind();
                ddlCity.SelectedIndex = 0;
            }
            con.Close();
        }
    }
}