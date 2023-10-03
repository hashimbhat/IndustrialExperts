using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Runtime.ConstrainedExecution;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Industrial_Experts
{
    public partial class EmpAddCer : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["Iti"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            string em = Session["Email"].ToString();


         

                using (SqlConnection con = new SqlConnection(str))
                {
                    using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Employee WHERE Certifications LIKE @cer AND Email = @em", con))
                    {
                        List<string> selectedCertifications = new List<string>();
                        foreach (ListItem certificationItem in Listcert.Items)
                        {
                            if (certificationItem.Selected)
                            {
                                selectedCertifications.Add(certificationItem.Text);
                            }
                        }

                        string certificationsString = string.Join(", ", selectedCertifications);
                        cmd.Parameters.AddWithValue("@cer", "%" + certificationsString + "%");
                        cmd.Parameters.AddWithValue("@em", em);
                        con.Open();
                        int i = (int)cmd.ExecuteScalar();
                        con.Close();
                        if (i > 0)
                        {
                            string fetchedCertifications = "";

                            using (SqlConnection conn = new SqlConnection(str))
                            {
                                using (SqlCommand cd = new SqlCommand("SELECT Certifications FROM Employee WHERE Email = @em", conn))
                                {
                                    cd.Parameters.AddWithValue("@em", em);
                                    conn.Open();
                                    using (SqlDataReader res = cd.ExecuteReader())
                                    {
                                        if (res.Read())
                                        {
                                            fetchedCertifications = res["Certifications"].ToString();
                                        }
                                    }
                                }
                            }

                            using (SqlConnection connn = new SqlConnection(str))
                            {
                                using (SqlCommand cmdd = new SqlCommand("UPDATE ApprovedEmpDetails SET Certifications = @cer WHERE Email = @em", connn))
                                {
                                    cmdd.Parameters.AddWithValue("@em", em);
                                    cmdd.Parameters.AddWithValue("@cer", fetchedCertifications);
                                    connn.Open();
                                    int ii = cmdd.ExecuteNonQuery();
                                    if (ii > 0)
                                    {
                                        Lblmess.Text = "Certificated Uploaded";
                                    }
                                }
                            }
                        }
                        else
                        {
                            Lblmess.Text = "No Data Found";
                        }
                    }
                }
            }








            //using (SqlConnection con = new SqlConnection(str))
            //{                                            // 
            //    using (SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM Employee WHERE Certifications LIKE @cer AND Email = @em", con))
            //    {

            //        List<string> selectedCertifications = new List<string>();
            //        foreach (ListItem certificationItem in Listcert.Items)
            //        {
            //            if (certificationItem.Selected)
            //            {
            //                selectedCertifications.Add(certificationItem.Text);
            //            }
            //        }

            //        string certificationsString = string.Join(", ", selectedCertifications);
            //        cmd.Parameters.AddWithValue("@cer", certificationsString);
            //        cmd.Parameters.AddWithValue("@em", em);
            //        con.Open();
            //        int i = (int)cmd.ExecuteScalar();
            //        con.Close();
            //        if (i > 0)
            //        {
            //            using (SqlConnection conn = new SqlConnection(str))
            //            {
            //                using (SqlCommand cd = new SqlCommand("SELECT Certifications  FROM Employee WHERE Email=@em", conn))
            //                {
            //                    cd.Parameters.AddWithValue("@em", em);

            //                    using (SqlDataReader res = cd.ExecuteReader())
            //                    {
            //                        if (res.Read())
            //                        {

            //                            string cer = res["Certifications"].ToString();

            //                            // Close the first SqlDataReader
            //                            res.Close();
            //                            using (SqlConnection connn = new SqlConnection(str))
            //                            {
            //                                using (SqlCommand cmdd = new SqlCommand("UPDATE ApprovedEmpDetails WHERE Email=@em", connn))
            //                                {
            //                                    cmdd.Parameters.AddWithValue("@em", em);
            //                                    int ii = cmdd.ExecuteNonQuery();
            //                                    if (ii > 0)
            //                                    {
            //                                        Lblmess.Text = "Certificated Uploaded";


            //                                    }

            //                                }

            //                            }




            //                        }





            //                    }



            //                }
            //            }

            //        }
            //        else
            //        {
            //            Lblmess.Text = "No Data Found";
            //        }
            //    }
            //}
        }
    }
