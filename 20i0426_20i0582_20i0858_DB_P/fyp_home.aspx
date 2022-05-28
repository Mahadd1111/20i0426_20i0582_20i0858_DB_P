<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fyp_home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FYP HOME</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="fyp_home.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="page">
            <div class="header">
                <div class="part1"><h1>FYP DEPARTMENT</h1></div>
                <div class="part2"></div>
            </div>
            <div class="info">
                <div class="video">
                    <iframe width="700" height="395" src="https://www.youtube.com/embed/7vQznLKEfBs" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div>
                <div class="txt">
                    <h3>Check Out the latest New FYP Ideas in store today!</h3>
                </div>
            </div>
            <div class="functionality">
                <div class="viewfyp">
                    <button class="btn1" runat="server">FYP RESULTS DATA</button>
                </div>
                <div class="viewreq">
                    <button class="btn1" runat="server">VIEW REQUESTS</button>
                </div>
                <div class="decision">
                    <button class="btn1" runat="server" onserverclick="handleRequest_OnClick">HANDLE REQUESTS</button>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
