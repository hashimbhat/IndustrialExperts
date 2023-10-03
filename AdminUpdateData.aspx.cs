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
    public partial class AdminUpdateData : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["Iti"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                Bind();
            }

        }
        protected void Bind()
        {
            if (Session["Email"] != null)
            {

                using (SqlConnection con = new SqlConnection(str))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT Fname,Address,Email,PhoneNo,ItiRegNo,StudentId,Certifications FROM ApprovedEmpDetails", con))
                    {

                        con.Open();

                        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                        DataTable dataTable = new DataTable();
                        adapter.Fill(dataTable);

                        // Now the 'dataTable' contains the data retrieved from the database.         

                        // Bind the DataTable to the GridView
                        UpdateEmp.DataSource = dataTable;
                        UpdateEmp.DataBind();
                        con.Close();
                        if (dataTable.Rows.Count > 0)
                        {
                            lblmes.Text = "Here is the employee data";
                        }
                        else
                        {
                            lblmes.Text = "No employee";
                        }

                    }




                }
            }
        }
        protected void UpdateEmp_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if((e.CommandName == "Update"))
            {
                Session["ITI"] = e.CommandArgument.ToString();
                Session["IsEmp"] = true;
                Response.Redirect("AdminCommUpdate.aspx");

            }
            //if(e.CommandName == "Delete")
            //{
            //    using (SqlConnection con = new SqlConnection(str))
            //    {
            //        string iti =e.CommandArgument.ToString();
            //        using(SqlCommand cmd = new SqlCommand("DELETE FROM ApprovedEmpDetails WHERE ItiRegNo=@iti ", con))
            //        {
            //            cmd.Parameters.AddWithValue("@iti", iti);
            //            con.Open();
            //            int i =cmd.ExecuteNonQuery();
            //            if (i > 1)
            //            {
            //                lblmes.Text = "Employee Deleted";
            //                Bind();
            //            }
            //            else lblmes.Text = "Employee Not Deleted";


            //        }
            //    }

            //}
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
           
            string val = txtsearch.Text;
            using (SqlConnection con = new SqlConnection(str))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT Fname, Address, Email, PhoneNo, ItiRegNo, StudentId, Certifications FROM ApprovedEmpDetails WHERE ItiRegNo = @iti", con))
                {
                    cmd.Parameters.AddWithValue("@iti", val);
                    con.Open();

                    SqlDataAdapter adapter = new SqlDataAdapter();
                    adapter.SelectCommand = cmd; // Set the SelectCommand's connection
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    // Now the 'dataTable' contains the data retrieved from the database.         

                    // Bind the DataTable to the GridView
                    UpdateEmp.DataSource = dataTable;
                    UpdateEmp.DataBind();
                }
            }

        }

        protected void BtnRefresh_Click(object sender, EventArgs e)
        {
            Bind();

        }

        protected void UpdateEmp_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int rowIndex = e.RowIndex; // Get the index of the row being deleted
            string itiRegNo = UpdateEmp.DataKeys[rowIndex]["ItiRegNo"].ToString(); // Retrieve ItiRegNo using DataKeys

            using (SqlConnection con = new SqlConnection(str))
            {
                using (SqlCommand cmd = new SqlCommand("DELETE FROM ApprovedEmpDetails WHERE ItiRegNo=@iti ", con))
                {
                    cmd.Parameters.AddWithValue("@iti", itiRegNo);
                    con.Open();
                    int i = cmd.ExecuteNonQuery();
                    if (i > 0)
                    {
                        lblmes.Text = "Employee Deleted";
                        Bind(); // Refresh the GridView after deletion
                    }
                    else
                    {
                        lblmes.Text = "Employee Not Deleted";
                    }
                }
            }
        }
    }
}