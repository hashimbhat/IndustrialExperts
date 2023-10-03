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
    public partial class AdminCurrServ : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["Iti"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {
              
                using (SqlConnection con = new SqlConnection(str))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT ServiceName FROM Service", con))
                    {
                     
                        con.Open();

                        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                        DataTable dataTable = new DataTable();
                        adapter.Fill(dataTable);

                        // Now the 'dataTable' contains the data retrieved from the database.

                        // Bind the DataTable to the GridView
                        AdminCurrServices.DataSource = dataTable;
                        AdminCurrServices.DataBind();
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
}