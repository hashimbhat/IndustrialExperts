using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Industrial_Experts
{
    public partial class CusProfile : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["Iti"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {
                string em = Convert.ToString(Session["Email"]);
                using (SqlConnection con = new SqlConnection(str))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT FName, Address, Email, PhoneNo FROM CustomerDetails WHERE Email=@email", con))
                    {
                        cmd.Parameters.AddWithValue("@email", em);
                        con.Open();
                        SqlDataReader reader = cmd.ExecuteReader();
                        if (reader.Read())
                        {
                            Txtfullname.Text = reader["Fname"].ToString();
                            Txtaddress.Text = reader["Address"].ToString();
                            Txtemail.Text = reader["Email"].ToString();
                            Txtphone.Text = reader["PhoneNo"].ToString();

                            Txtfullname.Enabled = false;

                            Txtaddress.Enabled = false;
                            Txtemail.Enabled = false;
                            Txtphone.Enabled = false;

                            reader.Close();

                        }
                    }
                }
            }
        }

        protected void Btnchangepass_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangePassword.aspx");
        }
    }
}