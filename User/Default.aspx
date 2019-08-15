<%@ Page Title="" Language="C#" MasterPageFile="~/User/Member.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            Product</td>
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
                DataSourceID="SqlDataSource1" DataKeyField="IName">
                <ItemStyle CssClass="igrid" />
                <ItemTemplate>
                    <table class="tbl" >
                        <tr>
                            <td style="text-align: center">
                                <asp:Image ID="Image2" runat="server" ImageUrl='<%# Eval("Image") %>' 
                                    Height="148px" Width="146px" />
                            </td>
                        </tr>

                        <tr>
                            <td style="text-align: center">
                                Name:
                                <asp:Label ID="INameLabel" runat="server" Text='<%# Eval("IName") %>' />
                            </td>
                        </tr>

                        <tr>
                            <td style="text-align: center">
                                Price:
                                <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' />
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:LinkButton ID="LinkButton1" runat="server" 
                                CommandArgument='<%# Eval("IName") %>' onclick="LinkButton1_Click">View..</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
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

