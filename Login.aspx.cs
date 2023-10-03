using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace Industrial_Experts
{
    public partial class Login : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["Iti"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            
           string si=RoleDrop.SelectedItem.ToString();
            Session["Role"] = si;

            SqlConnection con = new SqlConnection(str);

            if (si.Equals("Employee"))
            {
               SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM ApprovedEmpDetails WHERE Email = @Email AND Password = @Password", con);
                cmd.Parameters.AddWithValue("@Email", Txtemail.Text);
                cmd.Parameters.AddWithValue("@Password", Txtpassword.Text);
                con.Open();
                int res = (int)cmd.ExecuteScalar();


                if (res > 0)
                {
                    Session["Email"] = Txtemail.Text;
                    Response.Redirect("EmployeeDash.aspx");


                }
                else
                {
                    lblmes.Text = "User Not Found";
                }
                con.Close();


            }
           

           else if (si.Equals("Admin"))
            {
                SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Admin WHERE Email = @Email AND Password = @Password", con);
                cmd.Parameters.AddWithValue("@Email", Txtemail.Text);
                cmd.Parameters.AddWithValue("@Password", Txtpassword.Text);
                con.Open();
                int res = (int)cmd.ExecuteScalar();
               
                
                if (res > 0)
                {
                   Session["Email"] = Txtemail.Text;
                    Response.Redirect("AdminDash.aspx");


                }
                else
                {
                    lblmes.Text = "User Not Found";
                }
                con.Close();
            }
           


            else if (si.Equals("Contractor"))
            {


                SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM ApprovedContDetails WHERE Email = @Email AND Password = @Password", con);
                cmd.Parameters.AddWithValue("@Email", Txtemail.Text);
                cmd.Parameters.AddWithValue("@Password", Txtpassword.Text);
                con.Open();
                int res = (int)cmd.ExecuteScalar();


                if (res > 0)
                {
                    Session["Email"] = Txtemail.Text;
                    Response.Redirect("ContractorDash.aspx");


                }
                else
                {
                    lblmes.Text = "User Not Found";
                }
                con.Close();

            }
          

          else  if (si.Equals("Customer"))
            {


                SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM CustomerDetails WHERE Email = @Email AND Password = @Password", con);
                cmd.Parameters.AddWithValue("@Email", Txtemail.Text);
                cmd.Parameters.AddWithValue("@Password", Txtpassword.Text);
                con.Open();
                int res = (int)cmd.ExecuteScalar();


                if (res > 0)
                {
                    Session["Email"] = Txtemail.Text;
                    Response.Redirect("CustomerDash.aspx");


                }
                else
                {
                    lblmes.Text = "User Not Found";
                }
                con.Close();




            }
            else
            {
                lblmes.Text = "Enter your details correctly";
            }
           


        }
            
          
        }
    }
