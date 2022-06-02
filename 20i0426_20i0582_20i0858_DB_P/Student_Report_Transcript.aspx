<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_Report_Transcript.aspx.cs" Inherits="Student_Report_Transcript" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .grid1{
            width:100%;
        }
        .top{
            background-color:red;
            color:white;
            font-size:40px;
            display:flex;
            flex:1;
            flex-direction:row;
            align-items:center;
            gap:100px;
            height:30%;
        }
        .logo{
            margin-left:30px;
            width:15%;
            height:40%;
            background-image:url(fast_logo.png);
            background-size:100% 100%;
            background-repeat:no-repeat;
        }
        .report{
            height:500px;
            background-color:blue;
            display:flex;
            flex:1;
            justify-content:center;
            align-items:center;
        }
        .bottom{
            height:200px;
            display:flex;
            flex:1;
            align-items:center;
            justify-content:center;
            background-color:red;
        }
        .btn1{
            margin: 15px;
            width: 200px;
            height: 100px;
            border: 2px solid white;
            border-radius: 4px;
            color: white;
            background-color: darkblue;
            box-shadow: inset 0 0 0 0 blue;
            transition: ease-in-out 0.3s;
            font-size: 2rem;
            outline: none;
        }
        .btn1:hover{
            background-color:dodgerblue;
            color:darkred;
        }
        .input-box{
            display:flex;
            flex:1;
            flex-direction:row;
            height:100px;
            align-items:center;
            gap:100px;
            justify-content:center;
        }
        .btn{
        height: 50px;
        width: 10%;
        outline: none;
        color: #fff;
        background: rgb(5,5,47);
        background: linear-gradient(135deg, rgba(5,5,47,1) 36%, rgba(38,35,84,1) 69%);
        letter-spacing: 1px;
        border-radius: 5px;
        font-weight: 500;
        border-color: white;
        }
        .textbox{
            height:50px;
            width:300px;
        }
    </style>
</head>
<body style="height: 1200px">
    <form id="form1" runat="server">
        <div class="top" style="height: 400px;">
            <div class="logo"></div>
            <h1>Transcript Printing</h1>
        </div>
        <div class="input-box">
            <h2>Enter RollNo to see Transcript</h2>
            <input type="text" id="textbox_req" class="textbox" runat="server" placeholder="eg 12" />
             <input type="submit" runat="server"  id="backbutton" value="Submit" class="btn" onserverclick="submitRequest_OnClick"/>
        </div>
        <div class="report">
            <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="300px">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        </div>
        <div class="bottom">
            <button class="btn1" runat="server" onserverclick="btn_OnClick">GO BACK</button>
        </div>
    </form>
</body>
</html>
