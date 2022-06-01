using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Director_Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void pending_request(object sender,EventArgs e)
    {
        Response.Redirect("Director_Report_Pending.aspx");
    }
    protected void today_request(object sender, EventArgs e)
    {
        Response.Redirect("Director_Report_TodayReq.aspx");
    }
    protected void department_statistics(object sender, EventArgs e)
    {
        Response.Redirect("Director_Report_Stats.aspx");
    }
    protected void processed_request(object sender, EventArgs e)
    {
        Response.Redirect("Director_Report_Processed.aspx");
    }
    protected void request_tracking(object sender, EventArgs e)
    {
        Response.Redirect("Director_Report_Tracking.aspx");
    }
    protected void audit_report(object sender, EventArgs e)
    {
        Response.Redirect("Director_Report_Audit.aspx");
    }
    protected void go_back(object sender, EventArgs e)
    {
        Response.Redirect("Home_Page.aspx");
    }
}