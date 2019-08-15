<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="REPORTS.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
        <tr>
            <td colspan="2" class="tblhead">
                Reports</td>
        </tr>
        <tr>
            <td>
                Select Category :
                <asp:DropDownList ID="DropDownList1" runat="server" CssClass="txt" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    DataSourceID="SqlDataSource2" DataTextField="CName" DataValueField="CName">
                </asp:DropDownList>
                <asp:Button ID="Button9" runat="server" CssClass="btn" onclick="Button9_Click" 
                    Text="View" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="Select Category" 
                    ForeColor="Red" InitialValue="SELECT" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblmsg" runat="server"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Image], [IName], [Price], [Qnt], [AQnt], [SQnt] FROM [ItemMst]">
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [CateMst]"></asp:SqlDataSource>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="3" GridLines="Vertical" Width="873px" 
                    DataSourceID="SqlDataSource1" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
                        <asp:BoundField DataField="IName" HeaderText="IName" SortExpression="IName" />
                        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                        <asp:BoundField DataField="Qnt" HeaderText="Qnt" SortExpression="Qnt" />
                        <asp:BoundField DataField="AQnt" HeaderText="AQnt" SortExpression="AQnt" />
                        <asp:BoundField DataField="SQnt" HeaderText="SQnt" SortExpression="SQnt" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

