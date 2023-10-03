using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Industrial_Experts
{
    public partial class AdminWork : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnconwork_Click(object sender, EventArgs e)
        {
            Session["IsEmp"] = false;
            Response.Redirect("AdminWorkHistory.aspx");
        }

        protected void btnempwork_Click(object sender, EventArgs e)
        {
            Session["IsEmp"] = true;
            Response.Redirect("AdminWorkHistory.aspx");
        }
    }
}