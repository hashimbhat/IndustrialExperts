using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Industrial_Experts
{
    public partial class AdminDash : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Pendingbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("PendingRequest.aspx");
        }

        protected void Approvedbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ApprovedRequests.aspx");
        }

        protected void ContReqbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ContractorRequests.aspx");
        }

        protected void ApprovedContReqbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AppContractor.aspx");
        }

        protected void AddServicesbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminAddServices.aspx");
        }

        protected void Recordbtn_Click(object sender, EventArgs e)
        {   
            Response.Redirect("AdminWork.aspx");
        }

        protected void Servicesbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminCurrServ.aspx");
        }

        protected void UpdateEmpbtn_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("AdminUpdateData.aspx");

        }

        protected void UpdateContbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminUpdateCon.aspx");
        }
    }
}
