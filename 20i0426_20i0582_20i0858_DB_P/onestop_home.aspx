<%@ Page Language="C#" AutoEventWireup="true" CodeFile="onestop_home.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Onestop Home</title>
    <meta charset="utf-8" />
    <link rel="stylesheet" href="onestop_home.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="page">
            <div class="header">
                <h1>ADMIN DASHBOARD</h1>
                <h3>FAST-NUCES ISLAMABAD</h3>
            </div>
            <div class="f1">
                <div class="i1">
                    <div class="c1">
                        
                    </div>
                    <div class="c2">
                        <button class="btn1" runat="server">NEW REQUESTS</button>
                    </div>
                </div>
                <div class="i2">
                    <div class="c3">

                    </div>
                    <div class="c4">
                        <button class="btn1" id="generateToken" runat="server" onserverclick="generateToken_OnClick">GENERATE TOKEN</button>
                    </div>
                </div>
            </div>
            <div class="f2">
                <div class="i3">
                    <div class="c5">

                    </div>
                    <div class="c6">
                        <button class="btn1" runat="server">VIEW ALL REQUESTS</button>
                    </div>
                </div>
                <div class="i4">
                    <div class="c7">

                    </div>
                    <div class="c8">
                        <button class="btn1" runat="server">REQUEST TRACKING</button>
                    </div>
                </div>
            </div>
            <div class="f3">
                <div class="i5">
                    <div class="c9">

                    </div>
                    <div class="c10">
                        <button class="btn1" runat="server">ISSUE DEGREE</button>
                    </div>
                </div>
                <div class="i6">
                    <div class="c11">

                    </div>
                    <div class="c12">
                        <button class="btn1" runat="server">ISSUE TRANSCRIPT</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
