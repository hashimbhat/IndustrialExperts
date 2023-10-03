using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Industrial_Experts
{
    public partial class index : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        protected void empbtn_Click(object sender, EventArgs e)
        {

        }

        protected void cusbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomerSingup.aspx");
        }

        protected void empbtn_Click1(object sender, EventArgs e)
        {
            Response.Redirect("EmployeeSignup.aspx");

        }

        protected void conbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContractorSignup.aspx");
        }
    }
}
