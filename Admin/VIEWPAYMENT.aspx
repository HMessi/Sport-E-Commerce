<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="VIEWPAYMENT.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 169px;
        }
        .style10
        {
            color: green;
            font-size: 14px;
            font-weight: bold;
            text-align: right;
            width: 169px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%" >
        <tr>
            <td class="tblhead" colspan="2">
                Payment Report</td>
        </tr>
        <tr>
            <td class="lbl">
                SELECT USER</td>
            <td>
                <asp:DropDownList ID="drpuser" runat="server" Width="200px" CssClass="txt" 
                    onselectedindexchanged="drpuser_SelectedIndexChanged" 
                    DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td  >
                &nbsp;</td>
            <td>
                <asp:Button ID="Button9" runat="server" CssClass="btn" onclick="Button9_Click" 
                    Text="VIEW" />
            </td>
        </tr>
        <tr>
            <td class="style9">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Type], [Bank], [Branch], [CardNo], [CCV], [Amount], [EntryDate] FROM [PaymentMst]">
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Name] FROM [UserMst]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                style="text-align: center" Width="878px" BackColor="White" 
                    BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    GridLines="Vertical" DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
            <asp:BoundField HeaderText="Type"  DataField="Type" SortExpression="Type" />
<asp:BoundField HeaderText="Bank"  DataField="Bank" SortExpression="Bank" />
<asp:BoundField HeaderText="Branch"  DataField="Branch" SortExpression="Branch" />
            <asp:BoundField HeaderText="CardNo"  DataField="CardNo" SortExpression="CardNo" />
            <asp:BoundField HeaderText="CCV"  DataField="CCV" SortExpression="CCV" />
              <asp:BoundField HeaderText="Amount"  DataField="Amount" SortExpression="Amount" />
           <asp:BoundField HeaderText="EntryDate"  DataField="EntryDate" 
                    SortExpression="EntryDate" />
            </Columns>
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" ForeColor="White" Font-Bold="True" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                
            </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>