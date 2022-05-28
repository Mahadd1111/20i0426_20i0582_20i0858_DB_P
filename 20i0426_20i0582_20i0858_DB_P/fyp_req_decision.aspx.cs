using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class fyp_req_decision : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void goBack_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("fyp_home.aspx");
    }
    protected void submitRequest_OnClick(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-ABASTNN\\SQLEXPRESS;Initial Catalog=OneStop;Integrated Security=True;MultipleActiveResultSets=true");
        conn.Open();
        string req = textbox_req.Value;
        DateTime dt= DateTime.Now;
        string status = textbox_status.Text;
        string reason = textbox_reason.Value;
        //First we need to Check that this is a Valid Pending Request 
        string query1 = "select count(*) from Degree_Issue_Req where ReqID=" + req;
        string query2 = "select count(*) from Pending_Degree_Req where ReqID=" + req;
        SqlCommand cm1=new SqlCommand(query1, conn);
        SqlCommand cm2=new SqlCommand(query2, conn);
        int check1 = (int)cm1.ExecuteScalar();
        int check2 = (int)cm2.ExecuteScalar();
        if(check1>0 && check2 > 0) //Valid Pending Request
        {
            //Now check if its already in req_tracking_fyp -> if it is we will update else we will insert
            string query6 = "select count(*) from Req_Tracking_Fyp where ReqID=" + req;
            SqlCommand cm6=new SqlCommand(query6, conn);
            int check3=(int)cm6.ExecuteScalar();
            if (check3 <= 0) // we will need to insert as it is not present
            {
                if (Equals(status, "PERMIT"))
                {
                    //getting RollNo of student who issued the Request
                    string query3 = "select RollNo from Degree_Issue_Req where ReqID=" + req;
                    SqlCommand cm3 = new SqlCommand(query3, conn);
                    SqlDataReader reader1 = cm3.ExecuteReader();
                    if (reader1.Read())
                    {
                        string rno = reader1["RollNo"].ToString();
                        //Now checking his/her FYP Grade
                        string query4 = "select grade from Student_Fyp where RollNo='" + rno + "'";
                        SqlCommand cm4 = new SqlCommand(query4, conn);
                        SqlDataReader reader2 = cm4.ExecuteReader();
                        if (reader2.Read())
                        {
                            string grade = reader2["Grade"].ToString();
                            if (Equals(grade, "F"))
                            {
                                Response.Write("<script>alert('Student has got a failing grade, cannot forward confirmation');</script>");
                            }
                            else
                            {
                                //Save values into Database
                                string query5 = "insert into Req_Tracking_Fyp values(" + req + ",'" + status + "','" + reason + "',CONVERT(datetime,'" + dt + "',103))";
                                SqlCommand cm5 = new SqlCommand(query5, conn);
                                cm5.ExecuteNonQuery();
                            }
                        }
                    }
                }
                else if (Equals(status, "DO NOT PERMIT"))
                {
                    string query7= "insert into Req_Tracking_Fyp values(" + req + ",'" + status + "','" + reason + "',' ')";
                    SqlCommand cm7=new SqlCommand(query7, conn);
                    cm7.ExecuteNonQuery();
                }
                Response.Write("<script>alert('Successfully Inserted!');</script>");
            }
            else // we will need to update an existing record
            {
                string query8 = "update Req_Tracking_Fyp set status='" + status + "' where ReqID=" + req;
                string query9 = "update Req_Tracking_Fyp set Reason='" + reason + "' where ReqID=" + req;
                SqlCommand cm8 = new SqlCommand(query8,conn);
                SqlCommand cm9=new SqlCommand(query9,conn); 
                cm8.ExecuteNonQuery();
                cm9.ExecuteNonQuery();
                if (Equals(status, "PERMIT"))
                {
                    string query10 = "update Req_Tracking_Fyp set Accept_date=CONVERT(datetime,'" + dt + "',103) where ReqID=" + req;
                    SqlCommand cm10=new SqlCommand (query10,conn);  
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