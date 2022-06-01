using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Fyp_Report_Results : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("fyp_home.aspx");
    }
}