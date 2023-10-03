using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace Industrial_Experts
{
    public partial class AdminAddServices : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["Iti"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(str);
            SqlCommand cmd = new SqlCommand("INSERT INTO Service(ServiceName) VALUES(@N) ", con);
            cmd.Parameters.AddWithValue("@N",Txtservicename.Text);
     //       cmd.Parameters.AddWithValue("@I",serviceimage.FileBytes);
            con.Open();
                int i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
               lblmes.Text=("Data Uploaded");
                Txtservicename.Text =string.Empty;
            }
            else lblmes.Text = ("Data Not Uploaded");
            con.Close();
        }
    }
}