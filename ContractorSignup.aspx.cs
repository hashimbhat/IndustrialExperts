using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Industrial_Experts
{
    public partial class ContractorSignup : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["Iti"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
        protected void cleardata()
        {

            Txtfname.Text = string.Empty;
            Txtaddress.Text = string.Empty;
            Txtemail.Text = string.Empty;
            Txtphone.Text = string.Empty;
            Txtconfirmpassword.Text = string.Empty;
            Txtpassword.Text = string.Empty;
            Txtcontid.Text = string.Empty;  
            Txtitiregistrationno.Text = string.Empty;



        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("ContractorProcedure", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Fname", Txtfname.Text);
            cmd.Parameters.AddWithValue("@Address", Txtaddress.Text);
            cmd.Parameters.AddWithValue("@Email", Txtemail.Text);
            cmd.Parameters.AddWithValue("@PoneNo", Txtphone.Text);
            cmd.Parameters.AddWithValue("@Password", Txtconfirmpassword.Text);
            cmd.Parameters.AddWithValue("@ItiRegNo", Lblitiregistrationno.Text);
            cmd.Parameters.AddWithValue("@ContractorLicNo", Txtcontid.Text);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                Response.Write("Your Account Has Been Created ");
                cleardata();

            }
            else
            {
                Response.Write("Please Sign-up Again");
            }
            con.Close();
        }
    }
    }
