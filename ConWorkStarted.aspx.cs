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
    public partial class ConWorkStarted : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["Iti"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();



            }
        }
       
        protected void BindGridView()
        {
            string emp = Session["Email"].ToString(); // Get the value of session variable as a string
            string stat = "Work Started";
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
                    ContWorkStaGrid.DataSource = dataTable;
                    ContWorkStaGrid.DataBind();
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