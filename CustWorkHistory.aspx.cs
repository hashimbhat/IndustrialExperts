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
    public partial class CustWorkHistory : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["Iti"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                string rol = Session["Role"].ToString();
                string comem = Session["Email"].ToString();
                string sta = "Work Done";
                DataTable data = new DataTable();
                using (SqlConnection con = new SqlConnection(str))
                {
                    con.Open();
                    if (rol.Equals("Customer"))
                    {
                        bool isemp = Convert.ToBoolean(Session["IsEmp"]);
                        if (isemp == true)
                        {
                            string emp = "SELECT EmpEmail,WorkDesc,AddressSite,StartDate,Amount FROM AppointmentsEmp WHERE Email=@emp AND Status=@sta";
                            using (SqlCommand cmd = new SqlCommand(emp, con))
                            {
                                cmd.Parameters.AddWithValue("@sta", sta);
                                cmd.Parameters.AddWithValue("@emp", comem);
                                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                                adapter.Fill(data);
                                WorkDoneGrid.DataSource = data;
                                WorkDoneGrid.DataBind();

                            }
                        }
                        else if (isemp == false)
                        {
                            string cont = "SELECT EmpEmail,WorkDesc,AddressSite,StartDate,Amount FROM AppointmentsCon WHERE Email=@emp AND Status=@sta ";
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
                    }





                    }




                }
        }
    }
}