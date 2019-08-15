<%@ Page Title="" Language="C#" MasterPageFile="~/User/Member.master" AutoEventWireup="true" CodeFile="MyOrder.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            My Order</td>
    </tr>
    <tr>
        <td>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [Image], [IName], [Qnt], [Price], [Size] FROM [ItemMst]">
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td style="text-align: center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" Width="872px" 
                BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4">
            <Columns>
            <asp:TemplateField HeaderText="Image">
            <ItemTemplate>
            <asp:Image ID="imgg" ImageUrl='<%#Eval("image") %>' runat="server" Height="50" Width="50"/>
            </ItemTemplate>

            </asp:TemplateField>
            <asp:BoundField HeaderText="Item Name" DataField="iname" />
                <asp:BoundField HeaderText="Item Qnt" DataField="qnt" />
                    <asp:BoundField HeaderText="Item price" DataField="price" />
                        <asp:BoundField HeaderText="Total Price" DataField="tprice" />
            </Columns>
                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                <RowStyle BackColor="White" ForeColor="#330099" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

