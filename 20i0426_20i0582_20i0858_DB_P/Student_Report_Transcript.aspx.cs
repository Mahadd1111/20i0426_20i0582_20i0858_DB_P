using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Student_Report_Transcript : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_OnClick(object sender,EventArgs e)
    {
        Response.Redirect("Student_home.aspx");
    }
    protected void submitRequest_OnClick(object sender,EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-ABASTNN\\SQLEXPRESS;Initial Catalog=OneStop;Integrated Security=True;MultipleActiveResultSets=true");
        conn.Open();
        string rno = textbox_req.Value;
        string query2 = "select count(*) from Processed_Degree_Req p inner join Degree_Issue_Req q on p.ReqID=q.ReqID where q.RollNo='" + rno + "'";
        SqlCommand cm2=new SqlCommand(query2, conn);
        int check = (int)cm2.ExecuteScalar();
        if (check > 0)
        {
            string query = "select Course,Grade from Student_Transcript where RollNo='" + rno + "'";
            SqlCommand cmd = new SqlCommand(query, conn);
            SqlDataReader reader = cmd.ExecuteReader();
            GridView1.DataSource = reader;
            GridView1.DataBind();
            reader.Close();
        }
        else
        {
            Response.Write("<script>alert('This RollNo is not cleared for Transcript');</script>");
        }
    }
}