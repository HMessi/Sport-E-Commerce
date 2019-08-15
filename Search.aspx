<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Search Result - <asp:Label runat="server" ID="lblsearch"></asp:Label>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [IName], [Price], [Image] FROM [ItemMst]">
        </asp:SqlDataSource>
    </h2> 
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" 
                RepeatDirection="Horizontal" Width="100%" 
        onitemcommand="DataList1_ItemCommand" DataSourceID="SqlDataSource2" 
        onselectedindexchanged="DataList1_SelectedIndexChanged">
    <ItemStyle CssClass="igrid" />
    <ItemTemplate>
        IName:
        <asp:Label ID="INameLabel" runat="server" Text='<%# Eval("IName") %>' />
        <br />
        Price:
        <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
        <br />
        Image:
        <asp:Label ID="ImageLabel" runat="server" Text='<%# Eval("Image") %>' />
        <br />
        <br />
    </ItemTemplate>
</asp:DataList>
</asp:Content>

