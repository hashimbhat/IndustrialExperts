using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Industrial_Experts
{
    public partial class ConSta : System.Web.UI.Page
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
                    string sta = "Work Started";
                    using (SqlConnection con = new SqlConnection(str))
                    {
                        using (SqlCommand cmd = new SqlCommand("SELECT ConId,Fname,Address,Email,PhoneNo,WorkDesc,StartDate,AddressSite,Status,Amount FROM AppointmentsCon WHERE EmpEmail=@empmail AND Status=@sta", con))
                        {
                            cmd.Parameters.AddWithValue("@sta", sta);
                            cmd.Parameters.AddWithValue("@empmail", emp);
                            con.Open();

                            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                            DataTable dataTable = new DataTable();
                            adapter.Fill(dataTable);

                            // Now the 'dataTable' contains the data retrieved from the database.

                            // Bind the DataTable to the GridView
                            ConStartedGrid.DataSource = dataTable;
                            ConStartedGrid.DataBind();
                            con.Close();
                            if (dataTable.Rows.Count > 0)
                            {
                                Response.Write("Here Are All Your Appointments");
                            }
                            else
                            {
                                Response.Write("No Appointments Yet");
                            }

                        }




                    }
                }
            }
        }

        protected void btnEnd_Click(object sender, EventArgs e)
        {    
           
        }

        protected void ConStartedGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Session["ConId"] = Convert.ToInt32(e.CommandArgument);
            Response.Redirect("EndWork.aspx");
        }
    }
}