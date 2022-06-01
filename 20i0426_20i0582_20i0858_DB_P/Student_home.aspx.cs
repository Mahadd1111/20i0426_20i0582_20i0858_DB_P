using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void issueDegree_OnClick(object sender,EventArgs e)
    {
        Response.Redirect("Student_Issue_Request.aspx");
    }
    protected void issueComplaint_OnClick(object sender,EventArgs e)
    {
        Response.Redirect("Student_Complaint.aspx");
    }
    protected void go_back(object sender,EventArgs e)
    {
        Response.Redirect("Home_Page.aspx");
    }
    protected void track_activity(object sender,EventArgs e)
    {
        Response.Redirect("Student_Report_Track.aspx");
    }
}