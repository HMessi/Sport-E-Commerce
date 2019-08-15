<%@ Page Title="" Language="C#" MasterPageFile="~/User/Member.master" AutoEventWireup="true" CodeFile="MyCart.aspx.cs" Inherits="User_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="tbl">
    <tr>
        <td class="tblhead">
            My Shopping Cart</td>
    </tr>
    <tr>
        <td>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                SelectCommand="SELECT [image], [Uname], [Iname], [Qnt], [Price], [EntryDate] FROM [orderMst]">
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                style="text-align: center" Width="885px" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" 
                onrowcommand="GridView1_RowCommand" onrowdeleting="GridView1_RowDeleting" 
                onrowupdating="GridView1_RowUpdating" BackColor="White" 
                BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                DataSourceID="SqlDataSource1">
            <Columns>
                <asp:TemplateField HeaderText="image" SortExpression="image">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("image") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Image ID="Image2" runat="server" Height="58px" 
                            ImageUrl='<%# Eval("image") %>' Width="64px" />
                    </ItemTemplate>
                </asp:TemplateField>
            <asp:BoundField HeaderText="Uname" DataField="Uname" SortExpression="Uname" />
            <%--<asp:BoundField HeaderText="Quantity" DataField="Qnt" />--%>
            <asp:BoundField HeaderText="Iname" DataField="Iname" SortExpression="Iname" />
                <asp:BoundField DataField="Qnt" HeaderText="Qnt" SortExpression="Qnt" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="EntryDate" HeaderText="EntryDate" 
                    SortExpression="EntryDate" />
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
        <td align="center">
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="text-align: center">
            <asp:Button ID="Button2" runat="server" CssClass="btn" 
                Text="Continew Shopping" PostBackUrl="~/User/Default.aspx" 
                onclick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" CssClass="btn" Text="Check Out" 
                onclick="Button3_Click" PostBackUrl="~/User/Checkout.aspx" />
        </td>
    </tr>
</table>
</asp:Content>

