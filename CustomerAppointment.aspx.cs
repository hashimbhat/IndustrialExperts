using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Collections;


namespace Industrial_Experts
{
    public partial class Customer_Appointment : System.Web.UI.Page
    {
       

        string str = ConfigurationManager.ConnectionStrings["Iti"].ConnectionString;
        string emp;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                 emp = Convert.ToString(Session["SelectedEmpEmail"]);
                // Rest of your code here
            }
        }

    

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //using (SqlConnection connection = new SqlConnection(str))
            //{
            //    using (SqlCommand cmd = new SqlCommand("INSERT INTO AppointmentsEmp (Fname,Address,Email,WorkDesc,StartDate,AddressSite ) SELECT ApprovedEmpDetails.Fname,ApprovedEmpDetails.Address,ApprovedEmpDetails.Email, @workdec,@startdate,@addrsite FROM ApprovedEmpDetails WHERE Email = @ConditionValue", connection))
            //    {

            //        cmd.Parameters.AddWithValue("@workdec", txtExplainWork.Text);
            //        cmd.Parameters.AddWithValue("@startdate", txtStartDate.Text);
            //        cmd.Parameters.AddWithValue("@addrsite", txtAddress.Text);
            //        cmd.Parameters.AddWithValue("@ConditionValue",emp );
            //        connection.Open();
            //        int rowsAffected = cmd.ExecuteNonQuery();
            //        connection.Close();


            //        if (rowsAffected > 0)
            //        {
            //            Alert.Text = "Done, Your appointment is sent";
            //        }
            //        else
            //        {
            //            Alert.Text = "Sorry, Please Enter Data Properly";

            //        }




            //    }

            //}
            if (Session["SelectedEmpEmail"] != null)
            {
                string emp = Session["SelectedEmpEmail"].ToString(); // Get the value of session variable as a string
                string cust = Session["Email"].ToString();
                string sta = "Requested";
                
                using (SqlConnection connection = new SqlConnection(str))
                {
                    using (SqlCommand cmd = new SqlCommand("INSERT INTO AppointmentsEmp (Fname, Address, Email, PhoneNo,WorkDesc, StartDate, AddressSite,EmpEmail,Status) SELECT Fname, Address, Email,PhoneNo, @workdec, @startdate, @addrsite ,@empmail,@status FROM CustomerDetails WHERE Email = @ConditionValue", connection))
                    {
                        cmd.Parameters.AddWithValue("@workdec", txtExplainWork.Text);
                        cmd.Parameters.AddWithValue("@startdate", txtStartDate.Text);
                        cmd.Parameters.AddWithValue("@addrsite", txtAddress.Text);
                        cmd.Parameters.AddWithValue("@empmail",emp);
                        cmd.Parameters.AddWithValue("@ConditionValue", cust); // Use the value of the session variable as parameter
                        cmd.Parameters.AddWithValue("@status",sta);
                        connection.Open();
                        int rowsAffected = cmd.ExecuteNonQuery();
                        connection.Close();

                        if (rowsAffected > 0)
                        {
                            Alert.Text = "Done, Your appointment is sent";
                        }
                        else
                        {
                            Alert.Text = "Sorry, Please Enter Data Properly";
                        }
                    }
                }
            }
            else
            {
                // Handle the case when the session variable is not set or null
                // Display an appropriate message or redirect the user
                // For example:
                Alert.Text = "Session variable SelectedEmpEmail is not set or null. Please select a valid employee email first.";
            }
        }
    }
    }

