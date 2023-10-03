using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Industrial_Experts
{
    public partial class ContractorRequests : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["Iti"].ConnectionString;
        public void BindGridView()
        {
            SqlConnection con = new SqlConnection(str);
            using (SqlCommand cmd = new SqlCommand("Select * from ContractorDetails", con))
            {
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                da.Fill(ds);
             }
          }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Contractorgrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "Validate")
            {


                using (SqlConnection con = new SqlConnection(str))
                {
                    con.Open();
                    string id = e.CommandArgument.ToString();
                    // Check if the employee exists
                    using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Contractor WHERE ItiRegNo = @ItiRegNo", con))
                    {
                        //  string id = e.CommandArgument.ToString();
                        cmd.Parameters.AddWithValue("@ItiRegNo", id);
                        int a = (int)cmd.ExecuteScalar();

                        if (a > 0)
                        {
                            // Fetch employee details
                            using (SqlCommand cd = new SqlCommand("SELECT Fname,Address,Email,PhoneNo,Password,ItiRegNo,ContractorLicNo  FROM ContractorDetails WHERE ItiRegNo = @ItiRegNo", con))
                            {
                                cd.Parameters.AddWithValue("@ItiRegNo", id);

                                using (SqlDataReader res = cd.ExecuteReader())
                                {
                                    if (res.Read())
                                    {
                                        string na = res["Fname"].ToString();
                                        string ad = res["Address"].ToString();
                                        string em = res["Email"].ToString();
                                        string ph = res["PhoneNo"].ToString();
                                        string ps = res["Password"].ToString();
                                        string reg = res["ItiRegNo"].ToString();
                                        string cer = res["ContractorLicNo"].ToString();

                                        // Close the first SqlDataReader
                                        res.Close();

                                        // Insert employee details into ApprovedEmpDetails table
                                        using (SqlCommand comd = new SqlCommand("INSERT INTO ApprovedContDetails (Fname, Address, Email, PhoneNo, Password, ItiRegNo,ContractorLicNo) VALUES (@Fname, @Address, @Email, @PhoneNo, @Password, @ItiRegNo,@ContractorLicNo)", con))
                                        {
                                            comd.Parameters.AddWithValue("@Fname", na);
                                            comd.Parameters.AddWithValue("@Address", ad);
                                            comd.Parameters.AddWithValue("@Email", em);
                                            comd.Parameters.AddWithValue("@PhoneNo", ph);
                                            comd.Parameters.AddWithValue("@Password", ps);
                                            comd.Parameters.AddWithValue("@ItiRegNo", reg);
                                           
                                            comd.Parameters.AddWithValue("@ContractorLicNo", cer);
                                            int i = comd.ExecuteNonQuery();
                                            if (i > 0)
                                            {

                                                Response.Write("Contractor Verified");



                                            }

                                        }


                                    }
                                }
                            }
                        }
                        else
                        {
                            Response.Write("This Contractor doesn't belong to any ITI");
                        }


                    }

                    using (SqlCommand cmd = new SqlCommand("DELETE FROM ContractorDetails WHERE ItiRegNo=@ItiRegNo", con))
                    {
                        cmd.Parameters.AddWithValue("@ItiRegNo", id);

                        int i = cmd.ExecuteNonQuery();
                        if (i > 0)
                        {
                            BindGridView();
                            lbldel.Text = "Record Updated";


                        }
                        else
                        {
                            BindGridView();
                            lbldel.Text = "Record Not Updated";

                        }


                    }

                }

            }
        }



    }
}
