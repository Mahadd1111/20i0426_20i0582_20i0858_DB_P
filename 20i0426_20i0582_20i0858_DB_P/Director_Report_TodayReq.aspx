<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Director_Report_TodayReq.aspx.cs" Inherits="Director_Report_TodayReq" %>

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
            font-size:35px;
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
            height:50%;
            background-color:blue;
            display:flex;
            flex:1;
            justify-content:center;
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
    </style>
</head>
<body style="height: 1200px">
    <form id="form1" runat="server">
        <div class="top" style="height: 400px;">
            <div class="logo"></div>
            <h1>VIEWING TODAYS REQUESTS</h1>
        </div>
        <div class="report" style="height:600px;">
                <asp:GridView ID="GridView1" runat="server" CssClass="grid1" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="5px" CellPadding="7" CellSpacing="2" DataKeyNames="ReqID" DataSourceID="Todays_Requests" GridLines="None" Width="700px">
                    <Columns>
                        <asp:BoundField DataField="ReqID" HeaderText="ReqID" ReadOnly="True" SortExpression="ReqID" InsertVisible="False" />
                        <asp:BoundField DataField="RollNo" HeaderText="RollNo" SortExpression="RollNo" />
                        <asp:BoundField DataField="Degree_type" HeaderText="Degree_type" SortExpression="Degree_type" />
                        <asp:BoundField DataField="Reg_Date" HeaderText="Reg_Date" SortExpression="Reg_Date" />
                        <asp:BoundField DataField="Major" HeaderText="Major" SortExpression="Major" />
                        <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
        
                <asp:SqlDataSource ID="Todays_Requests" runat="server" ConnectionString="<%$ ConnectionStrings:OneStopConnectionString %>" SelectCommand="Select * from Degree_Issue_Req where cast(Reg_Date as date)=cast(getdate() as date)"></asp:SqlDataSource>
        
        </div>
        <div class="bottom">
            <button class="btn1" runat="server" onserverclick="btn_OnClick">GO BACK</button>
        </div>
    </form>
</body>
</html>
