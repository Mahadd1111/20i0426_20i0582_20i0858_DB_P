using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Home_Page : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        uname.Attributes.Add("autocomplete", "off");
        pword.Attributes.Add("autocomplete", "off");

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection("Data Source=DESKTOP-ABASTNN\\SQLEXPRESS;Initial Catalog=OneStop;Integrated Security=True");
        conn.Open();
        SqlCommand cm;
        string un = uname.Value;
        string pw = pword.Value;
        string utype = usertype.Text;
        if (String.Equals(utype, "Student"))
        {
            string query = "Select count(*) from Login_Student where username like @u and password like @p";
            cm = new SqlCommand(query, conn);
            cm.Parameters.AddWithValue("@u", un);
            cm.Parameters.AddWithValue("@p", pw);
            int result = (int)cm.ExecuteScalar();
            if (result>0)
            {
                //Login correct
                Response.Redirect("Student_home.aspx");
                Response.Write("<script>alert('Login Successful!');</script>");

            }
            else
            {
                //Login denied
                Response.Write("<script>alert('Login Denied!');</script>");
            }
        }
        else if (String.Equals(utype, "Finance Department"))
        {
            string query = "Select count(*) from Login_Finance where username like @u and password like @p";
            cm = new SqlCommand(query, conn);
            cm.Parameters.AddWithValue("@u", un);
            cm.Parameters.AddWithValue("@p", pw);
            int result = (int)cm.ExecuteScalar();
            if (result > 0)
            {
                //Login correct
                Response.Redirect("finance_home.aspx");
                Response.Write("<script>alert('Login Successful!');</script>");

            }
            else
            {
                //Login denied
                Response.Write("<script>alert('Login Denied!');</script>");
            }
        }
        else if (String.Equals(utype, "One Stop Admin"))
        {
            string query = "Select count(*) from Login_OneStop where username like @u and password like @p";
            cm = new SqlCommand(query, conn);
            cm.Parameters.AddWithValue("@u", un);
            cm.Parameters.AddWithValue("@p", pw);
            int result = (int)cm.ExecuteScalar();
            if (result > 0)
            {
                //Login correct
                Response.Redirect("onestop_home.aspx");
                Response.Write("<script>alert('Login Successful!');</script>");

            }
            else
            {
                //Login denied
                Response.Write("<script>alert('Login Denied!');</script>");
            }
        }
        else if (String.Equals(utype, "FYP Department"))
        {
            string query = "Select count(*) from Login_FYP where username like @u and password like @p";
            cm = new SqlCommand(query, conn);
            cm.Parameters.AddWithValue("@u", un);
            cm.Parameters.AddWithValue("@p", pw);
            int result = (int)cm.ExecuteScalar();
            if (result > 0)
            {
                //Login correct
                Response.Redirect("fyp_home.aspx");
                Response.Write("<script>alert('Login Successful!');</script>");

            }
            else
            {
                //Login denied
                Response.Write("<script>alert('Login Denied!');</script>");
            }
        }
        else if (String.Equals(utype, "Director"))
        {
            string query = "Select count(*) from Login_Finance where username like @u and password like @p";
            cm = new SqlCommand(query, conn);
            cm.Parameters.AddWithValue("@u", un);
            cm.Parameters.AddWithValue("@p", pw);
            int result = (int)cm.ExecuteScalar();
            if (result > 0)
            {
                //Login correct
                Response.Redirect("Director_Home.aspx");
                Response.Write("<script>alert('Login Successful!');</script>");

            }
            else
            {
                //Login denied
                Response.Write("<script>alert('Login Denied!');</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('DropBox Value Error');</script>");
        }
    }
}