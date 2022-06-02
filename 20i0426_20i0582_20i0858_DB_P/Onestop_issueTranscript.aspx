<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Onestop_issueTranscript.aspx.cs" Inherits="Onestop_issueTranscript" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Degree Issuance Form</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="Onestop_issueTranscript.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="title">
                <div class="img"></div>
                <div class="txt">
                    <h2>ISSUE TRANSCRIPT</h2>
                    <p>Enter The Degree Issuance Request ID to Issue a transcript</p>
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
                <input type="submit" runat="server"  id="submit1" value="Go Back" onserverclick="goback_OnClick"/>
                <input type="submit" runat="server"  id="submitToken" onserverclick="submit_token"/>
            </div>
        </div>
    </form>
</body>
</html>
