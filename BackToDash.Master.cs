using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Industrial_Experts
{
    public partial class BackToDash : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void BtnBack_Click(object sender, EventArgs e)
        {
            string rol = Session["Role"].ToString();

            if (rol.Equals("Employee")) { Response.Redirect("EmployeeDash.aspx"); }
            if (rol.Equals("Customer")) { Response.Redirect("CustomerDash.aspx"); }
            if (rol.Equals("Admin")) { Response.Redirect("AdminDash.aspx"); }
            if (rol.Equals("Contractor")) { Response.Redirect("ContractorDash.aspx"); }
       
        }
    }
}