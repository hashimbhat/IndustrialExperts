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
    public partial class ChangePassword : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["Iti"].ConnectionString;
        bool confirmed = false;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string rol = Session["Role"].ToString();
            string em = Session["Email"].ToString();

            using (SqlConnection con =new SqlConnection(str))
            {     
                
                string pas= Txtcurpass.Text;
                if (rol.Equals("Customer"))
                {

                    using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM CustomerDetails WHERE Email=@email AND Password=@pass", con))
                    {
                        con.Open();
                        cmd.Parameters.AddWithValue("@email", em);
                        cmd.Parameters.AddWithValue("@pass", pas);
                        Object sc = cmd.ExecuteScalar();
                        if (sc != null)
                        {
                            confirmed = true;

                        }
                    }


                }
                else if (rol.Equals("Employee"))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM ApprovedEmpDetails WHERE Email=@email AND Password=@pass", con))
                    {
                        con.Open();
                        cmd.Parameters.AddWithValue("@email", em);
                        cmd.Parameters.AddWithValue("@pass", pas);
                        Object sc = cmd.ExecuteScalar();
                        if (sc != null)
                        {
                            confirmed = true;

                        }
                    }
                }
                else if (rol.Equals("Employee"))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM ApprovedConDetails WHERE Email=@email AND Password=@pass", con))
                    {
                        con.Open();
                        cmd.Parameters.AddWithValue("@email", em);
                        cmd.Parameters.AddWithValue("@pass", pas);
                        Object sc = cmd.ExecuteScalar();
                        if (sc != null)
                        {
                            confirmed = true;

                        }
                    }
                }




            }
            if (confirmed)
            {

                using (SqlConnection con = new SqlConnection(str))
                {


                    if (rol.Equals("Customer"))
                    {

                        con.Open();
                        using (SqlCommand cmd = new SqlCommand("UPDATE CustomerDetails SET Password=@pass WHERE Email=@email ", con))
                        {
                            string conpass = Txtconfirmpass.Text;
                            cmd.Parameters.AddWithValue("@email", em);
                            cmd.Parameters.AddWithValue("@pass", conpass);
                            int i = cmd.ExecuteNonQuery();
                            if (i > 0)
                            {
                                lblmes.Text = "Password updated please login again";
                            }
                            else
                            {
                                lblmes.Text = "Password  not updated, please enter correct password";
                            }



                        }







                    }
                    else if (rol.Equals("Employee"))
                    {



                        con.Open();
                        using (SqlCommand cmd = new SqlCommand("UPDATE ApprovedEmpDetails SET Password=@pass WHERE Email=@email ", con))
                        {
                            string conpass = Txtconfirmpass.Text;
                            cmd.Parameters.AddWithValue("@email", em);
                            cmd.Parameters.AddWithValue("@pass", conpass);
                            int i = cmd.ExecuteNonQuery();
                            if (i > 0)
                            {
                                lblmes.Text = "Password updated please login again";
                            }
                            else
                            {
                                lblmes.Text = "Password  not updated, please enter correct password";
                            }



                        }





                    }
                    else if (rol.Equals("Contractor"))
                    {

                        con.Open();
                        using (SqlCommand cmd = new SqlCommand("UPDATE ApprovedConDetails SET Password=@pass WHERE Email=@email ", con))
                        {
                            string conpass = Txtconfirmpass.Text;
                            cmd.Parameters.AddWithValue("@email", em);
                            cmd.Parameters.AddWithValue("@pass", conpass);
                            int i = cmd.ExecuteNonQuery();
                            if (i > 0)
                            {
                                lblmes.Text = "Password updated please login again";
                            }
                            else
                            {
                                lblmes.Text = "Password  not updated, please enter correct password";
                            }



                        }






                    }

                }
                  






            }
            else lblmes.Text = "Incorrect Password";
        }
    }
}