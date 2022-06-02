using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Onestop_issueTranscript : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void goback_OnClick(object sender,EventArgs e)
    {
        Response.Redirect("onestop_home.aspx");
    }
    protected void submit_token(object sender,EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-ABASTNN\\SQLEXPRESS;Initial Catalog=OneStop;Integrated Security=True;MultipleActiveResultSets=true");
        conn.Open();
        string req = textbox_req.Value;
        DateTime dt = DateTime.Now;
        string query = "select count(*) from Processed_Degree_Req where ReqID=" + req;
        SqlCommand cmd = new SqlCommand(query, conn);
        int result = (int)cmd.ExecuteScalar();
        if (result > 0)
        {
            Response.Write("<script>alert('Transcript Issued');</script>");
        }
        else
        {
            Response.Write("<script>alert('Degree Is not Processed yet');</script>");
        }
    }
}