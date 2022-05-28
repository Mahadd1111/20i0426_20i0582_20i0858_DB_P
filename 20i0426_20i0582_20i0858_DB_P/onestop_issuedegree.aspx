<%@ Page Language="C#" AutoEventWireup="true" CodeFile="onestop_issuedegree.aspx.cs" Inherits="onestop_issuedegree" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Issue Degree</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="onestop_issuedegree.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="title">
                <div class="img"></div>
                <div class="txt">ONESTOP DEPT ISSUING DEGREE</div>
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