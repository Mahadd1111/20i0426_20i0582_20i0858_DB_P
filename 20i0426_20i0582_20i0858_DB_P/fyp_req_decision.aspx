<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fyp_req_decision.aspx.cs" Inherits="fyp_req_decision" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>fyp acknowledgement</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="fyp_req_decision.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="title">
                <div class="img"></div>
                <div class="txt">FYP DEPT ACKNOWLEDGEMENT FORM</div>
            </div>
            <div class="user-details">
                <div class="input-box">
                    <span class="details">Request ID</span>
                    <input type="text" id="textbox_req" runat="server" placeholder="eg 12" />
                </div>
                <div class="input-box">
                    <span class="details">Date</span>
                    <input type="date" id="textbox_date" runat="server" placeholder="Only Enter If Confirming Req"/>
                </div>
                <div class="input-box">
                    <span class="details">REQUEST STATUS</span>
                    <asp:DropDownList ID="textbox_status" runat="server" CssClass="dropdown" placeholder="Select Here">
                        <asp:ListItem>PERMIT</asp:ListItem>
                        <asp:ListItem>DO NOT PERMIT</asp:ListItem>
                    </asp:DropDownList>
                </div>
                <div class="input-box">
                    <span class="details">REASONING</span>
                    <input type="text" id="textbox_reason" runat="server" />
                </div>
            </div>
            <div class="submission">
                 <div class="button">
                <input type="submit" runat="server"  id="submitRequest" value="Go Back" onserverclick="goBack_OnClick"/>
                </div>
                <div class="button">
                <input type="submit" runat="server"  id="backbutton" value="Submit" onserverclick="submitRequest_OnClick"/>
                </div>
            </div>
        </div>
    </form>
</body>
</html>