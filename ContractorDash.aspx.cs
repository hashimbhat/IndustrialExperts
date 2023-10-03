using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Industrial_Experts
{
    public partial class ContractorDash : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btncontrequests_Click(object sender, EventArgs e)
        {
            Response.Redirect("ConAppointmentReq.aspx");
        }

        protected void btncontstatus_Click(object sender, EventArgs e)
        {
            Response.Redirect("ConSta.aspx");
        }

        protected void btnprofile_Click(object sender, EventArgs e)
        {
            Response.Redirect("ConProfile.aspx");
        }

        protected void btnworkhistory_Click(object sender, EventArgs e)
        {
            Response.Redirect("WorkHistory.aspx");
        }
    }
}