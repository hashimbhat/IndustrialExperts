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
    public partial class AdminUpdateCon : System.Web.UI.Page
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
                    using (SqlCommand cmd = new SqlCommand("SELECT Fname,Address,Email,PhoneNo,ItiRegNo,ContractorLicNo FROM ApprovedContDetails", con))
                    {

                        con.Open();

                        SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                        DataTable dataTable = new DataTable();
                        adapter.Fill(dataTable);

                        // Now the 'dataTable' contains the data retrieved from the database.         

                        // Bind the DataTable to the GridView
                        UpdateCon.DataSource = dataTable;
                        UpdateCon.DataBind();
                        con.Close();
                        if (dataTable.Rows.Count > 0)
                        {
                            lblmes.Text = "Here is the contractor data";
                        }
                        else
                        {
                            lblmes.Text = "No employee";
                        }

                    }




                }
            }
        }

        protected void UpdateCon_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if ((e.CommandName == "Update"))
            {
                Session["ITI"] = e.CommandArgument.ToString();
                Session["IsEmp"] = false;
                Response.Redirect("AdminCommUpdate.aspx");

            }
            //if (e.CommandName == "Delete")
            //{
            //    using (SqlConnection con = new SqlConnection(str))
            //    {
            //        string iti = e.CommandArgument.ToString();
            //        using (SqlCommand cmd = new SqlCommand("DELETE FROM ApprovedContDetails WHERE ItiRegNo=@iti ", con))
            //        {
            //            cmd.Parameters.AddWithValue("@iti", iti);
            //            con.Open();
            //            int i = cmd.ExecuteNonQuery();
            //            if (i > 1)
            //            {
            //                lblmes.Text = "Contractor Deleted";
            //            }
            //            else lblmes.Text = "Contractor Not Deleted";


            //        }
            //    }


            //}
        }

        protected void btnsearch_Click(object sender, EventArgs e)
        {
            
            string val = txtsearch.Text;
            using (SqlConnection con = new SqlConnection(str))
            {
                con.Open();
                using (SqlCommand cmd = new SqlCommand("SELECT Fname, Address, Email, PhoneNo, ItiRegNo, ContractorLicNo FROM ApprovedContDetails WHERE ItiRegNo = @iti", con))
                {
                    cmd.Parameters.AddWithValue("@iti", val);

                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataTable dataTable = new DataTable();
                    adapter.Fill(dataTable);

                    // Now the 'dataTable' contains the data retrieved from the database.         

                    // Bind the DataTable to the GridView
                    UpdateCon.DataSource = dataTable;
                    UpdateCon.DataBind();
                }
            }


        }

        protected void BtnRefresh_Click(object sender, EventArgs e)
        {
            Bind();
        }

        protected void UpdateCon_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int rowIndex = e.RowIndex; // Get the index of the row being deleted
            string itiRegNo = UpdateCon.DataKeys[rowIndex]["ItiRegNo"].ToString(); // Retrieve ItiRegNo using DataKeys

            using (SqlConnection con = new SqlConnection(str))
            {
                using (SqlCommand cmd = new SqlCommand("DELETE FROM ApprovedContDetails WHERE ItiRegNo=@iti ", con))
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