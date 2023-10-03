using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Industrial_Experts
{
    public partial class EmployeeDash : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnapprequests_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmpAppointmentReq.aspx");
        }

        protected void btnappstatus_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmpAppSta.aspx");
        }

        protected void btnprofile_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmpProfile.aspx");

        }

        protected void btnaddcert_Click(object sender, EventArgs e)
        {
            Response.Redirect("EmpAddCer.aspx");
        }

        protected void btnworkhistory_Click(object sender, EventArgs e)
        {
            Response.Redirect("WorkHistory.aspx");
        }

        protected void btncngpass_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChangePassword.aspx");
        }
    }
}