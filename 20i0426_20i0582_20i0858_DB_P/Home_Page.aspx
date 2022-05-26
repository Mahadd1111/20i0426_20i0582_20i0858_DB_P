<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home_Page.aspx.cs" Inherits="Home_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="Home_Page.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="form">
            <div class="leftside">
                <div class="uni">
                    <div class="logo">
                        <img src="FAST_Islamabad.jpg" />
                    </div>
                    <div class="name">
                        <h2>FAST-NUCES ISLAMABAD</h2>
                    </div>
                </div>
                <div class="description">
                    <h3><span style="color:red">Aspiring</span> to get to the next level of your <span style="color:red";>journey</span>? Come get your degree issued with us!</h3>
                </div>
            </div>
            <div class="rightside">
                <div class="bubble">
                    <h1>Login</h1>
                    <div class="txt">
                        <input type="text" runat="server" ID="uname" required/>
                        <label>Username</label>
                    </div>
                    <div class="txt">
                        <input type="text" runat="server" ID="pword" required />
                        <label>Password</label>
                    </div>
                    <asp:DropDownList ID="usertype" runat="server" CssClass="dropdown">
                        <asp:ListItem>Student</asp:ListItem>
                        <asp:ListItem>Finance Department</asp:ListItem>
                        <asp:ListItem>One Stop Admin</asp:ListItem>
                        <asp:ListItem>FYP Department</asp:ListItem>
                        <asp:ListItem>Director</asp:ListItem>
                    </asp:DropDownList>
                    &nbsp;<asp:Button ID="btnSubmit" runat="server" Text="Login" OnClick="btnSubmit_Click"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
