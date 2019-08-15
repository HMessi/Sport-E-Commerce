<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="VIEWORDER.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="width: 100%">
    <tr>
        <td colspan="2" class="tblhead">
            View Order</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="lbl">
            SELECT USER:</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" 
                onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            ORDER STATUS:</td>
        <td>
            <asp:DropDownList ID="drpstatus" runat="server" 
                onselectedindexchanged="drpstatus_SelectedIndexChanged">
                <asp:ListItem>Pending</asp:ListItem>
                <asp:ListItem>Complate</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="lbl">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [Image], [IName], [Qnt], [Price], [Size] FROM [ItemMst]">
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [Status] FROM [orderMst]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [Name] FROM [UserMst]"></asp:SqlDataSource>
        </td>
        <td>
            <asp:Button ID="Button9" runat="server" CssClass="btn" Text="VIEW" 
                Height="30px" onclick="Button9_Click" Width="77px" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="872px" 
                AllowPaging="True" 
                onselectedindexchanging="GridView1_SelectedIndexChanging" BackColor="White" 
                BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                GridLines="Vertical" DataSourceID="SqlDataSource1">
                <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
            <asp:BoundField HeaderText="Image" DataField="Image" SortExpression="Image" />
                <asp:BoundField HeaderText="IName" DataField="IName" SortExpression="IName" />
                    <asp:BoundField HeaderText="Qnt" DataField="Qnt" SortExpression="Qnt" />
                        <asp:BoundField HeaderText="Price" DataField="Price" 
                    SortExpression="Price" />
                <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
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

