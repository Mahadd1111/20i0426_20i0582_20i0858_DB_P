using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void handleRequest_OnClick(object sender,EventArgs e)
    {
        Response.Redirect("finance_req_decision.aspx");
    }
    protected void go_back(object sender,EventArgs e)
    {
        Response.Redirect("Home_Page.aspx");
    }
    protected void view_requests(object sender, EventArgs e)
    {
        Response.Redirect("Finance_Report_Pending.aspx");
    }
    protected void outstanding_fees(object sender, EventArgs e)
    {
        Response.Redirect("Finance_Report_OutstandingFees.aspx");
    }
    protected void issuance_fees(object sender, EventArgs e)
    {
        Response.Redirect("Finance_Report_DegreeFees.aspx");
    }
}