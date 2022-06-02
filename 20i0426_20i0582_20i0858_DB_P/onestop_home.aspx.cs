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
    protected void generateToken_OnClick(object sender,EventArgs e)
    {
        Response.Redirect("onestop_generate_token.aspx");
    }
    protected void issueDegree_OnClick(object sender,EventArgs e)
    {
        Response.Redirect("onestop_issuedegree.aspx");
    }
    protected void go_back(object sender,EventArgs e)
    {
        Response.Redirect("Home_Page.aspx");
    }
    protected void new_requests(object sender, EventArgs e)
    {
        Response.Redirect("Onestop_Report_NewReq.aspx");
    }
    protected void all_requests(object sender, EventArgs e)
    {
        Response.Redirect("Onestop_Report_AllReq.aspx");
    }
    protected void issue_transcript(object sender, EventArgs e)
    {
        Response.Redirect("Onestop_IssueTranscript.aspx");
    }
    protected void request_tracking(object sender, EventArgs e)
    {
        Response.Redirect("Onestop_Report_Tracking.aspx");
    }
}