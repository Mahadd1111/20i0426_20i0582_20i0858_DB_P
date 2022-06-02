using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class onestop_generate_token : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void goback_OnClick(object sender,EventArgs e)
    {
        Response.Redirect("onestop_home.aspx");
    }
    protected void submitToken_OnClick(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-ABASTNN\\SQLEXPRESS;Initial Catalog=OneStop;Integrated Security=True;MultipleActiveResultSets=true");
        conn.Open();
        string req = textbox_req.Value;
        DateTime dt=DateTime.Now;
        if (RadioButton1.Checked == true)
        {
            //first see if this request exists in degree_issue_req table
            string query1 = "select count(*) from Degree_Issue_Req where ReqID=" + req;
            SqlCommand cm1=new SqlCommand(query1, conn);
            int result=(int)cm1.ExecuteScalar();
            if (result > 0)
            {
                //insert new request into pending request
                //string query2 = "insert into Pending_Degree_Req values(" + req + ",CONVERT(datetime,'" + dt + "',103))";
                string query2 = "insert into Pending_Degree_Req values(@request,CONVERT(datetime,@dat,103))";
                SqlCommand cm2=new SqlCommand(query2, conn);
                cm2.Parameters.AddWithValue("@request", req);
                cm2.Parameters.AddWithValue("@dat",dt );
                cm2.ExecuteNonQuery();
                //delete this from new request
                string query3 = "delete from New_Degree_Req where ReqID=" + req;
                SqlCommand cm3=new SqlCommand(query3, conn);
                cm3.ExecuteNonQuery();
                //set initial values for tracking of this pending request
                string query4 = "insert into Req_Tracking_Fyp values(" + req + ",'DO NOT PERMIT','UNRESOLVED',NULL)";
                string query5= "insert into Req_Tracking_Finance values(" + req + ",'DO NOT PERMIT','UNRESOLVED',NULL)";
                SqlCommand cm4 = new SqlCommand(query4, conn);
                SqlCommand cm5 = new SqlCommand(query5, conn);
                cm4.ExecuteNonQuery();
                cm5.ExecuteNonQuery();
                //Lets set time for when token was generated for department_statistics table
                string query6 = "update Department_Statistics set token_time=Convert(datetime,'" + dt + "',103) where ReqID="+req;
                SqlCommand cm6=new SqlCommand(query6, conn);    
                cm6.ExecuteNonQuery();
            }
            else
            {
                Response.Write("<script>alert('This Request ID Does not exist');</script>");
            }

        }
        else
        {
            Response.Write("<script>alert('Please Confirm to Continue');</script>");
        }
        conn.Close();
    }
}