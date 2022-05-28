<%@ Page Language="C#" AutoEventWireup="true" CodeFile="onestop_generate_token.aspx.cs" Inherits="onestop_generate_token" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Degree Issuance Form</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="onestop_generate_token.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="title">
                <div class="img"></div>
                <div class="txt">
                    <h2>TOKEN GENERATOR</h2>
                    <p>Enter The Degree Issuance Request ID to Generate a token For this Request</p>
                    <p>Once this is Complete, the Request will be forwarded to FYP and Finance Departments</p>
                </div>
            </div>
            <div class="user-details">
                <div class="input-box">
                    <span class="details">Enter Request ID</span>
                    <input type="text" id="textbox_req" runat="server" placeholder="i.e 12" />
                </div>
                <div class="input-box">
                    <span class="details">Date</span>
                    <input type="date" id="textbox_date" runat="server" />
                </div>
            </div>
            <div class="confirmation-details">
                <span class="confirmation-title">CONFIRM THIS ACTION</span>
                <div class="category">
                    <asp:RadioButton ID="RadioButton1" Groupname="btn1" runat="server" Text="CONFIRM" />
                    <asp:RadioButton ID="RadioButton2" Groupname="btn1" runat="server" Text="DON'T CONFIRM" />
                </div>
            </div>
            <div class="button">
                <input type="submit" runat="server"  id="submitToken" onserverclick="submitToken_OnClick"/>
            </div>
        </div>
    </form>
</body>
</html>
