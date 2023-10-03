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
    public partial class ChangeAddress : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["Iti"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {


            string em = Convert.ToString(Session["Email"]);
            string rol = Convert.ToString(Session["Role"]);
            if (rol.Equals("Employee"))
            {

                using (SqlConnection con = new SqlConnection(str))
                {
                    using (SqlCommand cmd = new SqlCommand("UPDATE ApprovedEmpDetails SET Address=@ah WHERE Email=@em", con))
                    {
                        cmd.Parameters.AddWithValue("@ah", TxtAddress.Text);

                        cmd.Parameters.AddWithValue("@em", em);
                        con.Open();
                        int i = cmd.ExecuteNonQuery();
                        if (i > 0)
                        {
                            Lblmes.Text = "Data Updated";

                        }
                        else Lblmes.Text = "Data Not Updated";
                        con.Close();

                    }


                }

            }
            if (rol.Equals("Contractor"))
            {
                using (SqlConnection con = new SqlConnection(str))
                {
                    using (SqlCommand cmd = new SqlCommand("UPDATE ApprovedContDetails SET Address=@ah WHERE Email=@em", con))
                    {
                        cmd.Parameters.AddWithValue("@ah", TxtAddress.Text);

                        cmd.Parameters.AddWithValue("@em", em);
                        con.Open();
                        int i = cmd.ExecuteNonQuery();
                        if (i > 0)
                        {
                            Lblmes.Text = "Data Updated";

                        }
                        else Lblmes.Text = "Data Not Updated";
                        con.Close();


                    }


                }

            }
            if (rol.Equals("Customer"))
            {
                using (SqlConnection con = new SqlConnection(str))
                {
                    using (SqlCommand cmd = new SqlCommand("UPDATE CustomerDetails SET Address=@ah WHERE Email=@em", con))
                    {
                        cmd.Parameters.AddWithValue("@ah", TxtAddress.Text);

                        cmd.Parameters.AddWithValue("@em", em);
                        con.Open();
                        int i = cmd.ExecuteNonQuery();
                        if (i > 0)
                        {
                            Lblmes.Text = "Data Updated";

                        }
                        else Lblmes.Text = "Data Not Updated";
                        con.Close();


                    }


                }

            }





        }
    

    protected void btnback_Click(object sender, EventArgs e)
    {

            string rol = Convert.ToString(Session["Role"]);
            if (rol.Equals("Employee"))
            {
                Response.Redirect("EmployeeDash.aspx");
            }
            if (rol.Equals("Customer"))
            {
                Response.Redirect("CustomerDash.aspx");
            }
            if (rol.Equals("Contractor"))
            {
                Response.Redirect("ContractorDash.aspx");
            }



        }
}
}
