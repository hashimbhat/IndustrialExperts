﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Industrial_Experts
{
    public partial class Home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnhome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    }
}