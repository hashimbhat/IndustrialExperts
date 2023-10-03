using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Industrial_Experts
{
    public partial class CustDash : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnselectservice_Click(object sender, EventArgs e)
        {



            Button btn = (Button)sender;
            string serviceName = btn.Text;

         
            Session["SelectedServiceName"] = serviceName;

            Response.Redirect("CustomerServices.aspx");
       

        }

      
    }
}

