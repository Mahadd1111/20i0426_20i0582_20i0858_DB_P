<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Onestop_Report_AllReq.aspx.cs" Inherits="Onestop_Report_AllReq" %>

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
            flex-direction:column;
            flex:1;
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
        .main{
            display:flex;
            flex:1;
            flex-direction:row;
        }
    </style>
</head>
<body style="height: 1200px">
    <form id="form1" runat="server">
        <div class="top" style="height: 400px;">
            <div class="logo"></div>
            <h1>Request Tracking</h1>
        </div>
        <div class="main">
             <div class="report" style="height:600px;">
                <h2>NEW REQUESTS</h2>
                <asp:GridView ID="GridView1" runat="server" CssClass="grid1" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="5px" CellPadding="7" CellSpacing="2" DataKeyNames="ReqID" DataSourceID="new_requests2" GridLines="None" Width="400px">
                    <Columns>
                        <asp:BoundField DataField="RollNo" HeaderText="RollNo" SortExpression="RollNo" />
                        <asp:BoundField DataField="ReqID" HeaderText="ReqID" SortExpression="ReqID" ReadOnly="True" />
                        <asp:BoundField DataField="Reg_date" HeaderText="Reg_date" SortExpression="Reg_date" />
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
                 <asp:SqlDataSource ID="new_requests2" runat="server" ConnectionString="<%$ ConnectionStrings:OneStopConnectionString %>" SelectCommand="Select b.RollNo,a.ReqID,a.Reg_date from New_Degree_Req a inner join Degree_Issue_Req b on a.ReqID=b.ReqID"></asp:SqlDataSource>
                 <asp:SqlDataSource ID="new_requests" runat="server" ConnectionString="<%$ ConnectionStrings:OneStopConnectionString %>" SelectCommand="SELECT * FROM [New_Degree_Req]"></asp:SqlDataSource>
            </div>
         <div class="report" style="height:600px;">
                <h2>PENDING REQUESTS</h2>
                <asp:GridView ID="GridView2" runat="server" CssClass="grid1" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="5px" CellPadding="7" CellSpacing="2" DataKeyNames="ReqID" DataSourceID="pending_req2" GridLines="None" Width="400px">
                    <Columns>
                        <asp:BoundField DataField="RollNo" HeaderText="RollNo" SortExpression="RollNo" />
                        <asp:BoundField DataField="ReqID" HeaderText="ReqID" SortExpression="ReqID" ReadOnly="True" />
                        <asp:BoundField DataField="Reg_Date" HeaderText="Reg_Date" SortExpression="Reg_Date" />
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
                <asp:SqlDataSource ID="pending_req2" runat="server" ConnectionString="<%$ ConnectionStrings:OneStopConnectionString %>" SelectCommand="Select b.RollNo,a.ReqID,a.Reg_Date from Pending_Degree_Req a inner join Degree_Issue_Req b on a.ReqID=b.ReqID"></asp:SqlDataSource>
                <asp:SqlDataSource ID="pending_req" runat="server" ConnectionString="<%$ ConnectionStrings:OneStopConnectionString %>" SelectCommand="SELECT * FROM [Pending_Degree_Req]"></asp:SqlDataSource>
            </div>
            <div class="report" style="height:600px;">
                <h2>PROCESSED REQUESTS</h2>
                <asp:GridView ID="GridView3" runat="server" CssClass="grid1" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="5px" CellPadding="7" CellSpacing="2" DataKeyNames="ReqID" DataSourceID="Processed_req2" GridLines="None" Width="400px">
                    <Columns>
                        <asp:BoundField DataField="RollNo" HeaderText="RollNo" SortExpression="RollNo" />
                        <asp:BoundField DataField="ReqID" HeaderText="ReqID" SortExpression="ReqID" ReadOnly="True" />
                        <asp:BoundField DataField="Reg_Date" HeaderText="Reg_Date" SortExpression="Reg_Date" />
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
                <asp:SqlDataSource ID="Processed_req2" runat="server" ConnectionString="<%$ ConnectionStrings:OneStopConnectionString %>" SelectCommand="Select b.RollNo,a.ReqID,a.Reg_Date from Processed_Degree_Req a inner join Degree_Issue_Req b on a.ReqID=b.ReqID"></asp:SqlDataSource>
                <asp:SqlDataSource ID="processed_req" runat="server" ConnectionString="<%$ ConnectionStrings:OneStopConnectionString %>" SelectCommand="SELECT * FROM [Processed_Degree_Req]"></asp:SqlDataSource>
            </div>
        </div>
        <div class="bottom">
            <button class="btn1" runat="server" onserverclick="btn_OnClick">GO BACK</button>
        </div>
    </form>
</body>
</html>
