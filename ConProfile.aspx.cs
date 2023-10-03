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
    public partial class ConProfile : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["Iti"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {
                string em = Convert.ToString(Session["Email"]);
                using (SqlConnection con = new SqlConnection(str))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT FName, Address, Email, PhoneNo, ItiRegNo,ContractorLicNo FROM ApprovedContDetails WHERE Email=@email", con))
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
                            Txtitiregistrationno.Text = reader["ItiRegNo"].ToString();
                            Txtcontlicno.Text = reader["ContractorLicNo"].ToString();
                            Txtfullname.Enabled = false;
                            Txtitiregistrationno.Enabled = false;
                            Txtaddress.Enabled = false;
                            Txtemail.Enabled = false;
                            Txtphone.Enabled = false;
                            Txtcontlicno.Enabled = false;
                        }
                        reader.Close();

                    }
                }
            }
        }
    }
}