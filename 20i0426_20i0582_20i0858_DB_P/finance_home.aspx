<%@ Page Language="C#" AutoEventWireup="true" CodeFile="finance_home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Finance Home</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="finance_home.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="page">
            <div class="header">
                <div class="part1"><h1>FINANCE DEPARTMENT</h1></div>
                <div class="part2"></div>
            </div>
            <div class="info">
                <div class="video">
                    <iframe width="700" height="395" src="https://www.youtube.com/embed/q5JWp47z4bY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                </div>
                <div class="txt">
                    <h3>The right financial decisions can make the biggest of impacts!</h3>
                </div>
            </div>
            <div class="functionality">
                <div class="viewdata">
                    <button class="btn1" runat="server">STUDENT'S OUTSTANDING FEES</button>
                </div>
                <div class="viewfees">
                    <button class="btn1" runat="server">PAID DEGREE ISSUANCE FEES</button>
                </div>
                <div class="viewreq">
                    <button class="btn1" runat="server">VIEW REQUESTS</button>
                </div>
                <div class="decision">
                    <button class="btn1" runat="server">HANDLE REQUESTS</button>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
