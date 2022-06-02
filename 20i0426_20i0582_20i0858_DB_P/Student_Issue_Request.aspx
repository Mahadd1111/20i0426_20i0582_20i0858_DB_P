<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_Issue_Request.aspx.cs" Inherits="Student_Issue_Request" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Degree Issuance Form</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="Student_Issue_Request.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="title">
                <div class="img"></div>
                <div class="txt">REGISTRATION FORM</div>
            </div>
            <div class="user-details">
                <div class="input-box">
                    <span class="details">Full Name</span>
                    <input type="text" runat="server" placeholder="Enter Your Name" />
                </div>
                <div class="input-box">
                    <span class="details">Roll No</span>
                    <input type="text" id="textbox_rno" runat="server" placeholder="i.e 20yXXXX" />
                </div>
                <div class="input-box">
                    <span class="details">Degree Type</span>
                    <asp:DropDownList ID="textbox_degree" runat="server" CssClass="dropdown" placeholder="Select Here">
                        <asp:ListItem>PHD</asp:ListItem>
                        <asp:ListItem>MASTERS</asp:ListItem>
                        <asp:ListItem>BACHELORS</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-box">
                    <span class="details">Date</span>
                    <input type="date" id="textbox_date" runat="server" />
                </div>
                <div class="input-box">
                    <span class="details">Major</span>
                    <asp:DropDownList id="textbox_major" runat="server" CssClass="dropdown" placeholder="Select Here">
                        <asp:ListItem>Computer Science</asp:ListItem>
                        <asp:ListItem>Artificial Intelligence</asp:ListItem>
                        <asp:ListItem>Software Engineering</asp:ListItem>
                        <asp:ListItem>Business Administration</asp:ListItem>
                        <asp:ListItem>Accounting & Finance</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-box">
                    <span class="details">Year</span>
                    <input type="text" id="textbox_year" runat="server" placeholder="XXXX" />
                </div>
            </div>
            <div class="gender-details">
                <input type="radio" name="gender" id="dot-1"/>
                <input type="radio" name="gender" id="dot-2"/>
                <input type="radio" name="gender" id="dot-3"/>
                <span class="gender-title">Gender</span>
                <div class="category">
                    <label for="dot-1">
                        <span class="dot one"></span>
                        <span class="gender">MALE</span>
                    </label>
                    <label for="dot-2">
                        <span class="dot two"></span>
                        <span class="gender">FEMALE</span>
                    </label>
                    <label for="dot-3">
                        <span class="dot three"></span>
                        <span class="gender">PREFER NOT TO SAY</span>
                    </label>
                </div>
            </div>
            <div class="button">
                <input type="submit" runat="server"  id="goback" value="Go Back" onServerClick="goback_OnClick"/>
                <input type="submit" runat="server"  id="submitRequest" onServerClick="submitIssue_OnClick"/>
            </div>
        </div>
    </form>
</body>
</html>
