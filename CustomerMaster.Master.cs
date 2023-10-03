using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Industrial_Experts
{
    public partial class CustomerMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnhome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void btnAppSta_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustAppSta.aspx");
        }

        protected void btnSchedule_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustScheCon.aspx");
        }

        protected void btnAcceptApp_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustWorkStarted.aspx");
        }

        protected void btnContractStatus_Click(object sender, EventArgs e)
        {
            Response.Redirect("ConAppSta.aspx");

        }

        protected void btnAcceptCon_Click(object sender, EventArgs e)
        {
            Response.Redirect("ConWorkStarted.aspx");
        }

        protected void btnprofile_Click(object sender, EventArgs e)
        {
            Response.Redirect("CusProfile.aspx");
        }

        protected void btnWorkHistory_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustWork.aspx");
        }
    }
}