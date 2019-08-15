<%@ Page Title="" Language="C#" MasterPageFile="~/User/Member.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
        <tr>
            <td class="tblhead">
                Search Result -
                <asp:Label ID="lbll" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Image], [IName], [Price], [Detail] FROM [ItemMst]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" 
                RepeatDirection="Horizontal" Width="100%" 
                onitemcommand="DataList1_ItemCommand" 
                    onselectedindexchanged="DataList1_SelectedIndexChanged" 
                    DataSourceID="SqlDataSource1">
                    <ItemStyle CssClass="igrid" />
                    <ItemTemplate>
                        Image:
                        <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
                        <br />
                        IName:
                        <asp:Label ID="INameLabel" runat="server" Text='<%# Eval("IName") %>' />
                        <br />
                        Price:
                        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                        <br />
                        Detail:
                        <asp:Label ID="DetailLabel" runat="server" Text='<%# Eval("Detail") %>' />
                        <br />
                        <br />
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>
            &nbsp;</td>
        </tr>
    </table>
</asp:Content>

