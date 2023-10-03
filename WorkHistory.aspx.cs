using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Industrial_Experts
{
    public partial class WorkHistory : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["Iti"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {  
                string rol = Session["Role"].ToString();
                string comem = Session["Email"].ToString();
                string sta = "Work Done";
                DataTable data = new DataTable();

               
                using (SqlConnection con =new SqlConnection(str))
                {
                    con.Open();
                    if (rol.Equals("Employee"))
                    {
                       
                        
                        string emp = "SELECT Fname,PhoneNo,Email,WorkDesc,AddressSite,StartDate,Amount FROM AppointmentsEmp WHERE EmpEmail=@emp AND Status=@sta";
                        using (SqlCommand cmd = new SqlCommand(emp, con))
                        {
                            cmd.Parameters.AddWithValue("@sta",sta);
                            cmd.Parameters.AddWithValue("@emp", comem);
                            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                            adapter.Fill(data);
                            WorkDoneGrid.DataSource = data;
                            WorkDoneGrid.DataBind();

                        }


                    }

                   
                    

                    else  if (rol.Equals("Contractor"))
                    {
                       
                        string cont = "SELECT Fname,PhoneNo,Email,WorkDesc,AddressSite,StartDate,Amount FROM AppointmentsCon WHERE EmpEmail=@emp AND Status=@sta ";
                        using (SqlCommand cmd = new SqlCommand(cont, con))
                        {

                            cmd.Parameters.AddWithValue("@sta", sta);
                            cmd.Parameters.AddWithValue("@emp", comem);
                            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                            adapter.Fill(data);
                            WorkDoneGrid.DataSource = data;
                            WorkDoneGrid.DataBind();

                        }

                    }
                    else if (rol.Equals("Admin"))
                    {






                    }

                  

                }




            }
        }
    }
}