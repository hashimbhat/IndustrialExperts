using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;

namespace Industrial_Experts
{
    public partial class EmpAppointmentReq : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["Iti"].ConnectionString;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                //AppointmentReqGrid.DataSource = SqlDataSource1;
                //AppointmentReqGrid.DataBind();
                if (Session["Email"] != null)
                {
                    string emp = Session["Email"].ToString(); // Get the value of session variable as a string
                    string sta = "Requested";
                    using (SqlConnection con = new SqlConnection(str))
                    {
                        using (SqlCommand cmd = new SqlCommand("SELECT EmpId,Fname,Email,PhoneNo,WorkDesc,StartDate,AddressSite,Status FROM AppointmentsEmp WHERE EmpEmail=@empmail AND Status=@sta", con))
                        {
                            cmd.Parameters.AddWithValue("@sta", sta);
                            cmd.Parameters.AddWithValue("@empmail", emp);
                            con.Open();

                            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                            DataTable dataTable = new DataTable();
                            adapter.Fill(dataTable);

                            // Now the 'dataTable' contains the data retrieved from the database.

                            // Bind the DataTable to the GridView
                            AppointmentReqGrid.DataSource = dataTable;
                            AppointmentReqGrid.DataBind();
                            con.Close();
                            if (dataTable.Rows.Count > 0)
                            {
                                lblmes.Text = "Here Are All Your Appointments";
                               
                            }
                            else
                            {
                                lblmes.Text = "No Appointments Yet";
                                
                            }

                        }

                        


                    }
                }
            }
        


        }

        protected void btnApprove_Click(object sender, EventArgs e)
        {      
           
        }

        protected void AppointmentReqGrid_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
       
        protected void AppointmentReqGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName =="Approve")
            {

                GridViewRow row = (GridViewRow)(((Button)e.CommandSource).NamingContainer);
                TextBox txtamount = (TextBox)row.FindControl("txtamount");
                string amountValue = txtamount.Text;


                string stat = "In Process";
                int cus = Convert.ToInt32(e.CommandArgument);




                using (SqlConnection con = new SqlConnection(str))
                {
                    using (SqlCommand cmd = new SqlCommand(" UPDATE AppointmentsEmp SET Status=@stat,Amount=@amou WHERE EmpId = @em", con))
                    {
                        cmd.Parameters.AddWithValue("@em",cus);
                        cmd.Parameters.AddWithValue("@amou",amountValue );
                        cmd.Parameters.AddWithValue("@stat", stat);

                        con.Open();
                        int i = cmd.ExecuteNonQuery();
                        if (i > 0)
                        {
                            lblapprove.Text = "Your Offer Is Sent To Customer";
                        }
                        else
                        {
                            lblapprove.Text = "Your Offer Is Not Sent To Customer";
                        }
                    }

                }


            }
            if (e.CommandName == "Deny")
            {


                int cus = Convert.ToInt32(e.CommandArgument);
                string stat = "Rejected";
                using (SqlConnection con = new SqlConnection(str))
                {
                    using (SqlCommand cmd = new SqlCommand("UPDATE AppointmentsEmp SET Status = @sta WHERE EmpId = @em", con))
                    {
                        cmd.Parameters.AddWithValue("@sta", stat);
                        cmd.Parameters.AddWithValue("@em", cus);

                        con.Open();


                        cmd.ExecuteNonQuery();


                        con.Close();

                    }



                }

            }
           
            BindGridView();
        }
        protected void BindGridView()
        {


            string emp = Session["Email"].ToString(); // Get the value of session variable as a string
            string sta = "Requested";
            using (SqlConnection con = new SqlConnection(str))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT EmpId,Fname,Email,PhoneNo,WorkDesc,StartDate,AddressSite,Status FROM AppointmentsEmp WHERE EmpEmail=@empmail AND Status=@sta", con))
                {
                    cmd.Parameters.AddWithValue("@sta", sta);
                    cmd.Parameters.AddWithValue("@empmail", emp);
                    con.Open();

                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    // Now the 'dataTable' contains the data retrieved from the database.

                    // Bind the DataTable to the GridView
                    AppointmentReqGrid.DataSource = dataTable;
                    AppointmentReqGrid.DataBind();
                    con.Close();
                    if (dataTable.Rows.Count > 0)
                    {
                        lblmes.Text = "Here Are All Your Appointments";

                    }
                    else
                    {
                        lblmes.Text = "No Appointments Yet";

                    }

                }




            }



        }
    }
    }
