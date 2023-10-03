using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Industrial_Experts
{
    public partial class ConAppSta : System.Web.UI.Page
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
                    string stat = "In Process";
                    using (SqlConnection con = new SqlConnection(str))
                    {
                        using (SqlCommand cmd = new SqlCommand("SELECT ConId,EmpEmail,WorkDesc,StartDate,AddressSite,Status,Amount FROM AppointmentsCon WHERE Email=@empmail AND Status=@sta ", con))
                        {
                            cmd.Parameters.AddWithValue("@sta", stat);
                            cmd.Parameters.AddWithValue("@empmail", emp);
                            con.Open();

                            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                            DataTable dataTable = new DataTable();
                            adapter.Fill(dataTable);

                            // Now the 'dataTable' contains the data retrieved from the database.         

                            // Bind the DataTable to the GridView
                            ConAppStaGrid.DataSource = dataTable;
                            ConAppStaGrid.DataBind();
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

        protected void ConAppStaGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "Acc")
            {
                string em = e.CommandArgument.ToString();
                string stat = "Work Started";
                using (SqlConnection con = new SqlConnection(str))
                {
                    using (SqlCommand cmd = new SqlCommand("UPDATE AppointmentsCon SET Status = @sta WHERE ConId = @em", con))
                    {
                        cmd.Parameters.AddWithValue("@sta", stat);
                        cmd.Parameters.AddWithValue("@em", em);

                        con.Open();


                        cmd.ExecuteNonQuery();


                        con.Close();

                    }



                }
                BindGridView();


            }
            if (e.CommandName == "Rej")
            {


                string em = e.CommandArgument.ToString();
                string stat = "Offer Rejected";
                using (SqlConnection con = new SqlConnection(str))
                {
                    using (SqlCommand cmd = new SqlCommand("UPDATE AppointmentsCon SET Status = @sta WHERE EmpId = @em", con))
                    {
                        cmd.Parameters.AddWithValue("@sta", stat);
                        cmd.Parameters.AddWithValue("@em", em);

                        con.Open();


                        cmd.ExecuteNonQuery();


                        con.Close();

                    }



                }
                BindGridView();




            }

        }
        private void BindGridView()
        {
            // Retrieve the updated data from the database and bind it to the GridView
            using (SqlConnection con = new SqlConnection(str))
            {
                string emp = Session["Email"].ToString(); // Get the value of session variable as a string
                string stat = "In Process";
                using (SqlCommand cmd = new SqlCommand("SELECT ConId,EmpEmail,WorkDesc,StartDate,AddressSite,Status,Amount FROM AppointmentsCon WHERE Email=@empmail AND Status=@sta ", con))
                {
                    cmd.Parameters.AddWithValue("@sta", stat);
                    cmd.Parameters.AddWithValue("@empmail", emp);
                    con.Open();

                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    // Now the 'dataTable' contains the data retrieved from the database.         

                    // Bind the DataTable to the GridView
                    ConAppStaGrid.DataSource = dataTable;
                    ConAppStaGrid.DataBind();
                    con.Close();
                }
            }
        }

        protected void Accept_Click(object sender, EventArgs e)
        {

        }

        protected void Reject_Click(object sender, EventArgs e)
        {

        }
    }
}