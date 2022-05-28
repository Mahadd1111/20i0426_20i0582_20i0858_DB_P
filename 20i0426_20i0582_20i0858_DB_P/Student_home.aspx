<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Page</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="Student_home.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="form">
            <div class="header">
                <div class="top">
                    <div class="txt"><h1>Student Home Page</h1></div>
                    <div class="bck">

                    </div>
                </div>
            </div>
            <div class="options1">
                <button class="btn1" runat="server" id="issueDegree" onServerClick="issueDegree_OnClick">ISSUE DEGREE</button>
                <div class="issuance">

                </div>
                <div class="tracking">

                </div>
                <button class="btn2" runat="server">TRACK ACTIVITY</button>
            </div>
            <div class="options2">
                <button class="btn1" runat="server" id="issueComplaint" onserverclick="issueComplaint_OnClick">SEND COMPLAINT</button>
                <div class="complaint">

                </div>
                <div class="transcript">

                </div>
                <button class="btn2" runat="server">GET TRANSCRIPT</button>
            </div>
        </div>
    </form>
</body>
</html>