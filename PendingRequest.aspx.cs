using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Reflection.Emit;
using System.Drawing;
using System.Web.DynamicData;
using System.Xml.Linq;


namespace Industrial_Experts
{
    public partial class RequestGrid : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["Iti"].ConnectionString;
       
        public  void BindGridViewAgain()
        {

           
            SqlDataSource1.SelectCommand = "Select * from EmployeeDetails";
            SqlDataSource1.SelectParameters.Clear(); // Clear any previous parameters (if any)
          
            Approvedgrid.DataBind();


        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               // BindGridView();
            }
        }

      



        protected void Approvedgrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {


            if (e.CommandName == "Validate")
            {
               

                using (SqlConnection con = new SqlConnection(str))
                {
                    con.Open();
                    string id = e.CommandArgument.ToString();
                    // Check if the employee exists
                    using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Employee WHERE ItiRegNo = @ItiRegNo", con))
                    {
                      //  string id = e.CommandArgument.ToString();
                        cmd.Parameters.AddWithValue("@ItiRegNo", id);
                        int a = (int)cmd.ExecuteScalar();

                        if (a > 0)
                        {
                            // Fetch employee details
                            using (SqlCommand cd = new SqlCommand("SELECT Fname,Address,Email,PhoneNo,Password,ItiRegNo,StudentId,Certifications  FROM EmployeeDetails WHERE ItiRegNo = @ItiRegNo", con))
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
                                        string stid = res["StudentId"].ToString();
                                        string cer = res["Certifications"].ToString();

                                        // Close the first SqlDataReader
                                        res.Close();

                                        // Insert employee details into ApprovedEmpDetails table
                                        using (SqlCommand comd = new SqlCommand("INSERT INTO ApprovedEmpDetails (Fname, Address, Email, PhoneNo, Password, ItiRegNo, StudentId, Certifications) VALUES (@Fname, @Address, @Email, @PhoneNo, @Password, @ItiRegNo, @StudentId, @Certifications)", con))
                                        {
                                            comd.Parameters.AddWithValue("@Fname", na);
                                            comd.Parameters.AddWithValue("@Address", ad);
                                            comd.Parameters.AddWithValue("@Email", em);
                                            comd.Parameters.AddWithValue("@PhoneNo", ph);
                                            comd.Parameters.AddWithValue("@Password", ps);
                                            comd.Parameters.AddWithValue("@ItiRegNo", reg);
                                            comd.Parameters.AddWithValue("@StudentId", stid);
                                            comd.Parameters.AddWithValue("@Certifications", cer);
                                           int i= comd.ExecuteNonQuery();
                                            if (i > 0)
                                            {
                                                
                                                Response.Write("Employee Verified");



                                            }
  
                                        }

                                       
                                    }
                                }
                            }
                        }
                        else
                        {
                            Response.Write("This Employee doesn't belong to any ITI");
                        }


                    }

                    using(SqlCommand cmd=new SqlCommand("DELETE FROM EmployeeDetails WHERE ItiRegNo=@ItiRegNo", con))
                    {
                        cmd.Parameters.AddWithValue("@ItiRegNo", id);
                        
                        int i=cmd.ExecuteNonQuery();
                        if(i > 0)
                        {
                           
                            lbldel.Text = "Record Updated";
                            
                         
                        }
                        else {
                          
                            lbldel.Text = "Record Not Updated";
                          
                        }


                    }
                    BindGridViewAgain();

                }

            }      
        }

        protected void btnval_Click(object sender, EventArgs e)
        {
           
        
        }
    }
}




//    if(e.CommandName == "Validate")
//    {
//        SqlConnection con = new SqlConnection(str);
//        string id = e.CommandArgument.ToString();
//        SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Employee WHERE ItiRegNo=@ItiRegNo", con);
//        cmd.Parameters.AddWithValue("@ItiRegNo",id);
//        con.Open();
//        int a = (int)cmd.ExecuteScalar();
//        con.Close();
//        if (a > 0)
//        {
//            SqlCommand cd = new SqlCommand("SELECT * FROM EmployeeDetails WHERE ItiRegNo=@ItiRegNo", con);
//            cd.Parameters.AddWithValue("@ItiRegNo", id);
//            con.Open();
//            SqlDataReader res = cd.ExecuteReader();
//            while (res.Read())
//            {

//                string na = res["Fname"].ToString();
//                string ad = res["Address"].ToString();
//                string em = res["Email"].ToString();
//                string ph = res["PhoneNo"].ToString();
//                string ps = res["Password"].ToString();
//                string reg = res["ItiRegNo"].ToString();
//                string stid = res["StudentId"].ToString();
//                string cer = res["Certifications"].ToString();
//                SqlCommand comd = new SqlCommand("INSERT INTO ApprovedEmpDetails(Fname,Address,Email,PhoneNo,Password,ItiRegNo,StudentId,Certifications)  VALUES (@Fname,@Address,@Email,@PoneNo,@Password,@ItiRegNo,@StudentId,@Certifications) ", con);

//                comd.Parameters.AddWithValue("@Fname", na);
//                comd.Parameters.AddWithValue("@Address", ad);
//                comd.Parameters.AddWithValue("@Email", em);
//                comd.Parameters.AddWithValue("@PoneNo", ph);
//                comd.Parameters.AddWithValue("@Password", ps);
//                comd.Parameters.AddWithValue("@ItiRegNo", reg);
//                comd.Parameters.AddWithValue("@StudentId", stid);
//                comd.Parameters.AddWithValue("@Certifications", cer);
//                con.Open();
//                int i = cmd.ExecuteNonQuery();

//                if (i > 0)
//                {
//                    Response.Write("Employee Verified ");


//                }
//                else
//                {
//                    Response.Write("This Employee dont belong to any ITI");
//                }

//                con.Close();
//            }

//            con.Close();


//        }


//    }


//}