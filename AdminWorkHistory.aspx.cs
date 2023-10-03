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
    public partial class AdminWorkHistory : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["Iti"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string rol = Session["Role"].ToString();
                
                string sta = "Work Done";
                DataTable data = new DataTable();
                using (SqlConnection con = new SqlConnection(str))
                {
                    con.Open();
                    if (rol.Equals("Admin"))
                    {
                        bool isemp = Convert.ToBoolean(Session["IsEmp"]);
                        if (isemp == true)
                        {
                            string emp = "SELECT Email,EmpEmail,WorkDesc,AddressSite,StartDate,Amount,Status FROM AppointmentsEmp WHERE Status=@sta";
                            using (SqlCommand cmd = new SqlCommand(emp, con))
                            {
                                cmd.Parameters.AddWithValue("@sta", sta);
                              
                                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                                adapter.Fill(data);
                                AdminWorkDoneGrid.DataSource = data;
                                AdminWorkDoneGrid.DataBind();

                            }
                        }
                        else if (isemp == false)
                        {
                            string cont = "SELECT Email,EmpEmail,WorkDesc,AddressSite,StartDate,Amount,Status FROM AppointmentsCon WHERE Status=@sta ";
                            using (SqlCommand cmd = new SqlCommand(cont, con))
                            {

                                cmd.Parameters.AddWithValue("@sta", sta);
                              
                                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                                adapter.Fill(data);
                                AdminWorkDoneGrid.DataSource = data;
                                AdminWorkDoneGrid.DataBind();

                            }


                        }
                    }





                }




            }
        }
    }
}