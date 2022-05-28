<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_Complaint.aspx.cs" Inherits="Student_Complaint" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Degree Issuance Form</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="Student_Complaint.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="title">
                <div class="img"></div>
                <div class="txt">
                    <h2>Complaint Form</h2>
                    <p>Please only fill in the sections to update with new values</p>
                </div>
            </div>
            <div class="user-details">
                <div class="input-box">
                    <span class="details">Enter RollNumber</span>
                    <input type="text" id="textbox_rno" runat="server" placeholder="i.e 20yXXXX" />
                </div>
                <div class="input-box">
                    <span class="details">Change Degree Type</span>
                    <asp:DropDownList ID="textbox_degree" runat="server" CssClass="dropdown" placeholder="Select Here">
                        <asp:ListItem>NO UPDATE</asp:ListItem>
                        <asp:ListItem>PHD</asp:ListItem>
                        <asp:ListItem>MASTERS</asp:ListItem>
                        <asp:ListItem>BACHELORS</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-box">
                    <span class="details">Change Major</span>
                    <asp:DropDownList id="textbox_major" runat="server" CssClass="dropdown" placeholder="Select Here">
                        <asp:ListItem>NO UPDATE</asp:ListItem>
                        <asp:ListItem>Computer Science</asp:ListItem>
                        <asp:ListItem>Artificial Intelligence</asp:ListItem>
                        <asp:ListItem>Software Engineering</asp:ListItem>
                        <asp:ListItem>Business Administration</asp:ListItem>
                        <asp:ListItem>Accounting & Finance</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-box">
                    <span class="details">Update Year</span>
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
                <input type="submit" runat="server"  id="submitRequest" onServerClick="submitComplaint_OnClick"/>
            </div>
        </div>
    </form>
</body>
</html>
