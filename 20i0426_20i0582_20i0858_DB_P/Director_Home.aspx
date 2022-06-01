<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Director_Home.aspx.cs" Inherits="Director_Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Director Home</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="Director_Home.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="top">
                <h1>DIRECTOR HOME PAGE</h1>
                <button class="btn2" runat="server" onserverclick="go_back">Log Out</button>
            </div>
            <div class="bottom">
                <div class="row">
                    <div class="option">
                        <div class="img1"></div>
                        <button class="btn1" runat="server" onserverclick="today_request">Today's Requests</button>
                    </div>
                    <div class="option">
                        <div class="img2"></div>
                        <button class="btn1" runat="server" onserverclick="pending_request">Pending Request</button>
                    </div>
                </div>
                <div class="row">
                     <div class="option">
                         <div class="img3"></div>
                         <button class="btn1" runat="server" onserverclick="department_statistics">Department Statistics</button>
                    </div>
                    <div class="option">
                        <div class="img4"></div>
                        <button class="btn1" runat="server" onserverclick="processed_request">Processed Requests</button>
                    </div>
                </div>
                <div class="row">
                     <div class="option">
                         <div class="img5"></div>
                         <button class="btn1" runat="server" onserverclick="request_tracking">Requests Tracking</button>
                    </div>
                    <div class="option">
                        <div class="img6"></div>
                        <button class="btn1" runat="server" onserverclick="audit_report">View Audit Report</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
