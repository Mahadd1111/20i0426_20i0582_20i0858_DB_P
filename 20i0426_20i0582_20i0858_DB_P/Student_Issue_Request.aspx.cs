using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Globalization;

public partial class Student_Issue_Request : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submitIssue_OnClick(object sender,EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-ABASTNN\\SQLEXPRESS;Initial Catalog=OneStop;Integrated Security=True;MultipleActiveResultSets=true");
        conn.Open();
        SqlCommand cm;
        string rno = textbox_rno.Value;
        string degree = textbox_degree.Text;
        DateTime dt= DateTime.Now;
        string major = textbox_major.Text;
        string year = textbox_year.Value;
        //check if roll no exists in student
        string query = "select count(*) from Student where RollNo like @u";
        cm = new SqlCommand(query, conn);
        cm.Parameters.AddWithValue("@u", rno);
        int checkValidStudent = (int)cm.ExecuteScalar();
        SqlCommand cm2;
        string query2 = "select count(*) from Degree_Issue_req where Rollno like @v";
        cm2=new SqlCommand(query2, conn);
        cm2.Parameters.AddWithValue("@v", rno);
        int checkNewReq=(int)cm2.ExecuteScalar();
        if (checkValidStudent > 0 && checkNewReq<=0) //rno is of a valid student and this request doesnt already exist
        { 
            string query3 = "insert into Degree_Issue_Req values('" + rno + "','" + degree + "',CONVERT(datetime,'" + dt + "',103),'" + major + "','" + year + "')";
            SqlCommand cm3;
            cm3 = new SqlCommand(query3, conn);
            cm3.ExecuteNonQuery();
            //Now lets make this a new Request
            string query4 = "Select ReqID,Reg_date from Degree_Issue_Req where RollNo='" + rno + "'";
            SqlCommand cm4=new SqlCommand(query4, conn);
            SqlDataReader reader = cm4.ExecuteReader();
            if (reader.Read())
            {
                string val1 = reader["ReqID"].ToString();
                DateTime val2 = reader.GetDateTime(1);
                string query5="insert into New_Degree_Req values ("+val1+ ",CONVERT(datetime,'"+val2+"',103))";
                SqlCommand cm5=new SqlCommand(query5, conn);
                cm5.ExecuteNonQuery();
            }
            Response.Write("<script>alert('Request Sent Successfully!');</script>");
        }
        else
        {
            Response.Write("<script>alert('Roll Number is Invalid or Degree Request already Issued by this Roll Number');</script>");
        }
        conn.Close();
    }
}