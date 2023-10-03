using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Industrial_Experts
{
    public partial class EndWork : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["Iti"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            //string rol = Session["Role"].ToString();
            //int empid = Convert.ToInt32(Session["EmpId"]);
            //string sta = "Work Done";
            //string empq = "UPDATE AppointmentsEmp SET Status=@sta Where EmpId=@empid";
            //string conq = "UPDATE AppointmentsCon SET Status=@sta Where EmpId=@empid";
            //using (SqlConnection con = new SqlConnection(str))
            //{
            //    con.Open();
            //    if (rol.Equals("Employee"))
            //    {
            //        using (SqlCommand cmd = new SqlCommand(empq, con)
            //        {

            //      cmd.Parameters.AddWithValue("",);


            //    }
            //    }
            //    if (rol.Equals("Contractor"))
            //    {

            //    }
            //    else
            //    {

            //    }







            //}


            string rol = Session["Role"].ToString();
            int empid = Convert.ToInt32(Session["EmpId"]);
            int conid = Convert.ToInt32(Session["ConId"]);
            string sta = "Work Done";
            string empq = "UPDATE AppointmentsEmp SET Status=@sta WHERE EmpId=@empid";
            string conq = "UPDATE AppointmentsCon SET Status=@sta WHERE ConId=@conid";
            using (SqlConnection con = new SqlConnection(str))
            {
                con.Open();

                if (rol.Equals("Employee"))
                {
                    using (SqlCommand cmd = new SqlCommand(empq, con)) // Corrected the command string
                    {
                        cmd.Parameters.AddWithValue("@sta", sta);
                        cmd.Parameters.AddWithValue("@empid", empid);

                        int i = cmd.ExecuteNonQuery();
                        if (i > 0)
                        {
                            lblmess.Text = "You have completed work";


                        }
                        else
                        {
                            lblmess.Text = "You have not completed work";

                        }
                    }
                }
                else if (rol.Equals("Contractor"))
                {
                    using (SqlCommand cmd = new SqlCommand(conq, con)) // Corrected the command string
                    {
                        cmd.Parameters.AddWithValue("@sta", sta);
                        cmd.Parameters.AddWithValue("@conid", conid);

                      int i=  cmd.ExecuteNonQuery();
                        if (i > 0) {

                            lblmess.Text = "You have completed work";

                        }
                        else
                        {
                            lblmess.Text = "You have not completed work";
                        }

                    }
                }
                else
                {
                    // Handle other cases
                }
            }


        }
    }
}