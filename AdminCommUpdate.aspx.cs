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
    public partial class AdminCommUpdate : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["Iti"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            bool isemp = Convert.ToBoolean(Session["IsEmp"]);
            if (!IsPostBack)
            {
                string iti = Convert.ToString(Session["ITI"]);
                using (SqlConnection con =new SqlConnection(str))
                { 
                    if (isemp)
                    {
                        lblconlicno.Visible = false;
                        Txtconlicno.Visible = false;
                       
                        using(SqlCommand cmd = new SqlCommand("SELECT Fname,Address,Email,PhoneNo,ItiRegNo,StudentId,Certifications FROM ApprovedEmpDetails WHERE ItiRegNo=@iti ", con))
                        {
                            cmd.Parameters.AddWithValue("@iti", iti);
                            con.Open();
                            SqlDataReader dr = cmd.ExecuteReader();
                            if (dr.Read())
                            {
                                Txtfname.Text = dr["Fname"].ToString();
                                Txtaddress.Text = dr["Address"].ToString();
                                Txtemail.Text = dr["Email"].ToString();
                                Txtphone.Text = dr["PhoneNo"].ToString();
                                Txtitiregistrationno.Text = dr["ItiRegNo"].ToString();
                                Txtstuid.Text = dr["StudentId"].ToString();
                                Certifications.Text = dr["Certifications"].ToString();
                               

                            }

                        }

                    }
                    else
                    {
                        lblcertificate.Visible = false;
                        Certifications.Visible = false;
                        lblId.Visible = false;
                        Txtstuid.Visible = false;
                        using (SqlCommand cmd = new SqlCommand("SELECT Fname,Address,Email,PhoneNo,ItiRegNo,ContractorLicNo FROM ApprovedContDetails WHERE ItiRegNo=@iti", con))
                        {
                            cmd.Parameters.AddWithValue("@iti", iti);
                            con.Open();
                            SqlDataReader dr = cmd.ExecuteReader();
                            if (dr.Read())
                            {
                                Txtfname.Text = dr["Fname"].ToString();
                                Txtaddress.Text = dr["Address"].ToString();
                                Txtemail.Text = dr["Email"].ToString();
                                Txtphone.Text = dr["PhoneNo"].ToString();
                                Txtitiregistrationno.Text = dr["ItiRegNo"].ToString();
                                Txtconlicno.Text = dr["ContractorLicNo"].ToString();
                            


                            }
                        }
                    }
                }
            }
        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            bool isemp = Convert.ToBoolean(Session["IsEmp"]);
            string iti = Convert.ToString(Session["ITI"]);
            using (SqlConnection con = new SqlConnection(str))
            {
                if (isemp)
                {
                    using (SqlCommand cmd= new SqlCommand("UPDATE ApprovedEmpDetails SET Fname=@n,Address=@a,Email=@e,PhoneNo=@p,ItiRegNo=@i,StudentId=@s,Certifications=@c WHERE ItiRegNo=@iti  ", con))
                    {
                        cmd.Parameters.AddWithValue("@n",Txtfname.Text);
                        cmd.Parameters.AddWithValue("@a",Txtaddress.Text);
                        cmd.Parameters.AddWithValue("@e",Txtemail.Text);
                        cmd.Parameters.AddWithValue("@p",Txtphone.Text);
                        cmd.Parameters.AddWithValue("@i",Txtitiregistrationno.Text);
                        cmd.Parameters.AddWithValue("@s",Txtstuid.Text);
                        cmd.Parameters.AddWithValue("@c",Certifications.Text);
                        cmd.Parameters.AddWithValue("@iti",iti);
                        con.Open();
                        int i = cmd.ExecuteNonQuery();
                        if (i > 0)
                        {
                            lblmes.Text = "Data Updated";

                        }
                        else
                        {
                            lblmes.Text = "Data Not Updated";
                        }
                        con.Close();
                    }

                    
                }
                else
                {
                    using (SqlCommand cmd = new SqlCommand("UPDATE ApprovedContDetails SET Fname=@n,Address=@a,Email=@e,PhoneNo=@p,ItiRegNo=@i,ContractorLicNo=@c WHERE ItiRegNo=@iti", con))
                    {
                        cmd.Parameters.AddWithValue("@n", Txtfname.Text);
                        cmd.Parameters.AddWithValue("@a", Txtaddress.Text);
                        cmd.Parameters.AddWithValue("@e", Txtemail.Text);
                        cmd.Parameters.AddWithValue("@p", Txtphone.Text);
                        cmd.Parameters.AddWithValue("@i", Txtitiregistrationno.Text);
                        cmd.Parameters.AddWithValue("@c",Txtconlicno.Text);
                        cmd.Parameters.AddWithValue("@iti", iti);
                        con.Open();
                        int i = cmd.ExecuteNonQuery();
                        if (i > 0)
                        {
                           lblmes.Text="Data Updated";
                           

                        }
                        else
                        {
                            lblmes.Text = "Data Not Updated";
                        }
                        con.Close();
                    }
                }

            }
            
        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            bool isemp = Convert.ToBoolean(Session["IsEmp"]);
            if(isemp)
            {
                Response.Redirect("AdminUpdateData.aspx");

            }
            else Response.Redirect("AdminUpdateCon.aspx");
        }
    }
}