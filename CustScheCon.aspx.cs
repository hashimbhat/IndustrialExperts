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
    public partial class CustScheCon : System.Web.UI.Page
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
           
            using (SqlConnection con = new SqlConnection(str))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT FName,Email,Address,PhoneNo FROM ApprovedContDetails ", con))
                {
                    
                    cmd.Parameters.AddWithValue("@empmail", emp);
                    con.Open();

                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    // Now the 'dataTable' contains the data retrieved from the database.         

                    // Bind the DataTable to the GridView
                    CustScheConGrid.DataSource = dataTable;
                    CustScheConGrid.DataBind();
                    con.Close();
                    if (dataTable.Rows.Count > 0)
                    {
                        lblmes.Text = "Here is the list of GOVT. ITI registered contractors";
                    }
                    else
                    {
                        lblmes.Text = "No Contractor Till Now";
                    }

                }




            }
        }

        protected void BookConApp_Click(object sender, EventArgs e)
        {
            

        }

        protected void BookConApp_Command(object sender, CommandEventArgs e)
        {

        }

        protected void CustScheConGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Session["SelectedConEmail"] = e.CommandArgument.ToString();
            Response.Redirect("ContractorAppointment.aspx");
         
         
        }
    }
}