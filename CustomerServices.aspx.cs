using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Industrial_Experts
{
    public partial class Plumbers : System.Web.UI.Page
    {
        string connectionString = ConfigurationManager.ConnectionStrings["Iti"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var ser = Convert.ToString(Session["SelectedServiceName"]);
                if (ser.Equals("Plumber"))
                {

                    void BindPlumberData()
                    {
                      

                        // Query to retrieve data from the database
                        string query = "SELECT [Fname], [Address], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE [Certifications] LIKE '%Plumbing%'";  //[Certifications] = 'Plumbing (One Year)' OR [Certifications] = 'Plumbing (Two Year)' ,,,,SELECT [Fname], [Address], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE CONTAINS (Certifications, 'Plumbing') 

                        using (SqlConnection connection = new SqlConnection(connectionString))
                        {
                            using (SqlCommand command = new SqlCommand(query, connection))
                            {
                                connection.Open();

                                // Execute the query and get the result into a DataTable
                                DataTable dataTable = new DataTable();
                                using (SqlDataReader reader = command.ExecuteReader())
                                {
                                    dataTable.Load(reader);
                                }

                                // Bind the DataTable to the GridView
                                CustomerServices.DataSource = dataTable;
                                CustomerServices.DataBind();
                            }
                        }
                    }

                    BindPlumberData();
                }
                if(ser.Equals("Refrigerator & Air Conditioning Technician"))
                {
                    void BindPlumberData()
                    {
                       

                        // Query to retrieve data from the database
                        string query = "SELECT [Fname], [Address], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE [Certifications] LIKE '%Refrigerator & Air Conditioning Technician%'";  //[Certifications] = 'Plumbing (One Year)' OR [Certifications] = 'Plumbing (Two Year)' ,,,,SELECT [Fname], [Address], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE CONTAINS (Certifications, 'Plumbing') 

                        using (SqlConnection connection = new SqlConnection(connectionString))
                        {
                            using (SqlCommand command = new SqlCommand(query, connection))
                            {
                                connection.Open();

                                // Execute the query and get the result into a DataTable
                                DataTable dataTable = new DataTable();
                                using (SqlDataReader reader = command.ExecuteReader())
                                {
                                    dataTable.Load(reader);
                                }

                                // Bind the DataTable to the GridView
                                CustomerServices.DataSource = dataTable;
                                CustomerServices.DataBind();
                            }
                        }
                    }

                    BindPlumberData();
                }

                if (ser.Equals("Mechanic Motor Vehicle"))
                {

                    void BindPlumberData()
                    {
                        

                        // Query to retrieve data from the database
                        string query = "SELECT [Fname], [Address], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE [Certifications] LIKE '%Mechanic Motor Vehicle%'";  //[Certifications] = 'Plumbing (One Year)' OR [Certifications] = 'Plumbing (Two Year)' ,,,,SELECT [Fname], [Address], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE CONTAINS (Certifications, 'Plumbing') 

                        using (SqlConnection connection = new SqlConnection(connectionString))
                        {
                            using (SqlCommand command = new SqlCommand(query, connection))
                            {
                                connection.Open();

                                // Execute the query and get the result into a DataTable
                                DataTable dataTable = new DataTable();
                                using (SqlDataReader reader = command.ExecuteReader())
                                {
                                    dataTable.Load(reader);
                                }

                                // Bind the DataTable to the GridView
                                CustomerServices.DataSource = dataTable;
                                CustomerServices.DataBind();
                            }
                        }
                    }

                    BindPlumberData();
                }

                if (ser.Equals("Wood Carving"))
                {


                    void BindPlumberData()
                    {
                        
                        // Query to retrieve data from the database
                        string query = "SELECT [Fname], [Address], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE [Certifications] LIKE '%Wood Carving%'";  //[Certifications] = 'Plumbing (One Year)' OR [Certifications] = 'Plumbing (Two Year)' ,,,,SELECT [Fname], [Address], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE CONTAINS (Certifications, 'Plumbing') 

                        using (SqlConnection connection = new SqlConnection(connectionString))
                        {
                            using (SqlCommand command = new SqlCommand(query, connection))
                            {
                                connection.Open();

                                // Execute the query and get the result into a DataTable
                                DataTable dataTable = new DataTable();
                                using (SqlDataReader reader = command.ExecuteReader())
                                {
                                    dataTable.Load(reader);
                                }

                                // Bind the DataTable to the GridView
                                CustomerServices.DataSource = dataTable;
                                CustomerServices.DataBind();
                            }
                        }
                    }

                    BindPlumberData();
                }
                if (ser.Equals("Turner"))
                {


                    void BindPlumberData()
                    {
                        
                        // Query to retrieve data from the database
                        string query = "SELECT [Fname], [Address], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE [Certifications] LIKE '%Turner%'";  //[Certifications] = 'Plumbing (One Year)' OR [Certifications] = 'Plumbing (Two Year)' ,,,,SELECT [Fname], [Address], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE CONTAINS (Certifications, 'Plumbing') 

                        using (SqlConnection connection = new SqlConnection(connectionString))
                        {
                            using (SqlCommand command = new SqlCommand(query, connection))
                            {
                                connection.Open();

                                // Execute the query and get the result into a DataTable
                                DataTable dataTable = new DataTable();
                                using (SqlDataReader reader = command.ExecuteReader())
                                {
                                    dataTable.Load(reader);
                                }

                                // Bind the DataTable to the GridView
                                CustomerServices.DataSource = dataTable;
                                CustomerServices.DataBind();
                            }
                        }
                    }

                    BindPlumberData();
                }
                if (ser.Equals("Machinist"))
                {


                    void BindPlumberData()
                    {
                        
                        // Query to retrieve data from the database
                        string query = "SELECT [Fname], [Address], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE [Certifications] LIKE '%WMachinist%'";  //[Certifications] = 'Plumbing (One Year)' OR [Certifications] = 'Plumbing (Two Year)' ,,,,SELECT [Fname], [Address], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE CONTAINS (Certifications, 'Plumbing') 

                        using (SqlConnection connection = new SqlConnection(connectionString))
                        {
                            using (SqlCommand command = new SqlCommand(query, connection))
                            {
                                connection.Open();

                                // Execute the query and get the result into a DataTable
                                DataTable dataTable = new DataTable();
                                using (SqlDataReader reader = command.ExecuteReader())
                                {
                                    dataTable.Load(reader);
                                }

                                // Bind the DataTable to the GridView
                                CustomerServices.DataSource = dataTable;
                                CustomerServices.DataBind();
                            }
                        }
                    }

                    BindPlumberData();
                }
                if (ser.Equals("Computer Operator & Programming Assistant"))
                {


                    void BindPlumberData()
                    {
                                                // Query to retrieve data from the database
                        string query = "SELECT [Fname], [Address], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE [Certifications] LIKE '%Computer Operator & Programming Assistant%'";  //[Certifications] = 'Plumbing (One Year)' OR [Certifications] = 'Plumbing (Two Year)' ,,,,SELECT [Fname], [Address], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE CONTAINS (Certifications, 'Plumbing') 

                        using (SqlConnection connection = new SqlConnection(connectionString))
                        {
                            using (SqlCommand command = new SqlCommand(query, connection))
                            {
                                connection.Open();

                                // Execute the query and get the result into a DataTable
                                DataTable dataTable = new DataTable();
                                using (SqlDataReader reader = command.ExecuteReader())
                                {
                                    dataTable.Load(reader);
                                }

                                // Bind the DataTable to the GridView
                                CustomerServices.DataSource = dataTable;
                                CustomerServices.DataBind();
                            }
                        }
                    }

                    BindPlumberData();
                }
                if (ser.Equals("Stenographer Secretarial Assistant (One Year)"))
                {

                    void BindPlumberData()
                    {
                        

                        // Query to retrieve data from the database
                        string query = "SELECT [Fname], [Address], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE [Certifications] LIKE '%Stenographer Secretarial Assistant%'";  //[Certifications] = 'Plumbing (One Year)' OR [Certifications] = 'Plumbing (Two Year)' ,,,,SELECT [Fname], [Address], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE CONTAINS (Certifications, 'Plumbing') 

                        using (SqlConnection connection = new SqlConnection(connectionString))
                        {
                            using (SqlCommand command = new SqlCommand(query, connection))
                            {
                                connection.Open();

                                // Execute the query and get the result into a DataTable
                                DataTable dataTable = new DataTable();
                                using (SqlDataReader reader = command.ExecuteReader())
                                {
                                    dataTable.Load(reader);
                                }

                                // Bind the DataTable to the GridView
                                CustomerServices.DataSource = dataTable;
                                CustomerServices.DataBind();
                            }
                        }
                    }

                    BindPlumberData();
                }
                if (ser.Equals("Welder"))
                {

                    void BindPlumberData()
                    {


                        // Query to retrieve data from the database
                        string query = "SELECT [Fname], [Address], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE [Certifications] LIKE '%Welder%'";  //[Certifications] = 'Plumbing (One Year)' OR [Certifications] = 'Plumbing (Two Year)' ,,,,SELECT [Fname], [Address], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE CONTAINS (Certifications, 'Plumbing') 

                        using (SqlConnection connection = new SqlConnection(connectionString))
                        {
                            using (SqlCommand command = new SqlCommand(query, connection))
                            {
                                connection.Open();

                                // Execute the query and get the result into a DataTable
                                DataTable dataTable = new DataTable();
                                using (SqlDataReader reader = command.ExecuteReader())
                                {
                                    dataTable.Load(reader);
                                }

                                // Bind the DataTable to the GridView
                                CustomerServices.DataSource = dataTable;
                                CustomerServices.DataBind();
                            }
                        }
                    }
                    BindPlumberData();
                }
                if (ser.Equals("Mechanic Deisel"))
                {

                    void BindPlumberData()
                    {


                        // Query to retrieve data from the database
                        string query = "SELECT [Fname], [Address], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE [Certifications] LIKE '%Mechanic Deisel%'";  //[Certifications] = 'Plumbing (One Year)' OR [Certifications] = 'Plumbing (Two Year)' ,,,,SELECT [Fname], [Address], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE CONTAINS (Certifications, 'Plumbing') 

                        using (SqlConnection connection = new SqlConnection(connectionString))
                        {
                            using (SqlCommand command = new SqlCommand(query, connection))
                            {
                                connection.Open();

                                // Execute the query and get the result into a DataTable
                                DataTable dataTable = new DataTable();
                                using (SqlDataReader reader = command.ExecuteReader())
                                {
                                    dataTable.Load(reader);
                                }

                                // Bind the DataTable to the GridView
                                CustomerServices.DataSource = dataTable;
                                CustomerServices.DataBind();
                            }
                        }
                    }
                    BindPlumberData();
                }
                if (ser.Equals("Front office Assistant (Women's Wing)"))
                {

                    void BindPlumberData()
                    {


                        // Query to retrieve data from the database
                        string query = "SELECT [Fname], [Address], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE [Certifications] LIKE '%Front office Assistant (Women's Wing)%'";  //[Certifications] = 'Plumbing (One Year)' OR [Certifications] = 'Plumbing (Two Year)' ,,,,SELECT [Fname], [Address], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE CONTAINS (Certifications, 'Plumbing') 

                        using (SqlConnection connection = new SqlConnection(connectionString))
                        {
                            using (SqlCommand command = new SqlCommand(query, connection))
                            {
                                connection.Open();

                                // Execute the query and get the result into a DataTable
                                DataTable dataTable = new DataTable();
                                using (SqlDataReader reader = command.ExecuteReader())
                                {
                                    dataTable.Load(reader);
                                }

                                // Bind the DataTable to the GridView
                                CustomerServices.DataSource = dataTable;
                                CustomerServices.DataBind();
                            }
                        }
                    }
                    BindPlumberData();
                }
                if (ser.Equals("Faction Design & Technology (Women's Wing)"))
                {

                    void BindPlumberData()
                    {


                        // Query to retrieve data from the database
                        string query = "SELECT [Fname], [Address], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE [Certifications] LIKE '%Faction Design & Technology (Women's Wing)%'";  //[Certifications] = 'Plumbing (One Year)' OR [Certifications] = 'Plumbing (Two Year)' ,,,,SELECT [Fname], [Address], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE CONTAINS (Certifications, 'Plumbing') 

                        using (SqlConnection connection = new SqlConnection(connectionString))
                        {
                            using (SqlCommand command = new SqlCommand(query, connection))
                            {
                                connection.Open();

                                // Execute the query and get the result into a DataTable
                                DataTable dataTable = new DataTable();
                                using (SqlDataReader reader = command.ExecuteReader())
                                {
                                    dataTable.Load(reader);
                                }

                                // Bind the DataTable to the GridView
                                CustomerServices.DataSource = dataTable;
                                CustomerServices.DataBind();
                            }
                        }
                    }
                    BindPlumberData();
                }
                if (ser.Equals("Paper Machie"))
                {
                    void BindPlumberData()
                    {


                        // Query to retrieve data from the database
                        string query = "SELECT [Fname], [Address], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE [Certifications] LIKE '%Paper Machie%'";  //[Certifications] = 'Plumbing (One Year)' OR [Certifications] = 'Plumbing (Two Year)' ,,,,SELECT [Fname], [Address], [Email], [Certifications] FROM [ApprovedEmpDetails] WHERE CONTAINS (Certifications, 'Plumbing') 

                        using (SqlConnection connection = new SqlConnection(connectionString))
                        {
                            using (SqlCommand command = new SqlCommand(query, connection))
                            {
                                connection.Open();

                                // Execute the query and get the result into a DataTable
                                DataTable dataTable = new DataTable();
                                using (SqlDataReader reader = command.ExecuteReader())
                                {
                                    dataTable.Load(reader);
                                }

                                // Bind the DataTable to the GridView
                                CustomerServices.DataSource = dataTable;
                                CustomerServices.DataBind();
                            }
                        }
                    }
                    BindPlumberData();
                }

            }
        }

        protected void btnbooking_Click(object sender, EventArgs e)
        {
            
           
        }

        protected void CustomerServices_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Session["SelectedEmpEmail"] = e.CommandArgument.ToString();
            Response.Redirect("CustomerAppointment.aspx");
            
            //Response.Write(emp);  
        }
    }
}
    
