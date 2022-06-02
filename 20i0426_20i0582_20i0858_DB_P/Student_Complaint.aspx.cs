using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Student_Complaint : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void goback_OnClick(object sender,EventArgs e)
    {
        Response.Redirect("Student_Home.aspx");
    }
    protected void submitComplaint_OnClick(object sender,EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-ABASTNN\\SQLEXPRESS;Initial Catalog=OneStop;Integrated Security=True");
        conn.Open();
        string rno = textbox_rno.Value;
        string degree = textbox_degree.Text;
        string major = textbox_major.Text;
        string year = textbox_year.Value;
        string query1 = "select count(*) from Student where RollNo like @u";
        SqlCommand cm1;
        cm1 = new SqlCommand(query1, conn);
        cm1.Parameters.AddWithValue("@u", rno);
        int checkValidStudent = (int)cm1.ExecuteScalar();
        if (checkValidStudent > 0)
        {
            if (!Equals(degree, "NO UPDATE"))
            {
                string query2 = "update Degree_Issue_req set Degree_type='" + degree + "' where RollNo='" + rno + "'";
                SqlCommand cm2;
                cm2=new SqlCommand(query2, conn);
                cm2.ExecuteNonQuery();
            }
            if (!Equals(major, "NO UPDATE"))
            {
                string query3 = "update Degree_Issue_req set Major='" + major + "' where RollNo='" + rno + "'";
                SqlCommand cm3;
                cm3 = new SqlCommand(query3, conn);
                cm3.ExecuteNonQuery();
            }
            if (year.Length != 0)
            {
                string query4 = "update Degree_Issue_req set Year='" + year + "' where RollNo='" + rno + "'";
                SqlCommand cm4;
                cm4 = new SqlCommand(query4, conn);
                cm4.ExecuteNonQuery();
            }
            Response.Write("<script>alert('Successfully Updated');</script>");
        }
        else
        {
            Response.Write("<script>alert('No Such Degree Issuance for this Student');</script>");
        }
        conn.Close();   
    }
}