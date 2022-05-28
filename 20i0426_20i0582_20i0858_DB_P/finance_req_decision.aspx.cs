using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class finance_req_decision : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void goBack_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("finance_home.aspx");
    }
    protected void submitRequest_OnClick(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-ABASTNN\\SQLEXPRESS;Initial Catalog=OneStop;Integrated Security=True;MultipleActiveResultSets=true");
        conn.Open();
        string req = textbox_req.Value;
        DateTime dt=DateTime.Now;
        string status = textbox_status.Text;
        string reason = textbox_reason.Value;
        //First we need to check if this is a valid pending request
        string query1 = "select count(*) from Degree_Issue_Req where ReqID=" + req;
        string query2 = "select count(*) from Pending_Degree_Req where ReqID=" + req;
        SqlCommand cm1 = new SqlCommand(query1, conn);
        SqlCommand cm2 = new SqlCommand(query2, conn);
        int check1 = (int)cm1.ExecuteScalar();
        int check2 = (int)cm2.ExecuteScalar();
        if(check1>0 && check2 > 0) //valid Pending Request
        {
            //Now check if its already in req_tracking_finance -> if it is we will update else we will insert
            string query6 = "select count(*) from Req_Tracking_Finance where ReqID=" + req;
            SqlCommand cm6 = new SqlCommand(query6, conn);
            int check3 = (int)cm6.ExecuteScalar();
            if (check3 <= 0) // we will need to insert
            {
                //getting RollNo of student who issued the Request
                string getrno="select RollNo from Degree_Issue_Req where ReqID="+req;
                SqlCommand rnocm=new SqlCommand(getrno, conn);
                SqlDataReader reader = rnocm.ExecuteReader();
                if (reader.Read())
                {
                    string rno = reader["RollNo"].ToString();
                    //we need to see if this RollNo has paid Degree issuance fees and has no outstanding fees
                    string query4 = "select count(*) from Degree_Issue_Fees where status='PAID' and RollNo='" + rno + "'";
                    string query5 = "select count(*) from Outstanding_fees where RollNo='" + rno + "'";
                    SqlCommand cm4 = new SqlCommand(query4, conn);
                    SqlCommand cm5 = new SqlCommand(query5, conn);
                    int check4 = (int)cm4.ExecuteScalar();
                    int check5 = (int)cm5.ExecuteScalar();
                    if (check4 > 0 && check5 <= 0) //student is eligible
                    {
                        if (Equals(status, "PERMIT"))
                        {
                            //Save values into Database
                            string query7 = "insert into Req_Tracking_Finance values(" + req + ",'" + status + "','" + reason + "',CONVERT(datetime,'" + dt + "',103))";
                            SqlCommand cm7 = new SqlCommand(query7, conn);
                            cm7.ExecuteNonQuery();
                        }
                        else if (Equals(status, "DO NOT PERMIT"))
                        {
                            //Save values into Database without Accept_date
                            string query8 = "insert into Req_Tracking_Finance values(" + req + ",'" + status + "','" + reason + "',' ')";
                            SqlCommand cm8 = new SqlCommand(query8, conn);
                            cm8.ExecuteNonQuery();
                        }
                        Response.Write("<script>alert('Successfully Inserted!');</script>");
                    }
                    else
                    {
                        //Student isnt eligible
                        Response.Write("<script>alert('Student has an outstanding fees or has not paid the issuance fees');</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Dows not have rows');</script>");
                }
            }
            else //we will need to update
            {
                string query11 = "update Req_Tracking_Finance set status='" + status + "' where ReqID=" + req;
                string query9 = "update Req_Tracking_Finance set Reason='" + reason + "' where ReqID=" + req;
                SqlCommand cm11 = new SqlCommand(query11, conn);
                SqlCommand cm9 = new SqlCommand(query9, conn);
                cm11.ExecuteNonQuery();
                cm9.ExecuteNonQuery();
                if (Equals(status, "PERMIT"))
                {
                    string query10 = "update Req_Tracking_Finance set Accept_date=CONVERT(datetime,'" + dt + "',103) where ReqID=" + req;
                    SqlCommand cm10 = new SqlCommand(query10, conn);
                    cm10.ExecuteNonQuery();
                }
                Response.Write("<script>alert('Successfully Updated!');</script>");
            }
        }
        else
        {
            //Not a Valid Pending Request
            Response.Write("<script>alert('Entered Request is not a Valid Pending Request');</script>");
        }
        conn.Close();
    }
}