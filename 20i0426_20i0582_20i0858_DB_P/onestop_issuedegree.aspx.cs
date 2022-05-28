using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Globalization;

public partial class onestop_issuedegree : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void goBack_OnClick(object sender,EventArgs e)
    {
        Response.Redirect("onestop_home.aspx");
    }
    protected void submitRequest_OnClick(object sender,EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-ABASTNN\\SQLEXPRESS;Initial Catalog=OneStop;Integrated Security=True;MultipleActiveResultSets=true");
        conn.Open();
        string req = textbox_req.Value;
        DateTime dt= DateTime.Now;
        //checking if its a valid pending degree
        string query1 = "select count(*) from Degree_Issue_Req where ReqID=" + req;
        string query2 = "select count(*) from Pending_Degree_Req where ReqID=" + req;
        SqlCommand cm1=new SqlCommand(query1, conn);
        SqlCommand cm2=new SqlCommand(query2, conn);   
        int check1=(int)cm1.ExecuteScalar();
        int check2 = (int)cm2.ExecuteScalar();
        if(check1>0 && check2 > 0) //valid query
        {
            string query3 = "select status from Req_Tracking_Fyp where ReqID=" + req;
            string query4 = "select status from Req_Tracking_Finance where ReqID=" + req;
            SqlCommand cm3=new SqlCommand(query3, conn);
            SqlCommand cm4=new SqlCommand(query4, conn);   
            SqlDataReader reader1=cm3.ExecuteReader();
            SqlDataReader reader2=cm4.ExecuteReader();
            if(reader1.Read() && reader2.Read())
            {
                string val1 = reader1["status"].ToString();
                string val2= reader2["status"].ToString();
                if(Equals(val1,"PERMIT") && Equals(val2, "PERMIT"))
                {
                    string query5 = "insert into Processed_Degree_Req values(@request,CONVERT(datetime,@dat,103))";
                    SqlCommand cm5=new SqlCommand(query5, conn);
                    cm5.Parameters.AddWithValue("@request", req);
                    cm5.Parameters.AddWithValue("@dat", dt);
                    cm5.ExecuteNonQuery();
                    string query6="delete from Pending_Degree_Req where ReqID="+req;
                    SqlCommand cm6 = new SqlCommand(query6, conn);
                    cm6.ExecuteNonQuery();
                    Response.Write("<script>alert('Successfully Issued Degree, Transcript can be issued for this Student');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Request not permitted by both departments');</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('Empty Status in one of them');</script>");
            }
        }
        else //invalid query
        {
            Response.Write("<script>alert('Not a Valid Pending Query!');</script>");
        }
        conn.Close();
    }
}